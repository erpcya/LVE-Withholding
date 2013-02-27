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

import org.compiere.model.MAllocationHdr;
import org.compiere.model.MAllocationLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

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
	/**	Document	Date				*/
	private Timestamp	p_DateDoc				=	null;
	
	private String				sql 					= new String();
	/**	Where Clause					*/
	private StringBuffer		m_parameterWhere		= new StringBuffer();
	
	/**	Current Retention				*/
	private MInvoice 			m_Current_Retention 	= null;
	/**	Current Allocation				*/
	private MAllocationHdr 		m_Current_Alloc			= null;
	
	private int 				m_Generated 			= 0;
	
	private int 				m_Current_C_BPartner_ID = 0;
	
	private final int N_UOM = 100;
	
	private String trxName = Trx.createTrxName("ProcessRt");
	private Trx trx = Trx.get(trxName, true);

	
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
			else if(name.equals("DateDoc"))
				p_DateDoc = (Timestamp)para.getParameter();
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
		sql = new String("SELECT bp.C_BPartner_ID, rr.CUST_RetentionType_ID, inv.C_Invoice_ID, rt.C_Charge_ID, rt.C_DocType_ID, " +
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
				"WHERE inv.CUST_ConceptRetention_ID = cb.CUST_ConceptRetention_ID AND bp.CUST_PersonType_ID = cb.CUST_PersonType_ID " +
				//	Sql Where
				m_parameterWhere.toString() + 
				//	Group By
				"GROUP BY bp.C_BPartner_ID, rr.CUST_RetentionType_ID, inv.C_Invoice_ID, rt.C_Charge_ID, rt.C_DocType_ID, " +
				"cn.Aliquot, cn.MinimalAmt, cn.Subtrahend " + 
				"ORDER BY bp.C_BPartner_ID, rr.CUST_RetentionType_ID, inv.C_Invoice_ID, rt.C_Charge_ID, rt.C_DocType_ID");
		
	}

	@Override
	protected String doIt() throws Exception {
		PreparedStatement pstmt = null;
		pstmt = DB.prepareStatement(sql, trxName);
		ResultSet rs = pstmt.executeQuery();
		
		int m_C_BPartner_ID = 0;
		int m_CUST_RetentionType_ID = 0;
		int m_C_Invoice_ID = 0;
		int m_C_Charge_ID = 0;
		int m_C_DocType_ID = 0;
		BigDecimal m_TotalLines = Env.ZERO;
		BigDecimal m_Aliquot = Env.ZERO;
		BigDecimal m_MinimalAmt = Env.ZERO;
		BigDecimal m_Subtrahend = Env.ZERO;
		
		
		if(rs != null){
			while(rs.next()){
				m_C_BPartner_ID 			= rs.getInt("C_BPartner_ID");
				m_CUST_RetentionType_ID 	= rs.getInt("CUST_RetentionType_ID");
				m_C_Invoice_ID 				= rs.getInt("C_Invoice_ID");
				m_C_Charge_ID 				= rs.getInt("C_Charge_ID");
				m_C_DocType_ID 				= rs.getInt("C_DocType_ID");
				m_TotalLines 				= rs.getBigDecimal("LineNetAmt");
				m_Aliquot 					= rs.getBigDecimal("Aliquot");
				m_MinimalAmt 				= rs.getBigDecimal("MinimalAmt");
				m_Subtrahend 				= rs.getBigDecimal("Subtrahend");
				
				//	Add Document to Retention
				
				addDocument(m_C_BPartner_ID, m_C_Invoice_ID, m_CUST_RetentionType_ID, 
						m_C_Charge_ID, m_C_DocType_ID, m_TotalLines, 
						m_Aliquot, m_MinimalAmt, m_Subtrahend);
			}
			completeRetention();
			completeAlloc();
		}
		trx.commit();
		return "@Generated@ = " + m_Generated;
	}
	
	/**
	 * 
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 27/02/2013, 11:07:38
	 * @param p_C_BPartner_ID
	 * @param p_C_Invoice_ID
	 * @param p_CUST_RetentionType_ID
	 * @param p_C_Charge_ID
	 * @param p_C_DocType_ID
	 * @param p_TotalLines
	 * @param p_Aliquot
	 * @param p_MinimalAmt
	 * @param p_Subtrahend
	 * @return void
	 */
	private void addDocument(int p_C_BPartner_ID, int p_C_Invoice_ID, 
			int p_CUST_RetentionType_ID, int p_C_Charge_ID, 
			int p_C_DocType_ID, BigDecimal p_TotalLines, 
			BigDecimal p_Aliquot, BigDecimal p_MinimalAmt, BigDecimal p_Subtrahend){
		
		BigDecimal retentionAmt = Env.ZERO;
		
		if(p_TotalLines.compareTo(p_MinimalAmt) > 0){
			p_Aliquot = p_Aliquot.divide(Env.ONEHUNDRED);
			retentionAmt = p_TotalLines.multiply(p_Aliquot);
			retentionAmt = retentionAmt.subtract(p_Subtrahend);
			retentionAmt = (retentionAmt.compareTo(Env.ZERO) < 0? Env.ZERO: retentionAmt);
			
			if(m_Current_C_BPartner_ID != p_C_BPartner_ID){
				completeRetention();
				
				//
				m_Current_Retention = new MInvoice(getCtx(), 0, trxName);
				m_Current_Retention.setC_DocTypeTarget_ID(p_C_DocType_ID);
				m_Current_Retention.setIsSOTrx(false);
				m_Current_Retention.setC_BPartner_ID(p_C_BPartner_ID);
				m_Current_Retention.setDateInvoiced(p_DateDoc);
				m_Current_Retention.setDateAcct(p_DateDoc);
				m_Current_Retention.saveEx();
				//		
			}
			MInvoiceLine retLine = new MInvoiceLine(m_Current_Retention);
			retLine.set_ValueOfColumn("DocAffected_ID", p_C_Invoice_ID);
			retLine.setC_Charge_ID(p_C_Charge_ID);
			retLine.setQty(Env.ONE);
			retLine.setC_UOM_ID(N_UOM);
			retLine.setPrice(retentionAmt);
			retLine.setLineNetAmt(retentionAmt);
			retLine.setLineTotalAmt(retentionAmt);			
			retLine.saveEx();
			
			addAllocation(p_C_BPartner_ID, retLine);
			
			if(m_Current_C_BPartner_ID != p_C_BPartner_ID)
				completeAlloc();
			//	Set Current Business Partner
			m_Current_C_BPartner_ID = p_C_BPartner_ID;
		}
	}
	/**
	 * Complete Document
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 27/02/2013, 15:59:13
	 * @return void
	 */
	private void completeRetention(){
		if(m_Current_Retention != null){
			if(m_Current_Retention.getDocStatus().equals(DocumentEngine.STATUS_Drafted)){
				m_Current_Retention.setDocAction(DocumentEngine.ACTION_Complete);
				m_Current_Retention.processIt(DocumentEngine.ACTION_Complete);
				m_Current_Retention.saveEx();
				addLog (0, m_Current_Retention.getUpdated(), null, 
						m_Current_Retention.getDocumentNo() + 
						(m_Current_Retention.getProcessMsg() != null && m_Current_Retention.getProcessMsg().length() !=0
								? ": Error " + m_Current_Retention.getProcessMsg()
								:" --> " + Msg.translate(getCtx(), "OK")));
				m_Generated ++;
			}
		}
	}
	
	/**
	 * Create Allocation
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 27/02/2013, 17:25:59
	 * @param p_C_BPartner_ID
	 * @param p_RetentionLine
	 * @return void
	 */
	private void addAllocation(int p_C_BPartner_ID, MInvoiceLine p_RetentionLine){
		if(m_Current_C_BPartner_ID != p_C_BPartner_ID){
			m_Current_Alloc = new MAllocationHdr(Env.getCtx(), true,	//	manual
					p_DateDoc, m_Current_Retention.getC_Currency_ID(), Env.getContext(Env.getCtx(), "#AD_User_Name"), trxName);
			m_Current_Alloc.setAD_Org_ID(m_Current_Retention.getAD_Org_ID());
			m_Current_Alloc.saveEx();
		}
		
		MAllocationLine aLine = new MAllocationLine (m_Current_Alloc, p_RetentionLine.getLineNetAmt(), 
				Env.ZERO, Env.ZERO, Env.ZERO);
			aLine.setDocInfo(p_C_BPartner_ID, 0, p_RetentionLine.get_ValueAsInt("DocAffected_ID"));
			//aLine.setPaymentInfo(C_Payment_ID, C_CashLine_ID);
			aLine.saveEx();
		
	}
	
	private void completeAlloc(){
		if(m_Current_Alloc != null){
			if(m_Current_Alloc.getDocStatus().equals(DocumentEngine.STATUS_Drafted)){
				m_Current_Alloc.setDocAction(DocumentEngine.ACTION_Complete);
				m_Current_Alloc.processIt(DocumentEngine.ACTION_Complete);
				m_Current_Alloc.saveEx();
				addLog (0, m_Current_Retention.getUpdated(), null, 
						m_Current_Alloc.getDocumentNo() + 
						(m_Current_Alloc.getProcessMsg() != null && m_Current_Alloc.getProcessMsg().length() !=0
								? ": Error " + m_Current_Alloc.getProcessMsg()
								:" --> " + Msg.translate(getCtx(), "OK")));
				m_Generated ++;
			}
		}
	}
}
