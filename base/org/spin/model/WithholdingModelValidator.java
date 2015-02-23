package org.spin.model;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.compiere.model.I_C_BPartner;
import org.compiere.model.I_C_Cash;
import org.compiere.model.I_C_CashLine;
import org.compiere.model.I_C_Invoice;
import org.compiere.model.MBPGroup;
import org.compiere.model.MBPartner;
import org.compiere.model.MCashLine;
import org.compiere.model.MClient;
import org.compiere.model.MCurrency;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MTax;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;


/**
 * Model Validator
 * 
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 * @contributor <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 * 		<li>	Add Control No
 * 		<li>	Change to Withholding Relation
 */
public class WithholdingModelValidator implements org.compiere.model.ModelValidator {

	/**
	 * Constructor.
	 */
	public WithholdingModelValidator() {
		super();
	} // ModelValidator

	/** Logger */
	private static CLogger log = CLogger.getCLogger(WithholdingModelValidator.class);
	/** Client */
	private int m_AD_Client_ID = -1;
	
	/**
	 * Initialize Validation
	 * 
	 * @param engine
	 *            validation engine
	 * @param client
	 *            client
	 */
	@Override
	public void initialize(ModelValidationEngine engine, MClient client) {
		// client = null for global validator
		if (client != null) {
			m_AD_Client_ID = client.getAD_Client_ID();
			log.info(client.toString());
		} else {
			log.info("Initializing global validator: " + this.toString());
		}
		// We want to be informed when C_BPartner is created/changed
		engine.addModelChange(I_C_BPartner.Table_Name, this);
		//	Add Timing change in C_Invoice
		engine.addModelChange(I_C_Invoice.Table_Name, this);
		engine.addDocValidate(I_C_Invoice.Table_Name, this);		
		
		engine.addModelChange(I_C_CashLine.Table_Name, this);
		
		engine.addDocValidate(I_C_Cash.Table_Name, this);

	}

	@Override
	public int getAD_Client_ID() {
		return m_AD_Client_ID;
	}

	@Override
	public String login(int AD_Org_ID, int AD_Role_ID, int AD_User_ID) {
		log.info("AD_User_ID=" + AD_User_ID);
		return null;
	}

	/**
	 * Model Change of a monitored Table. Called after
	 * PO.beforeSave/PO.beforeDelete when you called addModelChange for the
	 * table
	 * 
	 * @param po
	 *            persistent object
	 * @param type
	 *            TYPE_
	 * @return error message or null
	 * @exception Exception
	 *                if the recipient wishes the change to be not accept.
	 */
	public String modelChange(PO po, int type) throws Exception {

		if (po.get_TableName().equals("C_BPartner") && type == TYPE_AFTER_NEW) {
			MBPartner bpartner = (MBPartner) po;
			MBPGroup bpgroup = new MBPGroup(Env.getCtx(),
					bpartner.getC_BP_Group_ID(), bpartner.get_TrxName());

			PreparedStatement pstmt = null;

			String sql = "SELECT * FROM LVE_WH_Relation WHERE"
					+ " C_BP_Group_ID = ?";
			
			pstmt = DB.prepareStatement(sql, bpartner.get_TrxName());
			pstmt.setInt(1, bpgroup.getC_BP_Group_ID());
			ResultSet res = pstmt.executeQuery();
			if (res != null) {
				while (res.next()) {				
					MLVEWHRelation rt = new MLVEWHRelation(Env.getCtx(), res, bpartner.get_TrxName());
					MLVEWHRelation retention = new MLVEWHRelation(
							Env.getCtx(), 0, bpartner.get_TrxName());
					retention.setC_BPartner_ID(bpartner.getC_BPartner_ID());
					retention.setLVE_Withholding_ID(rt.getLVE_Withholding_ID());
					retention.setValidFrom(rt.getValidFrom());
					retention.saveEx();
				}
			}
			//	Close Connection
			DB.close(res, pstmt);
			log.info(po.toString());
		}else if(po.get_TableName().equals(MCashLine.Table_Name) && (type == TYPE_BEFORE_CHANGE || type == TYPE_BEFORE_NEW))
		{
			log.fine(MCashLine.Table_Name + "-- TYPE_BEFORE_NEW || TYPE_BEFORE_CHANGE");
			
			//	Get Cash Line from PO
			MCashLine m_CashLine = (MCashLine) po;
			
			//	Verify if the (Base Amount + Tax Amount) > Amount
			BigDecimal amt = m_CashLine.getAmount();
			amt = amt.abs();
			
			if(amt.equals(Env.ZERO))
				m_CashLine.set_ValueOfColumn("A_Base_Amount", Env.ZERO);
			
			String str_Base_Amount = m_CashLine.get_ValueAsString("A_Base_Amount");
			BigDecimal base_Amt = new BigDecimal((str_Base_Amount != null && str_Base_Amount.length() > 0 ? str_Base_Amount : "0"));
			
			//	Calculate the tax amount and the exempt amount
			MTax m_Tax = new MTax(Env.getCtx(), m_CashLine.get_ValueAsInt("C_Tax_ID"), null);
			MCurrency m_Currency = new MCurrency(Env.getCtx(), Env.getContextAsInt(Env.getCtx(), "@#C_Currency_ID@"), null);
			BigDecimal taxAmt = m_Tax.calculateTax(base_Amt, false, m_Currency.getStdPrecision());
		//	(C_CashLine.Amount - (C_CashLine.A_Base_Amount + Case When C_CashLine.C_Tax_ID Is Null Then 0 Else (Select C_CashLine.A_Base_Amount * (C_Tax.Rate / 100)  From C_Tax Where C_Tax.C_Tax_ID=C_CashLine.C_Tax_ID) End))
			//BigDecimal exAmt = amt.subtract(base_Amt.abs().subtract(taxAmt.abs()));
			BigDecimal exAmt = amt.subtract(base_Amt.abs().add(taxAmt.abs()));
			
			//	Error
			if((base_Amt.abs().add(taxAmt.abs()).add(exAmt.abs()).compareTo(amt.abs())> 0))
			{
				return Msg.parseTranslation(m_CashLine.getCtx(), "(@A_Base_Amount@ + @TaxAmt@ + @Exempt@) > @Amount@");
			}
			log.fine(po.toString());
		} else 
			//	Yamel Senih 2013-12-14, 12:01
			//	Add character on end document no
			if(po.get_TableName().equals(I_C_Invoice.Table_Name) 
				&& type == TYPE_BEFORE_NEW){
			MInvoice inv = (MInvoice) po;
			if(inv.isReversal()){
				MInvoice from_Invoice = MInvoice.get(inv.getCtx(), inv.getReversal_ID());
				inv.setDocumentNo(from_Invoice.getDocumentNo() + "^");
				inv.set_ValueOfColumn("AffectsBook", false);
			}
			//End Yamel Senih
			//2014-05-02 Carlos Parada Set AffectedBook By Document Type
			else{
				MDocType doctype = (MDocType) inv.getC_DocTypeTarget();
				inv.set_ValueOfColumn("AffectsBook", doctype.get_ValueAsBoolean("AffectsBook"));
			}
			//End Carlos Parada
			
		}
		return null;
	} // modelChange

	@Override
	public String docValidate(PO po, int timing) { 
		return null;
	}	
}
