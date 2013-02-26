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
	/**	Accounting	Date				*/
	private Timestamp	p_DateAcct				=	null;
	/**	Accounting	Date				*/
	private Timestamp	p_DateAcct_To			=	null;
	/**	Retention Type					*/
	private String		p_CUST_RetentionType_ID	=	null;
	/**	Record ID						*/
	private int			record_ID				=	0;
	
	private String		sql 					= new String();
	/**	Where Clause					*/
	private StringBuffer		m_parameterWhere	= new StringBuffer();
	
	/**
	 * 
	 * *** Constructor de la Clase ***
	 * @author Yamel Senih 19/02/2013, 12:14:38
	 */
	public GenerateRetention() {
		//record_ID = getRecord_ID();
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
				p_CUST_RetentionType_ID = (String)para.getParameter();
			record_ID = p_C_Invoice_ID != 0? p_C_Invoice_ID: getRecord_ID();
		}
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#prepare()
	 */
	@Override
	protected void prepare() {
		sql = new String("SELECT bp.C_BPartner_ID, inv.C_Invoice_ID, rr.CUST_RetentionType_ID, " +
				"SUM(CASE WHEN linv.IsRetaint = 'Y' THEN linv.LineNetAmt ELSE 0 END) LineNetAmt, " +
				"cn.Aliquot, cn.MinimalAmt, cn.Subtrahend, rt.C_Charge_ID, rt.C_DocType_ID " + 
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
				"GROUP BY bp.C_BPartner_ID, inv.C_Invoice_ID, rr.CUST_RetentionType_ID, " +
				"cn.Aliquot, cn.MinimalAmt, cn.Subtrahend, rt.C_Charge_ID, rt.C_DocType_ID " + 
				"ORDER BY bp.C_BPartner_ID, inv.C_Invoice_ID, rr.CUST_RetentionType_ID, rt.C_Charge_ID, rt.C_DocType_ID");
		
	}

	@Override
	protected String doIt() throws Exception {
		PreparedStatement pstmt = null;
		pstmt = DB.prepareStatement(sql, null);
		ResultSet res = pstmt.executeQuery();
		
		int m_C_BPartner_ID = 0;
		int m_C_Invoice_ID = 0;
		int m_CUST_RetentionType_ID = 0;
		BigDecimal m_LineNetAmt = Env.ZERO;
		BigDecimal m_Aliquot = Env.ZERO;
		BigDecimal m_MinimalAmt = Env.ZERO;
		BigDecimal m_Subtrahend = Env.ZERO;
		int m_C_Charge_ID = 0;
		int m_C_DocType_ID = 0;
		
		
		if(res != null){
			while(res.next()){
				
			}
		}
		
		return null;
	}

}
