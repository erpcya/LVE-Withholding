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
import java.util.List;
import java.util.Properties;

import org.compiere.model.Query;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MLVEWithholding extends X_LVE_Withholding {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2620401720022374809L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 05/08/2013, 02:18:52
	 * @param ctx
	 * @param LVE_Withholding_ID
	 * @param trxName
	 */
	public MLVEWithholding(Properties ctx, int LVE_Withholding_ID,
			String trxName) {
		super(ctx, LVE_Withholding_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 05/08/2013, 02:18:52
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVEWithholding(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 * Get Withholding from SQL Where
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 17/08/2013, 11:33:02
	 * @param ctx
	 * @param where
	 * @param trxName
	 * @return
	 * @return List<MLVEWithholding>
	 */
	public static List<MLVEWithholding> get(Properties ctx, int p_LVE_WH_Type_ID, int p_LVE_Withholding_ID, String trxName){
		//	Get Withholding
		StringBuffer where =  new StringBuffer();
		//	Criteria
		if(p_LVE_WH_Type_ID != 0)
			where.append(COLUMNNAME_LVE_WH_Type_ID)
			.append("=")
			.append(p_LVE_WH_Type_ID);
		if(p_LVE_Withholding_ID != 0)
			where.append((where.length() != 0? " AND ": "")).append(COLUMNNAME_LVE_Withholding_ID)
			.append("=")
			.append(p_LVE_Withholding_ID);
		//	
		List<MLVEWithholding> m_WithholdingList = new Query(ctx, Table_Name, 
				where.toString(), trxName)
			.setOnlyActiveRecords(true)
			.setOrderBy(COLUMNNAME_SeqNo + " ASC")
			.<MLVEWithholding>list();
		return m_WithholdingList;
	}
}
