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
package org.spin.util;

import java.math.BigDecimal;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MAllocationHdr;
import org.compiere.model.MAllocationLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.process.DocumentEngine;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class WithholdingGenerateIVA implements I_WithholdingGenerate {

	/**	Invoice							*/
	private int			p_C_Invoice_ID			=	0;
	/**	Business Partner				*/
	private int			p_C_BPartner_ID			=	0;
	/**	Withholding Type					*/
	private int			p_LVE_Withholding_ID	=	0;
	/**	Accounting	Date				*/
	private Timestamp	p_DateAcct				=	null;
	/**	Accounting	Date				*/
	private Timestamp	p_DateAcct_To			=	null;
	/**	Document	Date				*/
	private Timestamp	p_DateDoc				=	null;
	
	private String				sql 					= new String();
	/**	Where Clause					*/
	private StringBuffer		m_parameterWhere		= new StringBuffer();
	
	/**	Current Withholding				*/
	private MInvoice 			m_Current_Withholding 	= null;
	/**	Current Allocation				*/
	private MAllocationHdr 		m_Current_Alloc			= null;
	/**	Quantity Generated				*/
	private int 				m_Generated 			= 0;
	/**	Current Business Partner		*/
	private int 				m_Current_C_BPartner_ID 	= 0;
	/**	Current Multiplier Invoice Doc	*/
	private BigDecimal			m_Current_Mlp_Invoice		= Env.ZERO;
	/**	Current Multiplier Withholding Doc*/
	private BigDecimal			m_Current_Mlp_Withholding	= Env.ZERO;
	/**	Out								*/
	private StringBuffer 	out 	= null;
	/**	Log								*/
	private CLogger			log		= null;
	
	private final int 		N_UOM 	= 100;
	
	private Properties ctx;
	private String trxName;

	
	/* (non-Javadoc)
	 * @see org.spin.util.I_WithholdingGenerate#generate(java.util.Properties, java.lang.String, int, int, int, java.sql.Timestamp, java.sql.Timestamp, java.sql.Timestamp, int, java.lang.StringBuffer)
	 */
	@Override
	public int generate(Properties ctx, String trxName, int p_ADPinstance,
			int p_C_Invoice_ID, int p_C_BPartner_ID, Timestamp p_DateAcct,
			Timestamp p_DateAcct_To, Timestamp p_DateDoc,
			int p_LVE_Withholding_ID, CLogger log, StringBuffer out) throws Exception {
			
		this.ctx = ctx;
		this.trxName = trxName;
		this.p_C_Invoice_ID = p_C_Invoice_ID;
		this.p_C_BPartner_ID = p_C_BPartner_ID;
		this.p_DateAcct = p_DateAcct;
		this.p_DateAcct_To = p_DateAcct_To;
		this.p_DateDoc = p_DateDoc;
		this.p_LVE_Withholding_ID = p_LVE_Withholding_ID;
		this.log = log;
		this.out = out;
		//	
		loadQuery();
		createWithholding();
		return m_Generated;
	}
	
	/**
	 * Load Query for get Documents to process
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 10/08/2013, 11:54:04
	 * @return void
	 */
	private void loadQuery() {
		
		if(p_C_Invoice_ID != 0)
			m_parameterWhere.append("AND inv.C_Invoice_ID = " + p_C_Invoice_ID + " ");
		if(p_C_BPartner_ID != 0)
			m_parameterWhere.append("AND inv.C_BPartner_ID = " + p_C_BPartner_ID + " ");
		if(p_DateAcct != null)
			m_parameterWhere.append("AND inv.DateAcct >= " + DB.TO_DATE(p_DateAcct) + " ");
		if(p_DateAcct_To != null)
			m_parameterWhere.append("AND inv.DateAcct <= " + DB.TO_DATE(p_DateAcct_To) + " ");
		if(p_LVE_Withholding_ID != 0)
			m_parameterWhere.append("AND rr.LVE_Withholding_ID = " + p_LVE_Withholding_ID + " ");
		
		
		//	
		sql = new String("SELECT bp.C_BPartner_ID, rr.LVE_Withholding_ID, cb.LVE_WH_Combination_ID, " +
				"cn.LVE_WH_Config_ID, inv.C_Invoice_ID, cb.Aliquot, rt.C_Charge_ID, rt.WithholdingDocType_ID, " +
				"SUM(itax.TaxAmt) TaxAmt, " +
				"CASE WHEN charat(dt.DocBaseType, 3) = 'C' THEN -1 ELSE 1 END * " +
				"	CASE WHEN charat(dt.DocBaseType, 2) = 'P' THEN -1 ELSE 1 END multiplierInv, " +
				"CASE WHEN charat(dtR.DocBaseType, 3) = 'C' THEN -1 ELSE 1 END * " +
				"	CASE WHEN charat(dt.DocBaseType, 2) = 'P' THEN -1 ELSE 1 END multiplierRet " +
				"FROM C_Invoice inv " +
				"INNER JOIN C_InvoiceTax itax ON(itax.C_Invoice_ID = inv.C_Invoice_ID) " +
				"INNER JOIN C_BPartner bp ON(bp.C_BPartner_ID = inv.C_BPartner_ID) " +
				"INNER JOIN LVE_WH_Relation rr ON(rr.C_BPartner_ID = bp.C_BPartner_ID) " +
				"INNER JOIN LVE_Withholding rt ON(rt.LVE_Withholding_ID = rr.LVE_Withholding_ID) " +
				"INNER JOIN LVE_WH_ConceptGroup cg ON(cg.LVE_WH_ConceptGroup_ID = rt.LVE_WH_ConceptGroup_ID) " +
				"INNER JOIN LVE_WH_Concept whc ON(whc.LVE_WH_ConceptGroup_ID = cg.LVE_WH_ConceptGroup_ID) " +
				"INNER JOIN LVE_WH_Combination cb ON(cb.LVE_WH_Concept_ID = whc.LVE_WH_Concept_ID) " +
				"INNER JOIN LVE_WH_Config cn ON(cn.LVE_WH_Combination_ID = cb.LVE_WH_Combination_ID AND cn.LVE_Withholding_ID = rt.LVE_Withholding_ID)  " +
				"INNER JOIN C_DocType dt ON(dt.C_DocType_ID = inv.C_DocType_ID) " +
				"INNER JOIN C_DocType dtr ON(dtr.C_DocType_ID = rt.WithholdingDocType_ID) " +
				"INNER JOIN (SELECT rrdt.C_DocType_ID, rrdt.LVE_Withholding_ID " +
				"			FROM LVE_WH_Relation rrdt) rrdt ON(rrdt.C_DocType_ID = inv.C_DocType_ID " +
				"	AND rrdt.LVE_Withholding_ID = rr.LVE_Withholding_ID) " +
				"WHERE inv.DocStatus IN('CO') " +
				"AND NOT EXISTS(SELECT 1 " +
				"		FROM C_Invoice ret " +
				"		LEFT JOIN C_InvoiceLine retl ON(ret.C_Invoice_ID = retl.C_Invoice_ID) " +
				"		WHERE ret.DocStatus IN('CO', 'CL') " +
				"		AND ret.C_DocType_ID = rt.WithholdingDocType_ID " +
				"		AND retl.DocAffected_ID = inv.C_Invoice_ID) " +
				//	Sql Where
				m_parameterWhere.toString() + 

				"GROUP BY bp.C_BPartner_ID, rr.LVE_Withholding_ID, cb.LVE_WH_Combination_ID, cn.LVE_WH_Config_ID, " +
				"inv.C_Invoice_ID, cb.Aliquot, rt.C_Charge_ID, rt.WithholdingDocType_ID, dt.DocBaseType, dtr.DocBaseType " +
				//	Having
				"HAVING (SUM(itax.TaxAmt) > 0) " +
				//	Order By
				"ORDER BY bp.C_BPartner_ID, rr.LVE_Withholding_ID, inv.C_Invoice_ID, rt.C_Charge_ID, rt.WithholdingDocType_ID");
		//	Log
		log.fine("SQL=" + sql);
	}
	
	/**
	 * Create the Withholding and allocation
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 10/08/2013, 11:53:41
	 * @return
	 * @throws Exception
	 * @return String
	 */
	private String createWithholding() throws Exception {
		PreparedStatement pstmt = null;
		pstmt = DB.prepareStatement(sql, trxName);
		ResultSet rs = pstmt.executeQuery();
		
		int m_C_BPartner_ID 			= 0;
		int m_LVE_Withholding_ID 		= 0;
		int m_LVE_WH_Combination_ID 	= 0;
		int m_LVE_WH_Config_ID			= 0;
		int m_C_Invoice_ID 				= 0;
		int m_C_Charge_ID 				= 0;
		int m_WithholdingDocType_ID 	= 0;
		BigDecimal m_TaxAmt 			= Env.ZERO;
		BigDecimal m_Aliquot 			= Env.ZERO;
		
		if(rs != null){
			while(rs.next()){
				m_C_BPartner_ID 			= rs.getInt("C_BPartner_ID");
				m_LVE_Withholding_ID 		= rs.getInt("LVE_Withholding_ID");
				m_LVE_WH_Combination_ID 	= rs.getInt("LVE_WH_Combination_ID");
				m_LVE_WH_Config_ID 			= rs.getInt("LVE_WH_Config_ID");
				m_C_Invoice_ID 				= rs.getInt("C_Invoice_ID");
				m_C_Charge_ID 				= rs.getInt("C_Charge_ID");
				m_WithholdingDocType_ID 	= rs.getInt("WithholdingDocType_ID");
				m_TaxAmt 					= rs.getBigDecimal("TaxAmt");
				m_Aliquot 					= rs.getBigDecimal("Aliquot");
				m_Current_Mlp_Invoice 		= rs.getBigDecimal("multiplierInv");
				m_Current_Mlp_Withholding		= rs.getBigDecimal("multiplierRet");
				
				log.fine("C_BPartner_ID=" + m_C_BPartner_ID 
						+ "\nLVE_Withholding_ID=" + m_LVE_Withholding_ID 
						+ "\nLVE_WH_Combination_ID=" + m_LVE_WH_Combination_ID
						+ "\nLVE_WH_Config_ID=" + m_LVE_WH_Config_ID
						+ "\nC_Invoice_ID=" + m_C_Invoice_ID
						+ "\nC_Charge_ID=" + m_C_Charge_ID
						+ "\nC_DocType_ID=" + m_WithholdingDocType_ID
						+ "\nAliquot=" + m_Aliquot
						+ "\nCurrent_Mlp_Invoice=" + m_Current_Mlp_Invoice
						+ "\nCurrent_Mlp_Withholding=" + m_Current_Mlp_Withholding);
				
				//	Add Document to Withholding
				addDocument(m_C_BPartner_ID, m_C_Invoice_ID, m_LVE_Withholding_ID, m_LVE_WH_Config_ID,
						m_C_Charge_ID, m_WithholdingDocType_ID, m_TaxAmt, 
						m_Aliquot);
				
			}
			completeWithholding();
			completeAlloc();
		}
		//	Close Connection
		DB.close(rs, pstmt);
		return "@Generated@ = " + m_Generated;
	}
	
	/**
	 * Add Documents to Withholding
	 * <li> WithholdingAmt = TaxAmt*Aliquot
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 03/03/2013, 00:33:58
	 * @param p_C_BPartner_ID
	 * @param p_C_Invoice_ID
	 * @param p_LVE_Withholding_ID
	 * @param p_LVE_WH_Config_ID
	 * @param p_C_Charge_ID
	 * @param p_C_DocType_ID
	 * @param p_TaxAmt
	 * @param p_Aliquot
	 * @return void
	 */
	private void addDocument(int p_C_BPartner_ID, int p_C_Invoice_ID, 
			int p_LVE_Withholding_ID, int p_LVE_WH_Config_ID, int p_C_Charge_ID, 
			int p_C_DocType_ID, BigDecimal p_TaxAmt, 
			BigDecimal p_Aliquot){
		
		BigDecimal WithholdingAmt = Env.ZERO;
		p_Aliquot = p_Aliquot.divide(Env.ONEHUNDRED);
		WithholdingAmt = p_TaxAmt.multiply(p_Aliquot);
		WithholdingAmt = (WithholdingAmt.compareTo(Env.ZERO) < 0? Env.ZERO: WithholdingAmt);
		
		log.fine("p_Aliquot=" + p_Aliquot + " p_TaxAmt=" + p_TaxAmt + " WithholdingAmt=" + WithholdingAmt);
		
		if(m_Current_C_BPartner_ID != p_C_BPartner_ID){
			completeWithholding();
			completeAlloc();
			//
			m_Current_Withholding = new MInvoice(ctx, 0, trxName);
			m_Current_Withholding.setC_DocTypeTarget_ID(p_C_DocType_ID);
			m_Current_Withholding.setIsSOTrx(false);
			m_Current_Withholding.setC_BPartner_ID(p_C_BPartner_ID);
			m_Current_Withholding.setDateInvoiced(p_DateDoc);
			m_Current_Withholding.setDateAcct(p_DateDoc);
			m_Current_Withholding.saveEx();
			//	Get Document No
			int docNo = Integer.parseInt(m_Current_Withholding.getDocumentNo());
			//	Format Date
			String format = "yyyyMM";
			SimpleDateFormat sdf = new SimpleDateFormat(format);
			String prefix = sdf.format(p_DateDoc.getTime());
			if(prefix == null)
				prefix = "";
			//	Set New Document No
			m_Current_Withholding.setDocumentNo(prefix + String.format("%1$-" + 8 + "s", docNo).replace(" ", "0"));
			m_Current_Withholding.saveEx();
			//		
		}
		MInvoiceLine retLine = new MInvoiceLine(m_Current_Withholding);
		retLine.set_ValueOfColumn("DocAffected", p_C_Invoice_ID);
		retLine.set_ValueOfColumn("LVE_WH_Config_ID", p_LVE_WH_Config_ID);
		retLine.setC_Charge_ID(p_C_Charge_ID);
		retLine.setQty(Env.ONE);
		retLine.setC_UOM_ID(N_UOM);
		retLine.setPrice(WithholdingAmt);
		retLine.setLineNetAmt(WithholdingAmt);
		retLine.setLineTotalAmt(WithholdingAmt);			
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
	private void completeWithholding(){
		if(m_Current_Withholding != null){
			if(m_Current_Withholding.getDocStatus().equals(DocumentEngine.STATUS_Drafted)){
				m_Current_Withholding.setDocAction(DocumentEngine.ACTION_Complete);
				m_Current_Withholding.processIt(DocumentEngine.ACTION_Complete);
				m_Current_Withholding.saveEx();
				out.append(/*m_Current_Withholding.getC_Invoice_ID(), m_Current_Withholding.getUpdated(), null,*/ 
						m_Current_Withholding.getDocumentNo() + 
						(m_Current_Withholding.getProcessMsg() != null && m_Current_Withholding.getProcessMsg().length() !=0
								? ": Error " + m_Current_Withholding.getProcessMsg()
								:" --> " + Msg.translate(ctx, "OK")));
				m_Generated ++;
			}
		}
	}
	
	/**
	 * Create Allocation
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 27/02/2013, 17:25:59
	 * @param p_C_BPartner_ID
	 * @param p_C_Invoice_ID
	 * @param p_WithholdingLine
	 * @return void
	 */
	private void addAllocation(int p_C_BPartner_ID, int p_C_Invoice_ID, MInvoiceLine p_WithholdingLine){
		if(m_Current_C_BPartner_ID != p_C_BPartner_ID){
			m_Current_Alloc = new MAllocationHdr(Env.getCtx(), true,	//	manual
					p_DateDoc, m_Current_Withholding.getC_Currency_ID(), Env.getContext(Env.getCtx(), "#AD_User_Name"), trxName);
			m_Current_Alloc.setAD_Org_ID(m_Current_Withholding.getAD_Org_ID());
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
		
		BigDecimal amt = p_WithholdingLine.getLineNetAmt();
		BigDecimal newOpenAmt = openAmt.subtract(amt.multiply(m_Current_Mlp_Withholding));
		log.fine("Current Invoice Allocation Amt=" + amt);
		log.fine("newOpenAmt=" + newOpenAmt);
		
		if(newOpenAmt.multiply(m_Current_Mlp_Withholding).compareTo(Env.ZERO) < 0){
			MInvoice inv = new MInvoice(ctx, p_C_Invoice_ID, trxName);
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
			log.fine("Amt Total Allocation=" + m_Current_Withholding.getGrandTotal().multiply(m_Current_Mlp_Withholding));
			//	
			MAllocationLine aLine = new MAllocationLine (m_Current_Alloc, m_Current_Withholding.getGrandTotal().multiply(m_Current_Mlp_Withholding), 
					Env.ZERO, Env.ZERO, Env.ZERO);
			aLine.setDocInfo(p_C_BPartner_ID, 0, m_Current_Withholding.getC_Invoice_ID());
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
