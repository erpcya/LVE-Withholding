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
package org.spin.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Trx;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class GenerateConfigConbination extends SvrProcess {

	/**	Tax Unit							*/
	private int p_TaxUnit;
	
	/** Sql									*/
	private String		sql 					= null;
	/**	Transaction							*/
	Trx 				trx 					= null;
	
	/**	Tax Unit Amount 					*/
	private float taxUnitAmount;
	
	/**	Tax Unit Valid From					*/
	private Timestamp validFrom					= null;
	
	
	/**
	 * *** Constructor ***
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 01/08/2013, 18:26:02
	 */
	public GenerateConfigConbination() {
		// TODO Auto-generated constructor stub
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#prepare()
	 */
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("LVE_TaxUnit_ID"))
				p_TaxUnit = para.getParameterAsInt();			
		}
		//	SQL
		sql = "SELECT tu.ValidFrom ,tu.TaxAmt FROM LVE_TaxUnit tu ";
		
		//	Add Clause
		if(p_TaxUnit != 0)
			sql +=  "WHERE tu.LVE_TaxUnit_ID = "+p_TaxUnit;
		
		log.fine("SQL Retention Type=" + sql);
		
		trx = Trx.get(get_TrxName(), false);

	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {	
		PreparedStatement pstmt = null;
		pstmt = DB.prepareStatement(sql, get_TrxName());
		ResultSet rs = pstmt.executeQuery();
		
		if(rs != null){
			while (rs.next()){
				validFrom = rs.getTimestamp(1);
				taxUnitAmount = rs.getFloat(2);
				calculateSubtrahend(taxUnitAmount);
					
			}
		}
		
		DB.close(rs, pstmt);
		
		return String.valueOf(p_TaxUnit +" "+ validFrom +" "+taxUnitAmount);
	}

	private void calculateSubtrahend(float taxUnitAmount) {
		
		
	}
	
	

}


