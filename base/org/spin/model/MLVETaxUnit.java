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
import java.sql.Timestamp;
import java.util.Properties;

import org.compiere.model.Query;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MLVETaxUnit extends X_LVE_TaxUnit {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 2149126193372527695L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 05/08/2013, 02:11:31
	 * @param ctx
	 * @param LVE_TaxUnit_ID
	 * @param trxName
	 */
	public MLVETaxUnit(Properties ctx, int LVE_TaxUnit_ID, String trxName) {
		super(ctx, LVE_TaxUnit_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 05/08/2013, 02:11:31
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVETaxUnit(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * Get Valid Tax Unit valid for DateAcct
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 07/08/2013, 12:03:14
	 * @param ctx
	 * @param DateAcct
	 * @param trxName
	 * @return
	 * @return MLVETaxUnit
	 */
	public static MLVETaxUnit get(Properties ctx, Timestamp DateAcct, String trxName){
		//	Get Tax Unit
		MLVETaxUnit m_TaxUnitList = new Query(ctx, Table_Name, 
				COLUMNNAME_ValidFrom +"<=?", trxName)
			.setParameters(DateAcct)
			.setOnlyActiveRecords(true)
			.setOrderBy(COLUMNNAME_ValidFrom + " DESC")
			.firstOnly();
		return m_TaxUnitList;
	}
}
