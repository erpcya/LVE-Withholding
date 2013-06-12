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
 * Copyright (C) 2003-2013 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.erpca.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;

import org.adempiere.exceptions.DBException;
import org.compiere.model.MBPGroup;
import org.compiere.model.MBPartner;
import org.compiere.model.PO;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.erpca.model.MCUSTRetentionRelation;
import org.python.modules.newmodule;

/**
 * Copy default Retention Relation 
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class BPGroutRetentionRelationCopy extends SvrProcess {

	/** BP Group					*/
	private int			p_C_BP_Group_ID = 0;
	/** BP Partner 					*/
	private int			p_C_BPartner_ID = 0;
	
	/**
	 * *** Constructor ***
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 27/05/2013, 17:37:31
	 */
	public BPGroutRetentionRelationCopy() {
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#prepare()
	 */
	@Override
	protected void prepare() {
		for(ProcessInfoParameter para : getParameter()){
			String name = para.getParameterName();
			if(para.getParameter() == null)
				;
			else if(name.equals("C_BP_Group_ID"))
				p_C_BP_Group_ID = para.getParameterAsInt();
			else if(name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = para.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);				
		}

	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {
		partner();		
		return "";
	}

	/**
	 * 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 31/05/2013, 18:20:30
	 * @return void
	 */
	public void partner()
	{
		PreparedStatement pstmt = null;
		ResultSet rs;
		StringBuffer s = new StringBuffer("SELECT * FROM C_BPartner WHERE C_BP_Group_ID = ? ");
		
		pstmt = DB.prepareStatement(s.toString());
		try {
			pstmt.setInt(1,p_C_BP_Group_ID);
			rs = pstmt.executeQuery();
			if (rs != null) 
			{						
			//	deleteRetention();
				while (rs.next()) 
				{	
					MBPartner bpartner = new MBPartner(Env.getCtx(),rs,null);				
					retention(bpartner.getC_BPartner_ID(),bpartner.get_TrxName());
				}
			}
			rs.close();
			pstmt.close();
			pstmt = null;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 31/05/2013, 18:20:57
	 * @return void
	 */
	private void deleteRetention() {
		PreparedStatement pstmt = null;
		StringBuffer sql = new StringBuffer("DELETE FROM CUST_RetentionRelation WHERE C_BPartner_ID IN (SELECT C_BPartner_ID FROM C_BPartner WHERE C_BP_Group_ID = ?); ");
		
		pstmt = DB.prepareStatement(sql.toString());
		try {
			pstmt.setInt(1, p_C_BP_Group_ID);			
			pstmt.execute();			
			pstmt.close();
			pstmt = null;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 31/05/2013, 18:21:22
	 * @param c_BPartner
	 * @param get_TrxName
	 * @return void
	 */
	private void retention(int c_BPartner,String get_TrxName) 
	{
		PreparedStatement pstmt = null;
		StringBuffer sql = new StringBuffer( "SELECT * FROM CUST_RetentionRelation WHERE C_BP_Group_ID = ?");

		pstmt = DB.prepareStatement(sql.toString(), get_TrxName);
		try {
			pstmt.setInt(1, p_C_BP_Group_ID);			
			ResultSet rs = pstmt.executeQuery();
			if (rs != null) 
			{
				while (rs.next()) 
				{	
					MCUSTRetentionRelation rt = new MCUSTRetentionRelation(Env.getCtx(), rs, get_TrxName);
					MCUSTRetentionRelation retention = new MCUSTRetentionRelation(Env.getCtx(), 0, get_TrxName);
					retention.setC_BPartner_ID(c_BPartner);
					retention.setCUST_RetentionType_ID(rt.getCUST_RetentionType_ID());
					retention.saveEx();	
				}
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
