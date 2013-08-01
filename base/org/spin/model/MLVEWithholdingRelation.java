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

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class MLVEWithholdingRelation extends X_LVE_WithholdingRelation {

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 01/08/2013, 17:46:11
	 * @param ctx
	 * @param LVE_WithholdingRelation_ID
	 * @param trxName
	 */
	public MLVEWithholdingRelation(Properties ctx,
			int LVE_WithholdingRelation_ID, String trxName) {
		super(ctx, LVE_WithholdingRelation_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 01/08/2013, 17:46:11
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVEWithholdingRelation(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}


	/**
	 * 	Before Save
	 *	@param newRecord new
	 *	@return true
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		if (getC_DocType_ID() == 0)
		{
			setC_DocType_ID(-1);
		}
			
		if (getC_BPartner_ID() != 0)
		{
			if(getC_BP_Group_ID() != 0)
				setC_BP_Group_ID(-1);
		}
		
		if(getC_BP_Group_ID() == 0)
			setC_BP_Group_ID(-1);
		
		if (getC_BPartner_ID() == 0)
		{
			setC_BPartner_ID(-1);
		}		
		
		return true;
	}	//	beforeSave


}
