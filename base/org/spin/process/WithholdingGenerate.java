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

import java.math.BigDecimal;
import java.sql.CallableStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MAllocationHdr;
import org.compiere.model.MAllocationLine;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MRule;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.model.Scriptlet;
import org.compiere.model.X_AD_ReportView;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Trx;
import org.spin.model.MLVEWHCombination;
import org.spin.model.MLVEWHConcept;
import org.spin.model.MLVEWHConfig;
import org.spin.model.MLVEWithholding;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *	<br><b> Mandatory Columns inside Table from Withholding</b>
 * 	<li>Business Partner<b><q>C_BPartner_ID</b>
 * 	<li>Invoice <b><q>C_Invoice_ID</b>
 * 	<li>Withholding Configuration <b><q>LVE_WH_Config_ID</b>
 * 	<li>Withholding <b><q>LVE_Withholding_ID</b>
 * 	<li>Date Account <b><q>DateAcct</b>
 * <br><b> Context Prefix</b>
 * 	<li>Object from PO<b><q>O_</b>
 * 	<li>Columns From ResultSet<b><q>R_</b>
 * 	<li>Another<b><q>A_</b>
 */
public class WithholdingGenerate extends SvrProcess {
	
	/**	Logger							*/
	public static CLogger log = CLogger.getCLogger(WithholdingGenerate.class);
	
	/**	Invoice							*/
	private int				p_C_Invoice_ID			=	0;
	/**	Business Partner				*/
	private int				p_C_BPartner_ID			=	0;
	/**	Accounting	Date				*/
	private Timestamp		p_DateAcct				=	null;
	/**	Accounting	Date				*/
	private Timestamp		p_DateAcct_To			=	null;
	/**	Document	Date				*/
	private Timestamp		p_DateDoc				=	null;
	/**	Withholding Type				*/
	private int				p_LVE_WH_Type_ID		= 0;
	/**	Withholding						*/
	private int				p_LVE_Withholding_ID	= 0;
	/**	Generated						*/
	private int 			m_Created 				= 0;
	/**	Rule Engine						*/
	private int 			m_AD_Rule_ID			= 0;
	/**	Current Withholding					*/
	private MInvoice 			m_Current_Withholding 	= null;
	/**	Current Allocation					*/
	private MAllocationHdr 		m_Current_Alloc			= null;
	/**	Current Business Partner			*/
	private int 				m_Current_C_BPartner_ID 	= 0;
	/**	Current Multiplier Invoice Doc		*/
	private BigDecimal			invoice_Mlp		= Env.ZERO;
	/**	Current Multiplier Withholding Doc	*/
	private BigDecimal			withholding_Mlp	= Env.ZERO;
	/**	Current Withholding					*/
	private MLVEWithholding 	m_Currrent_Withholding		= null;
	private final int 			N_UOM 	= 100;
	
	private StringBuffer 	whereParam 				= new StringBuffer();
	/**	Parameters						*/
	private List<Object>	parameters				= null;
	
	Trx 					trx 					= null;

	//	Dixon Martinez 08-11-2013
	//	Carlos Parada 08-11-2013
	//	Add Organization 
	/**	Organization 					*/
	private int p_AD_Org_ID 						= 0;
	
	/** the context for rules */
	HashMap<String, Object> m_scriptCtx = new HashMap<String, Object>();


