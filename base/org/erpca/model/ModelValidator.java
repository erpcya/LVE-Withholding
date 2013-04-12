package org.erpca.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.compiere.model.MBPGroup;
import org.compiere.model.MBPartner;
import org.compiere.model.MClient;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MSequence;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;


/**
 * Model Validator
 * 
 * @author Dixon Martinez
 */
public class ModelValidator implements org.compiere.model.ModelValidator {

	/**
	 * Constructor.
	 */
	public ModelValidator() {
		super();
	} // ModelValidator

	/** Logger */
	private static CLogger log = CLogger.getCLogger(ModelValidator.class);
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

			String sql = "SELECT * FROM CUST_RetentionRelation WHERE"
					+ " C_BP_Group_ID = ?";
			
			pstmt = DB.prepareStatement(sql, bpartner.get_TrxName());
			pstmt.setInt(1, bpgroup.getC_BP_Group_ID());
			ResultSet res = pstmt.executeQuery();
			if (res != null) {
				while (res.next()) {				
					MCUSTRetentionRelation rt = new MCUSTRetentionRelation(Env.getCtx(), res, bpartner.get_TrxName());
					MCUSTRetentionRelation retention = new MCUSTRetentionRelation(
							Env.getCtx(), 0, bpartner.get_TrxName());
					retention.setC_BPartner_ID(bpartner.getC_BPartner_ID());
					retention.setCUST_RetentionType_ID(rt.getCUST_RetentionType_ID());
					retention.saveEx();
				}
			}
			log.info(po.toString());
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
					int m_Seq_ControlNo = doc.get_ValueAsInt("Seq_ControlNo");
					if(m_Seq_ControlNo != 0){
						MSequence seq_ControlNo = new MSequence(Env.getCtx(), m_Seq_ControlNo, inv.get_TrxName());
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
					return "Error Referenced in " + declarationDocNo;
				
			}
		}
		return null;
	}

}
