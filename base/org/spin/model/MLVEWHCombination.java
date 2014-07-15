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
public class MLVEWHCombination extends X_LVE_WH_Combination {

	/**
	 * 
	 */
	private static final long serialVersionUID = 218997923333363543L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 05/08/2013, 02:54:01
	 * @param ctx
	 * @param LVE_WH_Combination_ID
	 * @param trxName
	 */
	public MLVEWHCombination(Properties ctx, int LVE_WH_Combination_ID,
			String trxName) {
		super(ctx, LVE_WH_Combination_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 05/08/2013, 02:54:01
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVEWHCombination(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * Get Combination from Concept
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/08/2013, 08:46:21
	 * @param ctx
	 * @param p_LVE_Concept_ID
	 * @param trxName
	 * @return
	 * @return List<MLVEWHCombination>
	 */
	public static List<MLVEWHCombination> get(Properties ctx, int p_LVE_Concept_ID, String trxName){
		List<MLVEWHCombination> m_WHCombinationList = new Query(ctx, Table_Name, 
				COLUMNNAME_LVE_WH_Concept_ID + "=?", trxName)
			.setParameters(p_LVE_Concept_ID)
			.setOnlyActiveRecords(true)
			.<MLVEWHCombination>list();
		return m_WHCombinationList;
	}

}