	private static StringBuffer s_scriptImport = new StringBuffer(	 " import org.spin.model.*;" 
			+" import org.compiere.model.*;"
			+" import org.adempiere.model.*;"
			+" import org.compiere.util.*;"
			+" import java.math.*;"
			+" import java.sql.*;");

	
	@Override
	protected void prepare() {
		ProcessInfoParameter[] params = getParameter();
		for (int i = 0; i < params.length; i++){
			ProcessInfoParameter para = params[i];
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
			else if(name.equals("LVE_WH_Type_ID"))
				p_LVE_WH_Type_ID = para.getParameterAsInt();
			//	Dixon Martinez 08-11-2013
			//	Carlos Parada 08-11-2013
			//	Add Organization 
			else if(name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			
			else if (name.equals("LVE_Withholding_ID"))
				p_LVE_Withholding_ID = para.getParameterAsInt();
		}
		//	Instance
		parameters = new ArrayList<Object>();
		
		if(p_C_Invoice_ID != 0){
			whereParam.append("C_Invoice_ID=? ");
			parameters.add(p_C_Invoice_ID);
		}
		if(p_C_BPartner_ID != 0){
			whereParam.append((whereParam.length()!=0?"AND":"")+" C_BPartner_ID=? ");
			parameters.add(p_C_BPartner_ID);
		}
		if(p_DateAcct != null) {
			whereParam.append((whereParam.length()!=0?"AND":"")+" DateAcct>=? ");
			parameters.add(p_DateAcct);
		}
		if(p_DateAcct_To != null){
			whereParam.append((whereParam.length()!=0?"AND":"")+" DateAcct<=? ");
			parameters.add(p_DateAcct_To);
		}
		
		//	Transaction
		trx = Trx.get(get_TrxName(), false);
	}

	@Override
	protected String doIt() throws Exception {
		//	Info
		log.fine("WithholdingGenerate" +
				"\nTrxName=" + trx.getTrxName() + 
				"\nAD_PInstance_ID=" + getAD_PInstance_ID() + 
				"\nC_Invoice_ID=" + p_C_Invoice_ID + 
				"\nC_BPartner_ID=" + p_C_BPartner_ID + 
				"\nDateAcct=" + p_DateAcct + 
				"\nDateAcct_To=" + p_DateAcct_To + 
				"\nDateDoc=" + p_DateDoc + 
				"\nLVE_WH_Type_ID=" + p_LVE_WH_Type_ID + 
				"\nLVE_Withholding_ID=" + p_LVE_Withholding_ID);
		
		List<MLVEWithholding> m_WithholdingList = MLVEWithholding
				.get(getCtx(), p_LVE_WH_Type_ID, p_LVE_Withholding_ID, get_TrxName());
		//	Read Withholding
		for (MLVEWithholding m_Withholding: m_WithholdingList) {
			m_Currrent_Withholding = m_Withholding;
			
			//	Set m_Current_C_BPartner_ID to 0
			m_Current_C_BPartner_ID = 0;
			//	Show Withholding Name
			addLog(m_Withholding.getName());
			
			MDocType docType = (MDocType) m_Withholding.getWithholdingDocType();
			String docBaseType = docType.getDocBaseType();
			//	Create Multiplier
			withholding_Mlp = (docBaseType.substring(2).equals("C")? Env.ONE.negate(): Env.ONE)
					.multiply((docBaseType.substring(1,2).equals("P")? Env.ONE.negate(): Env.ONE));
			//	Rule Engine
			m_AD_Rule_ID = m_Withholding.getAD_Rule_ID();
			//	Add Withholding Restriction
			String where = "LVE_Withholding_ID=" + m_Withholding.getLVE_Withholding_ID();
			//	Add Report View Restriction
			X_AD_ReportView  m_ReportView = (X_AD_ReportView) m_Withholding.getAD_ReportView();
			//	
			if(m_ReportView != null
					&& m_ReportView.getWhereClause() != null
					&& m_ReportView.getWhereClause().length() != 0) {
				where += " " + m_ReportView.getWhereClause();
			}			
			//	
			List<PO> documents = new Query(getCtx(), m_Withholding.getAD_Table().getTableName(), 
					(whereParam != null && whereParam.length() != 0? whereParam.toString() + " AND ": "") 
					+ where, get_TrxName())
				.setParameters(parameters)
				.setOrderBy("LVE_Withholding_ID")
				.list();
			//	Process Invoice
			for (PO document : documents){
				processDocument(document);
			}
			//	Complete Documents
			completeWithholding();
			completeAlloc();
		}		
		return "@Created@ = " + m_Created;
	}

	/**
	 * Process Document and Generate Withholding
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 17/08/2013, 13:57:07
	 * @param p_Document
	 * @return void
	 */
	private void processDocument(PO p_Document){
		int m_Concept_AD_Rule_ID = p_Document.get_ValueAsInt("AD_Rule_ID");
		if(m_Concept_AD_Rule_ID == 0)
			m_Concept_AD_Rule_ID = m_AD_Rule_ID;
		//	Clear Context
		m_scriptCtx.clear();
		m_scriptCtx.put("A_ZERO", Env.ZERO);
		m_scriptCtx.put("A_ONEHUNDRED", Env.ONEHUNDRED);
		
		//	Add Values to Context
		for(int i = 0; i < p_Document.get_ColumnCount(); i++){
			m_scriptCtx.put("R_" + p_Document.get_ColumnName(i), p_Document.get_Value(i));
		}
		
		int m_LVE_WH_Config_ID 				= p_Document.get_ValueAsInt("LVE_WH_Config_ID");
		//	Get Models	
		MLVEWHConfig wh_Config 				= new MLVEWHConfig(getCtx(), m_LVE_WH_Config_ID, get_TrxName());
		MLVEWHCombination wh_Combination 	= (MLVEWHCombination) wh_Config.getLVE_WH_Combination();
		MLVEWHConcept wh_Concept 			= (MLVEWHConcept) wh_Combination.getLVE_WH_Concept();
		
		m_scriptCtx.put("O_LVE_Withholding", m_Currrent_Withholding);
		m_scriptCtx.put("O_LVE_WH_Concept", wh_Concept);
		m_scriptCtx.put("O_LVE_WH_Combination", wh_Combination);
		m_scriptCtx.put("O_LVE_WH_Config", wh_Config);
		
		//	Execute Rule Script
		BigDecimal withholdingAmt = executeScript(m_Concept_AD_Rule_ID);
		//	Add Document
		addDocument(p_Document, withholdingAmt);
	}
	
	/**
	 * Excetute the Rule Script from AD_Rule
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 17/08/2013, 11:14:44
	 * @param AD_Rule_ID
	 * @return
	 * @return BigDecimal
	 */
	private BigDecimal executeScript(int AD_Rule_ID) {
		MRule rule = MRule.get(getCtx(), AD_Rule_ID);
		BigDecimal result = null;
		try
		{
			String text = "";
			if (rule.getScript() != null)
			{
				text = rule.getScript().trim();
			}
			String resultType = "BigDecimal";
			final String script =
				s_scriptImport.toString()
				+" " + resultType + " result = new BigDecimal(0.0);"
				+" String description = null;"
				+ text;
			Scriptlet engine = new Scriptlet (Scriptlet.VARIABLE, script, m_scriptCtx);	
			Exception ex = engine.execute();
			if (ex != null)
			{
				throw ex;
			}
			result = (BigDecimal) engine.getResult(false);
		}
		catch (Exception e)
		{
			throw new AdempiereException("Execution error - @AD_Rule_ID@="+rule.getValue());
		}
		return result;
	}
	
	/**
	 * Add Document to Withholding
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 17/08/2013, 15:38:58
	 * @param p_Document
	 * @param withholdingAmt
	 * @return void
	 */
	private void addDocument(PO p_Document, BigDecimal withholdingAmt){
		int m_C_BPartner_ID 	= p_Document.get_ValueAsInt("C_BPartner_ID");
		int m_C_Invoice_ID 		= p_Document.get_ValueAsInt("C_Invoice_ID");
		int m_LVE_WH_Config_ID 	= p_Document.get_ValueAsInt("LVE_WH_Config_ID");
		
		MInvoice invoice 		= new MInvoice(getCtx(), m_C_Invoice_ID, get_TrxName());
		MDocType docType 		= (MDocType) invoice.getC_DocType();
		String docBaseType 		= docType.getDocBaseType();
		
		//	Invoice Multiplier
		invoice_Mlp = (docBaseType.substring(2).equals("C")? Env.ONE.negate(): Env.ONE)
				.multiply((docBaseType.substring(1,2).equals("P")? Env.ONE.negate(): Env.ONE));
		
		log.fine("withholdingAmt=" + withholdingAmt);
		//	
		if(m_Current_C_BPartner_ID != m_C_BPartner_ID){
			completeWithholding();
			completeAlloc();
			//
			m_Current_Withholding = new MInvoice(getCtx(), 0, get_TrxName());
			//	Dixon Martinez 08-11-2013
			//	Carlos Parada 08-11-2013
			//	Add Organization 
			m_Current_Withholding.setAD_Org_ID(p_AD_Org_ID);
			m_Current_Withholding.setC_DocTypeTarget_ID(m_Currrent_Withholding.getWithholdingDocType_ID());
			m_Current_Withholding.setIsSOTrx(false);
			m_Current_Withholding.setC_BPartner_ID(m_C_BPartner_ID);
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
			m_Current_Withholding.setDocumentNo(prefix + String.format("%1$" + 8 + "s", docNo).replace(" ", "0"));
			m_Current_Withholding.saveEx();
			//		
		}
		MInvoiceLine retLine = new MInvoiceLine(m_Current_Withholding);
		retLine.set_ValueOfColumn("DocAffected_ID", m_C_Invoice_ID);
		retLine.set_ValueOfColumn("LVE_WH_Config_ID", m_LVE_WH_Config_ID);
		retLine.setC_Charge_ID(m_Currrent_Withholding.getC_Charge_ID());
		retLine.setQty(Env.ONE);
		retLine.setC_UOM_ID(N_UOM);
		retLine.setPrice(withholdingAmt);
		retLine.setLineNetAmt(withholdingAmt);
		retLine.setLineTotalAmt(withholdingAmt);			
		retLine.saveEx();
		//	Add Allocation
		addAllocation(m_C_BPartner_ID, m_C_Invoice_ID, retLine);
		
		//	Set Current Business Partner
		m_Current_C_BPartner_ID = m_C_BPartner_ID;
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
					p_DateDoc, m_Current_Withholding.getC_Currency_ID(), Env.getContext(Env.getCtx(), "#AD_User_Name"), get_TrxName());
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
		
		BigDecimal amt = p_RetentionLine.getLineNetAmt();
		BigDecimal newOpenAmt = openAmt.subtract(amt.multiply(withholding_Mlp));
		log.fine("Current Invoice Allocation Amt=" + amt);
		log.fine("newOpenAmt=" + newOpenAmt);
		
		if(newOpenAmt.multiply(withholding_Mlp).compareTo(Env.ZERO) < 0){
			MInvoice inv = new MInvoice(getCtx(), p_C_Invoice_ID, get_TrxName());
			addLog(m_Current_Withholding.getC_Invoice_ID(), m_Current_Withholding.getDateAcct(), null,
					m_Current_Withholding.getDocumentNo() + 
					": Error @ExcededOpenInvoiceAmt@" 
					+ " @C_Invoice_ID@=" 
					+ inv.getDocumentNo() 
					+ " @OpenAmt@=" + openAmt 
					+ " @AllocatedAmt@=" + amt 
					+ " @DifferenceAmt@=" + newOpenAmt);
			return;
		}
		
		//	
		MAllocationLine aLine = new MAllocationLine (m_Current_Alloc, amt.multiply(invoice_Mlp), 
				Env.ZERO, Env.ZERO, newOpenAmt.multiply(invoice_Mlp));
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
			if(m_Current_Alloc.getDocStatus().equals(DocumentEngine.STATUS_Drafted)){
				log.fine("Amt Total Allocation=" + m_Current_Withholding.getGrandTotal().multiply(withholding_Mlp));
				//	
				MAllocationLine aLine = new MAllocationLine (m_Current_Alloc, m_Current_Withholding.getGrandTotal().multiply(withholding_Mlp), 
						Env.ZERO, Env.ZERO, Env.ZERO);
				aLine.setDocInfo(m_Current_C_BPartner_ID, 0, m_Current_Withholding.getC_Invoice_ID());
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
				addLog(m_Current_Withholding.getC_Invoice_ID(), m_Current_Withholding.getDateAcct(), null,
						m_Current_Withholding.getDocumentNo() + 
						(m_Current_Withholding.getProcessMsg() != null && m_Current_Withholding.getProcessMsg().length() !=0
								? ": Error " + m_Current_Withholding.getProcessMsg()
								:" --> @OK@"));
				m_Created ++;
			}
		}
	}
	
}
