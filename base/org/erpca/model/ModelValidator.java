package org.erpca.model;

import org.compiere.model.MBPartner;
import org.compiere.model.MClient;
import org.compiere.model.MOrder;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.PO;
import org.compiere.util.CLogger;

import compiere.model.MyValidator;

/**
 *	Model Validator
 *	
 *	@author Dixon Martinez 
 */
public class ModelValidator implements org.compiere.model.ModelValidator {

	/**
	 *	Constructor.
	 */
	public ModelValidator ()
	{
		super ();
	}	//	MyValidator
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ModelValidator.class);
	/** Client			*/
	private int		m_AD_Client_ID = -1;
	/** User	*/
	private int		m_AD_User_ID = -1;
	/** Role	*/
	private int		m_AD_Role_ID = -1;
	
	/**
	 *	Initialize Validation
	 *	@param engine validation engine 
	 *	@param client client
	 */
	@Override
	public void initialize(ModelValidationEngine engine, MClient client) {
		//client = null for global validator
		if (client != null) {
			m_AD_Client_ID = client.getAD_Client_ID();
			log.info(client.toString());
		}
		else  {
			log.info("Initializing global validator: "+this.toString());
		}
		//	We want to be informed when C_BPartner is created/changed
		engine.addModelChange(MBPartner.Table_Name, this);
		//	We want to validate Order before preparing
		engine.addDocValidate(MBPartner.Table_Name, this);

	}

	@Override
	public int getAD_Client_ID() {
		return m_AD_Client_ID;
	}

	@Override
	public String login(int AD_Org_ID, int AD_Role_ID, int AD_User_ID) {
		log.info("AD_User_ID=" + AD_User_ID);
		m_AD_User_ID = AD_User_ID;
		m_AD_Role_ID = AD_Role_ID;
		return null;
	}

	/**
     *	Model Change of a monitored Table.
     *	Called after PO.beforeSave/PO.beforeDelete
     *	when you called addModelChange for the table
     *	@param po persistent object
     *	@param type TYPE_
     *	@return error message or null
     *	@exception Exception if the recipient wishes the change to be not accept.
     */
	public String modelChange (PO po, int type) throws Exception
	{
		if (po.get_TableName().equals("C_BPartner") && type == TYPE_AFTER_NEW)
		{
			MBPartner bpartner = (MBPartner)po;
			
			
			
			
			
			log.info(po.toString());
		}
		return null;
	}	//	modelChange
	

	@Override
	public String docValidate(PO po, int timing) {
		// TODO Auto-generated method stub
		return null;
	}

}
