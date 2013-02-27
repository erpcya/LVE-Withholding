/*************************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                              *
 * This program is free software; you can redistribute it and/or modify it           *
 * under the terms version 2 of the GNU General Public License as published          *
 * by the Free Software Foundation. This program is distributed in the hope          *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied        *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                  *
 * See the GNU General Public License for more details.                              *
 * You should have received a copy of the GNU General Public License along           *
 * with this program; if not, write to the Free Software Foundation, Inc.,           *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                            *
 * For the text or an alternative of this public license, you may reach us           *
 * Copyright (C) 2012-2013 E.R.P. Consultores y Asociados, S.A. All Rights Reserved. *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com                      *
 *************************************************************************************/
package org.erpca.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class GenerateRetention extends SvrProcess {

	/**	Invoice							*/
	private int			p_C_Invoice_ID			=	0;
	/**	Business Partner				*/
	private int			p_C_BPartner_ID			=	0;
	/**	Retention Type					*/
	private int			p_CUST_RetentionType_ID	=	0;
	/**	Accounting	Date				*/
	private Timestamp	p_DateAcct				=	null;
	/**	Accounting	Date				*/
	private Timestamp	p_DateAcct_To			=	null;
	
	private String				sql 				= new String();
	/**	Where Clause					*/
	private StringBuffer		m_parameterWhere	= new StringBuffer();

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#prepare()
	 */
	@Override
	protected void prepare() {
		
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("C_Invoice_ID"))
				p_C_Invoice_ID = para.getParameterAsInt();
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = para.getParameterAsInt();
			else if (name.equals("DateAcct")){
				p_DateAcct = (Timestamp)para.getParameter();
				p_DateAcct_To = (Timestamp)para.getParameter_To();
			}
			else if (name.equals("CUST_RetentionType_ID"))
				p_CUST_RetentionType_ID = para.getParameterAsInt();
		}
		//	Set RecordID
		p_C_Invoice_ID = getRecord_ID() != 0 && p_C_Invoice_ID == 0? getRecord_ID(): p_C_Invoice_ID;
		
		if(p_C_Invoice_ID != 0)
			m_parameterWhere.append("AND inv.C_Invoice_ID = " + p_C_Invoice_ID + " ");
		if(p_C_BPartner_ID != 0)
			m_parameterWhere.append("AND inv.C_BPartner_ID = " + p_C_BPartner_ID + " ");
		if(p_DateAcct != null)
			m_parameterWhere.append("AND inv.DateAcct >= " + DB.TO_DATE(p_DateAcct) + " ");
		if(p_DateAcct_To != null)
			m_parameterWhere.append("AND inv.DateAcct <= " + DB.TO_DATE(p_DateAcct_To) + " ");
		if(p_CUST_RetentionType_ID != 0)
			m_parameterWhere.append("AND rr.CUST_RetentionType_ID = " + p_CUST_RetentionType_ID + " ");
		
		//	
		sql = new String("SELECT bp.C_BPartner_ID, inv.C_Invoice_ID, rr.CUST_RetentionType_ID, rt.C_Charge_ID, rt.C_DocType_ID, " +
				"SUM(CASE WHEN linv.IsRetaint = 'Y' THEN linv.LineNetAmt ELSE 0 END) LineNetAmt, " +
				"cn.Aliquot, cn.MinimalAmt, cn.Subtrahend " + 
				"FROM C_Invoice inv " + 
				"INNER JOIN C_InvoiceLine linv ON(linv.C_Invoice_ID = inv.C_Invoice_ID) " + 
				"INNER JOIN C_BPartner bp ON(bp.C_BPartner_ID = inv.C_BPartner_ID) " + 
				"INNER JOIN CUST_RetentionRelation rr ON(rr.C_BPartner_ID = bp.C_BPartner_ID) " +
				"INNER JOIN CUST_RetentionType rt ON(rt.CUST_RetentionType_ID = rr.CUST_RetentionType_ID) " + 
				"INNER JOIN CUST_RetentionConfig cn ON(cn.CUST_RetentionType_ID = rr.CUST_RetentionType_ID) " + 
				"INNER JOIN CUST_CR_PT_Combination cb ON(cb.CUST_RetentionConfig_ID = cn.CUST_RetentionConfig_ID) " + 
				"INNER JOIN (SELECT rrdt.C_DocType_ID, rrdt.CUST_RetentionType_ID FROM CUST_RetentionRelation rrdt) rrdt " + 
				"ON(rrdt.C_DocType_ID = inv.C_DocType_ID AND rrdt.CUST_RetentionType_ID = rr.CUST_RetentionType_ID) " + 
				"WHERE ( " + 
				"	(inv.CUST_ConceptRetention_ID = cb.CUST_ConceptRetention_ID AND bp.CUST_PersonType_ID = cb.CUST_PersonType_ID) " + 
				"	OR(cb.CUST_ConceptRetention_ID IS NULL AND cb.CUST_PersonType_ID IS NULL) " + 
				"	) " + 
				//	Sql Where
				m_parameterWhere.toString() + 
				//	Group By
				"GROUP BY bp.C_BPartner_ID, inv.C_Invoice_ID, rr.CUST_RetentionType_ID, rt.C_Charge_ID, rt.C_DocType_ID, " +
				"cn.Aliquot, cn.MinimalAmt, cn.Subtrahend " + 
				"ORDER BY bp.C_BPartner_ID, inv.C_Invoice_ID, rr.CUST_RetentionType_ID, rt.C_Charge_ID, rt.C_DocType_ID");
		
	}

	@Override
	protected String doIt() throws Exception {
		PreparedStatement pstmt = null;
		pstmt = DB.prepareStatement(sql, null);
		ResultSet rs = pstmt.executeQuery();
		
		int m_C_BPartner_ID = 0;
		int m_C_Invoice_ID = 0;
		int m_CUST_RetentionType_ID = 0;
		int m_C_Charge_ID = 0;
		int m_C_DocType_ID = 0;
		BigDecimal m_LineNetAmt = Env.ZERO;
		BigDecimal m_Aliquot = Env.ZERO;
		BigDecimal m_MinimalAmt = Env.ZERO;
		BigDecimal m_Subtrahend = Env.ZERO;
		
		
		if(rs != null){
			while(rs.next()){
				m_C_BPartner_ID 			= rs.getInt("C_BPartner_ID");
				m_C_Invoice_ID 				= rs.getInt("C_Invoice_ID");
				m_CUST_RetentionType_ID 	= rs.getInt("CUST_RetentionType_ID");
				m_C_Charge_ID 				= rs.getInt("C_Charge_ID");
				m_C_DocType_ID 				= rs.getInt("C_DocType_ID");
				m_LineNetAmt 				= rs.getBigDecimal("LineNetAmt");
				m_Aliquot 					= rs.getBigDecimal("Aliquot");
				m_MinimalAmt 				= rs.getBigDecimal("MinimalAmt");
				m_Subtrahend 				= rs.getBigDecimal("Subtrahend");
				//	
				System.out.println("C_Invoice_ID=" + m_C_Invoice_ID);
				System.out.println("C_BPartner_ID=" + m_C_BPartner_ID);
				System.out.println("CUST_RetentionType_ID=" + m_CUST_RetentionType_ID);
				System.out.println("C_Charge_ID=" + m_C_Charge_ID);
				System.out.println("C_DocType_ID=" + m_C_DocType_ID);
				System.out.println("LineNetAmt=" + m_LineNetAmt);
				System.out.println("Aliquot=" + m_Aliquot);
				System.out.println("MinimalAmt=" + m_MinimalAmt);
				System.out.println("Subtrahend=" + m_Subtrahend);
			}
		}
		
		return null;
	}
	
	private void addDocument(int p_C_BPartner_ID, int p_C_Invoice_ID, 
			int p_CUST_RetentionType_ID, int p_C_Charge_ID, 
			int p_C_DocType_ID, BigDecimal m_LineNetAmt, 
			BigDecimal m_Aliquot, BigDecimal m_MinimalAmt, BigDecimal m_Subtrahend){
		
	}

}
