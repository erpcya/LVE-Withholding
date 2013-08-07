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

import org.compiere.model.MAcctSchema;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereSystemError;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.spin.model.I_LVE_WithholdingRelation;
import org.spin.model.MLVEWithholdingRelation;

/**
 * Copy default Retention Relation 
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class BPGroupWHAppliedCopy extends SvrProcess {

	/** BP Group					*/
	private int								p_C_BP_Group_ID = 0;
	
	/**	Withholding Relation		*/
	private List<MLVEWithholdingRelation> 	m_WH_RelationList = null;
	
	/**	Copied						*/
	private int								m_Copied = 0;

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
		
		log.info("C_BP_Group_ID=" + p_C_BP_Group_ID);
		if (p_C_BP_Group_ID == 0)
			throw new AdempiereSystemError("C_BP_Group_ID=0");
		//
		String sql = null;
		int updated = 0;
		int created = 0;
		int updatedTotal = 0;
		int createdTotal = 0;

		//	Update existing Relations
		sql = "UPDATE LVE_WithholdingRelation whr "
			+ "SET (LVE_Withholding_ID)="
			 + " (SELECT whrf.LVE_Withholding_ID "
			 + " FROM LVE_Withholding whrf"
			 + " WHERE whrf.C_BP_Group_ID=" + p_C_BP_Group_ID
			 + " AND whrf.C_BPartner_ID IS NULL), Updated=SysDate, UpdatedBy= " + getAD_User_ID()
			+ "WHERE EXISTS (SELECT 1 FROM C_BPartner p "
				+ "WHERE p.C_BPartner_ID=whr.C_BPartner_ID"
				+ " AND p.C_BP_Group_ID=" + p_C_BP_Group_ID + ")";
		updated = DB.executeUpdate(sql, get_TrxName());
		addLog(0, null, new BigDecimal(updated), "@Updated@ @C_BPartner_ID@");
		updatedTotal += updated;
		
		//	Insert new Relation
		sql = "INSERT INTO LVE_WithholdingRelation "
			+ "(C_BPartner_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy,"
			+ " LVE_Withholding_ID) "
			+ "SELECT p.C_BPartner_ID, p.AD_Client_ID, p.AD_Org_ID, 'Y', SysDate, 0, SysDate, 0,"
			+ "whr.LVE_Withholding_ID "
			+ "FROM C_BPartner p "
			+ "INNER JOIN LVE_WithholdingRelation whr ON(whr.C_BP_Group_ID = p.C_BP_Group_ID)";
		created = DB.executeUpdate(sql, get_TrxName());
		addLog(0, null, new BigDecimal(created), "@Created@ @C_BPartner_ID@ @IsCustomer@");
		createdTotal += created;
		
		return "@Created@=" + createdTotal + ", @Updated@=" + updatedTotal;
	}

	/**
	 * Delete Withholding
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 06/08/2013, 16:36:46
	 * @param p_C_BPartner_ID
	 * @return void
	 */
	private void deleteWithholding(int p_C_BPartner_ID) {
		String sql = new String("DELETE FROM LVE_WithholdingRelation " +
				"WHERE C_BPartner_ID = " + p_C_BPartner_ID);
		//	Info
		log.fine("SQL=" + sql);
		log.fine("C_BPartner_ID=" + p_C_BPartner_ID);
		//	
		int deleted = DB.executeUpdateEx(sql, get_TrxName());
		log.info("C_BPartner_ID= " + p_C_BPartner_ID + " Withholding Relation Deleted=" + deleted);
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
		for (MLVEWithholdingRelation whR : m_WH_RelationList) {			
			MLVEWithholdingRelation withholding = new MLVEWithholdingRelation(Env.getCtx(), 0, get_TrxName);
			withholding.setC_BPartner_ID(p_C_BPartner_ID);
			withholding.setLVE_Withholding_ID(whR.getLVE_Withholding_ID());
			withholding.saveEx();
		}
		//	Count Generated
		m_Copied ++;
	}

}
