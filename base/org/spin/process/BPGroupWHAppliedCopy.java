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
package org.spin.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.logging.Level;

import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.spin.model.I_LVE_WH_Relation;
import org.spin.model.MLVEWHRelation;

/**
 * Copy default Retention Relation 
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 * @contributor <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 * 		<br> Best Programming Practices
 *
 */
public class BPGroupWHAppliedCopy extends SvrProcess {

	/** BP Group					*/
	private int								p_C_BP_Group_ID = 0;
	
	/**	Withholding Relation		*/
	private List<MLVEWHRelation> 	m_WH_RelationList = null;
	
	/**	Copied						*/
	private int								m_Copied = 0;
	
	/**	Deleted						*/
	private int								m_Deleted = 0;

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
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);				
		}
		//	if from GridTab
		if(p_C_BP_Group_ID == 0)
			p_C_BP_Group_ID = getRecord_ID();

	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {
		//	Load List
		m_WH_RelationList = new Query(getCtx(), MLVEWHRelation.Table_Name, 
				I_LVE_WH_Relation.COLUMNNAME_C_BP_Group_ID+"=?", get_TrxName())
			.setParameters(p_C_BP_Group_ID)
			.setOnlyActiveRecords(true)
			.<MLVEWHRelation>list();
		
		if(m_WH_RelationList == null 
				|| m_WH_RelationList.isEmpty())
			return "@Copied@ = " + 0;
		//	Sql
		String sql = new String("SELECT bp.C_BPartner_ID " +
				"FROM C_BPartner bp " +
				"WHERE bp.C_BP_Group_ID = ?");
		log.fine("SQL=" + sql);
		log.fine("C_BP_Group_ID=" + p_C_BP_Group_ID);
		
		PreparedStatement pstmt = null;
		pstmt = DB.prepareStatement(sql, get_TrxName());
		pstmt.setInt(1,p_C_BP_Group_ID);
		ResultSet rs = pstmt.executeQuery();
		//	Try
		if (rs != null) {						
			//	Delete Old Relations
			deleteWithholding();
			while (rs.next()) {
				int p_C_BPartner_ID = rs.getInt("C_BPartner_ID");
				//	Add New Relations
				addRelation(p_C_BPartner_ID, get_TrxName());
			}
			addLog(0, null, new BigDecimal(m_Copied), "@LVE_WH_Relation_ID@ @Copied@");
		}
		//	Close Connection
		DB.close(rs, pstmt);
		return "@Deleted@=" + m_Deleted + " @Copied@=" + m_Copied;
	}

	/**
	 * Delete Withholding
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 06/08/2013, 16:36:46
	 * @return void
	 */
	private void deleteWithholding() {
		String sql = new String("DELETE FROM LVE_WH_Relation " +
				"WHERE EXISTS(SELECT 1 " +
				"				FROM C_BPartner cp " +
				"				INNER JOIN LVE_WH_Relation whr ON(whr.C_BPartner_ID = cp.C_BPartner_ID) " +
				"				WHERE LVE_WH_Relation.LVE_WH_Relation_ID = whr.LVE_WH_Relation_ID " +
				"				AND cp.C_BP_Group_ID = " + p_C_BP_Group_ID + ")");
		//	Info
		log.fine("SQL=" + sql);
		//	
		m_Deleted = DB.executeUpdateEx(sql, get_TrxName());
		log.info("Withholding Relation Deleted=" + m_Deleted);
		addLog(0, null, new BigDecimal(m_Deleted), "@LVE_WH_Relation_ID@ @Deleted@");
	}
	
	/**
	 * Add Withholding Relation to Business Partner
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 06/08/2013, 16:31:05
	 * @param p_C_BPartner_ID
	 * @param get_TrxName
	 * @return void
	 */
	private void addRelation(int p_C_BPartner_ID,String get_TrxName) {	
		//	Iterate
		for (MLVEWHRelation whR : m_WH_RelationList) {			
			MLVEWHRelation withholding = new MLVEWHRelation(Env.getCtx(), 0, get_TrxName);
			withholding.setC_BPartner_ID(p_C_BPartner_ID);
			withholding.setLVE_Withholding_ID(whR.getLVE_Withholding_ID());
			withholding.saveEx();
			//	Count Generated
			m_Copied ++;
		}
	}

}