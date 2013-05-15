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
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MAllocationHdr;
import org.compiere.model.MAllocationLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

/**
 * 
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class ProcessRetention_ISLR extends SvrProcess {

	/**	Logger							*/
	public static CLogger log = CLogger.getCLogger(ProcessRetention_ISLR.class);
	
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
	/**	Quantity Generated				*/
	private int 				m_Generated 			= 0;
	/**	Current Business Partner		*/
	private int 				m_Current_C_BPartner_ID = 0;
	/**	Current Multiplier Invoice Doc	*/
	private BigDecimal			m_Current_Mlp_Invoice	= Env.ZERO;
	/**	Current Multiplier Retention Doc*/
	private BigDecimal			m_Current_Mlp_Retention	= Env.ZERO;
	
	private final int 	N_UOM = 100;
	
	private Trx 		trx 		= null;

	
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
		
		trx = Trx.get(get_TrxName(), false);
		
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
		sql = new String("SELECT bp.C_BPartner_ID, rr.CUST_RetentionType_ID, cb.CUST_CR_PT_Combination_ID, " +
				"inv.C_Invoice_ID, rt.C_Charge_ID, rt.C_DocType_ID, " +
				"SUM(CASE WHEN linv.IsRetaint = 'Y' THEN linv.LineNetAmt ELSE 0 END) TotalLines, " +
				"cn.Aliquot, cn.MinimalAmt, cn.Subtrahend, " +
				"CASE WHEN charat(dt.DocBaseType, 3) = 'C' THEN -1 ELSE 1 END * " +
				"	CASE WHEN charat(dt.DocBaseType, 2) = 'P' THEN -1 ELSE 1 END multiplierInv, " +
				"CASE WHEN charat(dtr.DocBaseType, 3) = 'C' THEN -1 ELSE 1 END * " +
				"	CASE WHEN charat(dt.DocBaseType, 2) = 'P' THEN -1 ELSE 1 END multiplierRet " + 
				"FROM C_Invoice inv " + 
				"INNER JOIN C_InvoiceLine linv ON(linv.C_Invoice_ID = inv.C_Invoice_ID) " + 
				"INNER JOIN C_BPartner bp ON(bp.C_BPartner_ID = inv.C_BPartner_ID) " + 
				"INNER JOIN CUST_RetentionRelation rr ON(rr.C_BPartner_ID = bp.C_BPartner_ID) " +
				"INNER JOIN CUST_RetentionType rt ON(rt.CUST_RetentionType_ID = rr.CUST_RetentionType_ID) " + 
				"INNER JOIN CUST_RetentionConfig cn ON(cn.CUST_RetentionType_ID = rr.CUST_RetentionType_ID) " + 
				"INNER JOIN CUST_CR_PT_Combination cb ON(cb.CUST_RetentionConfig_ID = cn.CUST_RetentionConfig_ID) " +
				"INNER JOIN C_DocType dt ON(dt.C_DocType_ID = inv.C_DocType_ID) " +
				"INNER JOIN C_DocType dtr ON(dtr.C_DocType_ID = rt.C_DocType_ID) " + 
				"INNER JOIN (SELECT rrdt.C_DocType_ID, rrdt.CUST_RetentionType_ID FROM CUST_RetentionRelation rrdt) rrdt " +  
				"ON(rrdt.C_DocType_ID = inv.C_DocType_ID AND rrdt.CUST_RetentionType_ID = rr.CUST_RetentionType_ID) " + 
				"WHERE inv.CUST_ConceptRetention_ID = cb.CUST_ConceptRetention_ID " +
				"AND bp.CUST_PersonType_ID = cb.CUST_PersonType_ID " +
				//	Valid Exists other Retention
				"AND NOT EXISTS(SELECT 1 FROM C_Invoice ret " + 
				"		LEFT JOIN C_InvoiceLine retl ON(ret.C_Invoice_ID = retl.C_Invoice_ID) WHERE ret.DocStatus IN('CO', 'CL') "+ 
				"		AND ret.C_DocType_ID = rt.C_DocType_ID AND retl.DocAffected_ID = inv.C_Invoice_ID) " + 

				//	Sql Where
				m_parameterWhere.toString() + 
				//	Group By
				"GROUP BY bp.C_BPartner_ID, rr.CUST_RetentionType_ID, cb.CUST_CR_PT_Combination_ID, inv.C_Invoice_ID, rt.C_Charge_ID, rt.C_DocType_ID, " +
				"cn.Aliquot, cn.MinimalAmt, cn.Subtrahend, dt.DocBaseType, dtr.DocBaseType " +
				"HAVING (SUM(CASE WHEN linv.IsRetaint = 'Y' THEN linv.LineNetAmt ELSE 0 END) >= cn.MinimalAmt " +
				"AND SUM(CASE WHEN linv.IsRetaint = 'Y' THEN linv.LineNetAmt ELSE 0 END) > 0) " + 
				"ORDER BY bp.C_BPartner_ID, rr.CUST_RetentionType_ID, inv.C_Invoice_ID, rt.C_Charge_ID, rt.C_DocType_ID");
		
		log.fine("SQL=" + sql);
		
	}

	@Override
	protected String doIt() throws Exception {
		PreparedStatement pstmt = null;
		pstmt = DB.prepareStatement(sql, get_TrxName());
		ResultSet rs = pstmt.executeQuery();
		
		int m_C_BPartner_ID 			= 0;
		int m_CUST_RetentionType_ID 	= 0;
		int m_CUST_CR_PT_Combination_ID = 0;
		int m_C_Invoice_ID 				= 0;
		int m_C_Charge_ID 				= 0;
		int m_C_DocType_ID 				= 0;
		BigDecimal m_TotalLines 		= Env.ZERO;
		BigDecimal m_Aliquot 			= Env.ZERO;
		BigDecimal m_MinimalAmt 		= Env.ZERO;
		BigDecimal m_Subtrahend 		= Env.ZERO;
		
		
		if(rs != null){
			while(rs.next()){
				m_C_BPartner_ID 			= rs.getInt("C_BPartner_ID");
				m_CUST_RetentionType_ID 	= rs.getInt("CUST_RetentionType_ID");
				m_CUST_CR_PT_Combination_ID = rs.getInt("CUST_CR_PT_Combination_ID");
				m_C_Invoice_ID 				= rs.getInt("C_Invoice_ID");
				m_C_Charge_ID 				= rs.getInt("C_Charge_ID");
				m_C_DocType_ID 				= rs.getInt("C_DocType_ID");
				m_TotalLines 				= rs.getBigDecimal("TotalLines");
				m_Aliquot 					= rs.getBigDecimal("Aliquot");
				m_MinimalAmt 				= rs.getBigDecimal("MinimalAmt");
				m_Subtrahend 				= rs.getBigDecimal("Subtrahend");
				m_Current_Mlp_Invoice 		= rs.getBigDecimal("multiplierInv");
				m_Current_Mlp_Retention		= rs.getBigDecimal("multiplierRet");
				
				log.fine("m_C_BPartner_ID=" + m_C_BPartner_ID 
						+ " m_CUST_RetentionType_ID=" + m_CUST_RetentionType_ID 
						+ " m_CUST_CR_PT_Combination_ID=" + m_CUST_CR_PT_Combination_ID
						+ " m_C_Invoice_ID=" + m_C_Invoice_ID
						+ " m_C_Charge_ID=" + m_C_Charge_ID
						+ " m_C_DocType_ID=" + m_C_DocType_ID
						+ " m_TotalLines=" + m_TotalLines
						+ " m_Aliquot=" + m_Aliquot
						+ " m_MinimalAmt=" + m_MinimalAmt
						+ " m_Subtrahend=" + m_Subtrahend
						+ " m_Current_Mlp_Invoice=" + m_Current_Mlp_Invoice
						+ " m_Current_Mlp_Retention=" + m_Current_Mlp_Retention);
				
				//	Add Document to Retention
				
				addDocument(m_C_BPartner_ID, m_C_Invoice_ID, m_CUST_RetentionType_ID, m_CUST_CR_PT_Combination_ID, 
						m_C_Charge_ID, m_C_DocType_ID, m_TotalLines, 
						m_Aliquot, m_MinimalAmt, m_Subtrahend);
				
			}
			completeRetention();
			completeAlloc();
		}
		//	Close Connection
		DB.close(rs, pstmt);
		trx.commit();
		return String.valueOf(m_Generated);
	}
	
	/**
	 * Add Documents to Retention
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 27/02/2013, 11:07:38
	 * @param p_C_BPartner_ID
	 * @param p_C_Invoice_ID
	 * @param p_CUST_RetentionType_ID
	 * @param p_CUST_CR_PT_Combination_ID
	 * @param p_C_Charge_ID
	 * @param p_C_DocType_ID
	 * @param p_TotalLines
	 * @param p_Aliquot
	 * @param p_MinimalAmt
	 * @param p_Subtrahend
	 * @return void
	 */
	private void addDocument(int p_C_BPartner_ID, int p_C_Invoice_ID, 
			int p_CUST_RetentionType_ID, int p_CUST_CR_PT_Combination_ID, int p_C_Charge_ID, 
			int p_C_DocType_ID, BigDecimal p_TotalLines, 
			BigDecimal p_Aliquot, BigDecimal p_MinimalAmt, BigDecimal p_Subtrahend){
		
		BigDecimal retentionAmt = Env.ZERO;
		p_Aliquot = p_Aliquot.divide(Env.ONEHUNDRED);
		retentionAmt = p_TotalLines.multiply(p_Aliquot);
		retentionAmt = retentionAmt.subtract(p_Subtrahend);
		retentionAmt = (retentionAmt.compareTo(Env.ZERO) < 0? Env.ZERO: retentionAmt);
		log.fine("retentionAmt=" + retentionAmt);
		//	
		if(m_Current_C_BPartner_ID != p_C_BPartner_ID){
			completeRetention();
			completeAlloc();
			//
			m_Current_Retention = new MInvoice(getCtx(), 0, get_TrxName());
			m_Current_Retention.setC_DocTypeTarget_ID(p_C_DocType_ID);
			m_Current_Retention.setIsSOTrx(false);
			m_Current_Retention.setC_BPartner_ID(p_C_BPartner_ID);
			m_Current_Retention.setDateInvoiced(p_DateDoc);
			m_Current_Retention.setDateAcct(p_DateDoc);
			m_Current_Retention.saveEx();
			//	Get Document No
			int docNo = Integer.parseInt(m_Current_Retention.getDocumentNo());
			//	Format Date
			String format = "yyyyMM";
			SimpleDateFormat sdf = new SimpleDateFormat(format);
			String prefix = sdf.format(p_DateDoc.getTime());
			if(prefix == null)
				prefix = "";
			//	Set New Document No
			m_Current_Retention.setDocumentNo(prefix + String.format("%08d", docNo));
			m_Current_Retention.saveEx();
			//		
		}
		MInvoiceLine retLine = new MInvoiceLine(m_Current_Retention);
		retLine.set_ValueOfColumn("DocAffected_ID", p_C_Invoice_ID);
		retLine.set_ValueOfColumn("CUST_CR_PT_Combination_ID", p_CUST_CR_PT_Combination_ID);
		retLine.setC_Charge_ID(p_C_Charge_ID);
		retLine.setQty(Env.ONE);
		retLine.setC_UOM_ID(N_UOM);
		retLine.setPrice(retentionAmt);
		retLine.setLineNetAmt(retentionAmt);
		retLine.setLineTotalAmt(retentionAmt);			
		retLine.saveEx();
		//	Add Allocation
		addAllocation(p_C_BPartner_ID, p_C_Invoice_ID, retLine);
		
		//	Set Current Business Partner
		m_Current_C_BPartner_ID = p_C_BPartner_ID;
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
				addLog (m_Current_Retention.getC_Invoice_ID(), m_Current_Retention.getUpdated(), null, 
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
	 * @param p_C_Invoice_ID
	 * @param p_RetentionLine
	 * @return void
	 */
	private void addAllocation(int p_C_BPartner_ID, int p_C_Invoice_ID, MInvoiceLine p_RetentionLine){
		if(m_Current_C_BPartner_ID != p_C_BPartner_ID){
			m_Current_Alloc = new MAllocationHdr(Env.getCtx(), true,	//	manual
					p_DateDoc, m_Current_Retention.getC_Currency_ID(), Env.getContext(Env.getCtx(), "#AD_User_Name"), get_TrxName());
			m_Current_Alloc.setAD_Org_ID(m_Current_Retention.getAD_Org_ID());
			m_Current_Alloc.saveEx();
		}
		
		BigDecimal openAmt = Env.ZERO;
		try {
			CallableStatement cs = null;
			cs = DB.prepareCall("{call invoiceopen(?, 0, ?)}");
			cs.setInt(1, p_C_Invoice_ID);
			cs.registerOutParameter(2, java.sql.Types.NUMERIC);
			cs.execute();
			openAmt = cs.getBigDecimal(2);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		BigDecimal amt = p_RetentionLine.getLineNetAmt();
		BigDecimal newOpenAmt = openAmt.subtract(amt.multiply(m_Current_Mlp_Retention));
		log.fine("Current Invoice Allocation Amt=" + amt);
		log.fine("newOpenAmt=" + newOpenAmt);
		
		if(newOpenAmt.multiply(m_Current_Mlp_Retention).compareTo(Env.ZERO) < 0){
			MInvoice inv = new MInvoice(getCtx(), p_C_Invoice_ID, get_TrxName());
			throw new AdempiereException("@ExcededOpenInvoiceAmt@ @DocumentNo@=" + inv.getDocumentNo() 
					+ " @OpenAmt@=" + openAmt 
					+ " @AllocatedAmt@=" + amt 
					+ " @DifferenceAmt@=" + newOpenAmt);
		}
		
		//	
		MAllocationLine aLine = new MAllocationLine (m_Current_Alloc, amt.multiply(m_Current_Mlp_Invoice), 
				Env.ZERO, Env.ZERO, newOpenAmt.multiply(m_Current_Mlp_Invoice));
		aLine.setDocInfo(p_C_BPartner_ID, 0, p_C_Invoice_ID);
		aLine.saveEx();
		
		
		
	}
	
	/**
	 * Complete Allocation
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 01/03/2013, 10:22:47
	 * @return void
	 */
	private void completeAlloc(){
		if(m_Current_Alloc != null){
			log.fine("Amt Total Allocation=" + m_Current_Retention.getGrandTotal().multiply(m_Current_Mlp_Retention));
			//	
			MAllocationLine aLine = new MAllocationLine (m_Current_Alloc, m_Current_Retention.getGrandTotal().multiply(m_Current_Mlp_Retention), 
					Env.ZERO, Env.ZERO, Env.ZERO);
			aLine.setDocInfo(p_C_BPartner_ID, 0, m_Current_Retention.getC_Invoice_ID());
			aLine.saveEx();
			//	
			if(m_Current_Alloc.getDocStatus().equals(DocumentEngine.STATUS_Drafted)){
				log.fine("Current Allocation = " + m_Current_Alloc.getDocumentNo());
				//	
				m_Current_Alloc.setDocAction(DocumentEngine.ACTION_Complete);
				m_Current_Alloc.processIt(DocumentEngine.ACTION_Complete);
				m_Current_Alloc.saveEx();			
			}
		}
	}
}
