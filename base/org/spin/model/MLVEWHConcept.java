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
public class MLVEWHConcept extends X_LVE_WH_Concept {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -2137308357827013437L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 05/08/2013, 02:19:48
	 * @param ctx
	 * @param LVE_WithholdingConcept_ID
	 * @param trxName
	 */
	public MLVEWHConcept(Properties ctx,
			int LVE_WithholdingConcept_ID, String trxName) {
		super(ctx, LVE_WithholdingConcept_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 05/08/2013, 02:19:48
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVEWHConcept(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 * Get List with all Concept from Concept Group
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/08/2013, 08:35:04
	 * @param ctx
	 * @param p_LVE_WH_ConceptGroup_From_ID
	 * @param trxName
	 * @return
	 * @return List<MLVEWHConcept>
	 */
	public static List<MLVEWHConcept> get(Properties ctx, int p_LVE_WH_ConceptGroup_From_ID, String trxName){
		//	Get Withholding
		StringBuffer where =  new StringBuffer();
		//	Criteria
		if(p_LVE_WH_ConceptGroup_From_ID != 0)
			where.append(COLUMNNAME_LVE_WH_ConceptGroup_ID)
			.append("=")
			.append(p_LVE_WH_ConceptGroup_From_ID);
		//	
		List<MLVEWHConcept> m_ConceptpList = new Query(ctx, Table_Name, 
				where.toString(), trxName)
			.setOnlyActiveRecords(true)
			.setOrderBy(COLUMNNAME_Name + " ASC")
			.<MLVEWHConcept>list();
		return m_ConceptpList;
	}
	
}
