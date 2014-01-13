/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * Copyright (C) 2003-2013 E.R.P. Consultores y Asociados.                    *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.Query;
import org.compiere.util.DB;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MLVEWHConfig extends X_LVE_WH_Config {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1521689641627106133L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 05/08/2013, 02:52:45
	 * @param ctx
	 * @param LVE_WithholdingConfig_ID
	 * @param trxName
	 */
	public MLVEWHConfig(Properties ctx, int LVE_WithholdingConfig_ID,
			String trxName) {
		super(ctx, LVE_WithholdingConfig_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 05/08/2013, 02:52:45
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVEWHConfig(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 * Create Configuration From Combination, if exists a Configuration with the same 
	 * Combination ID, Withholding_ID and Tax Unit ID will be Updated
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 07/08/2013, 17:10:02
	 * @param ctx
	 * @param LVE_Withholding_ID
	 * @param LVE_WH_Combination_ID
	 * @param LVE_TaxUnit_ID
	 * @param trxName
	 * @param validReference
	 * @return
	 * @return MLVEWithholdingConfig
	 */
	public static MLVEWHConfig createFrom(Properties ctx, int LVE_Withholding_ID, int LVE_WH_Combination_ID, int LVE_TaxUnit_ID, 
			String trxName, boolean validReference) {
		
		//	Load if Exists
		MLVEWHConfig config = new Query(ctx, Table_Name, 
				COLUMNNAME_LVE_Withholding_ID + "=? " +
				"AND " + COLUMNNAME_LVE_WH_Combination_ID + "=? " +
				"AND " + COLUMNNAME_LVE_TaxUnit_ID + "=?", trxName)
			.setParameters(LVE_Withholding_ID, LVE_WH_Combination_ID, LVE_TaxUnit_ID)
			.setOnlyActiveRecords(true)
			.firstOnly();
		//	Create New
		if(config == null) {
			config = new MLVEWHConfig(ctx, 0, trxName);
			config.setLVE_Withholding_ID(LVE_Withholding_ID);
			config.setLVE_WH_Combination_ID(LVE_WH_Combination_ID);
			config.setLVE_TaxUnit_ID(LVE_TaxUnit_ID);
		} else if(config.validReference() != 0)
			config = null;
		return config;
	}
	
	@Override
	protected boolean beforeSave(boolean newRecord) {
		super.beforeSave(newRecord);
		if(!newRecord
				&& !is_ValueChanged("IsActive")){
			if(validReference() != 0)
				throw new AdempiereException("@SQLErrorReferenced@");
		}
		return true;
	}
	
	/**
	 * Valid Reference from other record
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 21/08/2013, 11:45:11
	 * @return
	 * @return int
	 */
	private int validReference(){
		int m_C_Invoice_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(il.C_Invoice_ID) " +
				"FROM C_InvoiceLine il " +
				"WHERE il.LVE_WH_Config_ID=?", getLVE_WH_Config_ID());
		return m_C_Invoice_ID;
	}
}
