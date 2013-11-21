package org.spin.model;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.compiere.model.MBPGroup;
import org.compiere.model.MBPartner;
import org.compiere.model.MCash;
import org.compiere.model.MCashLine;
import org.compiere.model.MClient;
import org.compiere.model.MCurrency;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MSequence;
import org.compiere.model.MSysConfig;
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
		engine.addModelChange(MBPartner.Table_Name, this);
		//	Add Timing change in C_Invoice
		engine.addDocValidate(MInvoice.Table_Name, this);		
		
		engine.addModelChange(MCashLine.Table_Name, this);
		
		engine.addDocValidate(MCash.Table_Name, this);

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
					retention.saveEx();
				}
			}
			log.info(po.toString());
		}else if(po.get_TableName().equals(MCashLine.Table_Name) && (type == TYPE_BEFORE_CHANGE || type == TYPE_BEFORE_NEW))
		{
			log.fine(MCashLine.Table_Name + "-- TYPE_BEFORE_NEW || TYPE_BEFORE_CHANGE");
			
			//	Get Cash Line from PO
			MCashLine m_CashLine = (MCashLine) po;
			
			//	Verify if the (Base Amount + Tax Amount) > Amount
			if(m_CashLine != null)
			{
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
					return "("
							+ Msg.translate(m_CashLine.getCtx(), "A_Base_Amount") 
							+ "+" 
							+ Msg.translate(m_CashLine.getCtx(), "TaxAmt")
							+ "+"
							+ Msg.translate(m_CashLine.getCtx(), "Exempt")
							+ ") > "
							+ Msg.translate(m_CashLine.getCtx(), "Amount");
					
					
				}
				log.fine(po.toString());
			}
			
		}
		return null;
	} // modelChange

	@Override
	public String docValidate(PO po, int timing) {
		if(timing == TIMING_AFTER_COMPLETE){
			if(po.get_TableName().equals(MInvoice.Table_Name)){
				MInvoice inv = (MInvoice) po;
				if(inv.isSOTrx()){
					MDocType doc = (MDocType) inv.getC_DocTypeTarget();
					int m_ControlNo_Seq = doc.get_ValueAsInt("ControlNoSequence_ID");
					if(m_ControlNo_Seq != 0){
						MSequence seq_ControlNo = new MSequence(Env.getCtx(), m_ControlNo_Seq, inv.get_TrxName());
						String prefix = seq_ControlNo.getPrefix();
						String suffix = seq_ControlNo.getSuffix();
						int next = seq_ControlNo.getNextID();
						
						if(prefix == null 
								|| prefix.length() == 0)
							prefix = "";
						
						if(suffix == null 
								|| suffix.length() == 0)
							suffix = "";
						
						inv.set_ValueOfColumn("ControlNo", prefix + next + suffix);
						if(!inv.save())
							return inv.getProcessMsg();
						if(!seq_ControlNo.save())
							return "Error @ControlNo@";
					}
				}
				
			}
		} else if(timing == TIMING_BEFORE_REVERSECORRECT || timing == TIMING_BEFORE_VOID){
			if(po.get_TableName().equals(MInvoice.Table_Name)){
				log.fine(MInvoice.Table_Name + " -- TIMING_BEFORE_REVERSECORRECT || TIMING_BEFORE_VOID");
				//	Retention
				MInvoice ret = (MInvoice) po;
				//	Verify Reference from Declaration
				String sql = new String("SELECT MAX(dr.DocumentNo) DocumentNo " +
						"FROM C_Invoice dr " +
						"INNER JOIN C_InvoiceLine drl ON(drl.C_Invoice_ID = dr.C_Invoice_ID) " +
						"WHERE dr.DocStatus IN('CO', 'CL') " +
						"AND drl.DocAffected_ID = ?");
				//	Log
				log.fine("SQL Declaration=" + sql);
				//	Search
				String declarationDocNo = DB.getSQLValueString(ret.get_TrxName(), 
						sql, ret.getC_Invoice_ID());
				//	If exist a Declaration
				if(declarationDocNo != null)
					return "@Error@ @SQLErrorReferenced@ @DocumentNo@ " + declarationDocNo;
				
			}
		} else if (timing==TIMING_BEFORE_PREPARE)
		{	//	Dixon Martinez Add Tax in Cash
				  
			if(po.get_TableName().equals(MCash.Table_Name))
			{
				log.fine(MCash.Table_Name + " -- TIMING_BEFORE_PREPARE");
				if (MSysConfig.getBooleanValue("TAX_ACCT_CASH", false))
				{
					MCash cash = (MCash) po;
					if (!MLVECashTax.calculateTaxTotal(cash)) // setTotals
						return Msg.translate(Env.getLanguage(Env.getCtx()), "TaxCalculatingError");
				}
			}
		}
		return null;
	}

}
