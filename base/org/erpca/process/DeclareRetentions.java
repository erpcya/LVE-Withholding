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
 * Contributor(s): Carlos Parada www.erpconsultoresyasociados.com                    *
 *************************************************************************************/

package org.erpca.process;	
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

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
 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a>
 *
 */
public class DeclareRetentions extends SvrProcess{

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		ProcessInfoParameter[] params = getParameter();
		for (int i = 0; i < params.length; i++){
			ProcessInfoParameter para = params[i];
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = para.getParameterAsInt();
			else if (name.equals("DateInvoiced"))
				p_DateInvoiced = (Timestamp)para.getParameter();
			else if(name.equals("DocStatus"))
				p_DocStatus = para.getParameter().toString();
		}
		/**
		 * SQL for Load Data From Browse Declare Retentions
		 */
		
		sql = "Select Distinct TS.T_Selection_ID,CRT.C_DocTypeTarget_ID,CRT.CUST_RetentionType_ID,CRT.C_Charge_ID,CI.GrandTotal \n " +  
				"From T_Selection TS \n " +  
				"Inner Join C_Invoice CI On CI.C_Invoice_ID= TS.T_Selection_ID  \n " + 
				"Inner Join C_DocType CDT On CDT.C_DocType_ID = CI.C_DocType_ID \n " + 
				"Inner Join CUST_RetentionType CRT On CRT.C_DocType_ID = CDT.C_DocType_ID \n " +
				"Inner Join (Select Distinct CIL.C_Invoice_ID,CRC.CUST_RetentionType_ID  \n " +
				"			 From C_InvoiceLine CIL  \n " +
				"        	 Inner Join CUST_CR_PT_Combination CCPC On CIL.CUST_CR_PT_Combination_ID=CCPC.CUST_CR_PT_Combination_ID \n " +
				"        	 Inner Join CUST_RetentionConfig CRC On CCPC.CUST_RetentionConfig_ID=CRC.CUST_RetentionConfig_ID \n " +
				"			 ) RC On RC.C_Invoice_ID=CI.C_Invoice_ID And RC.CUST_RetentionType_ID=CRT.CUST_RetentionType_ID \n " +
				"Where AD_PInstance_ID = ? \n " +
				"Order By CRT.CUST_RetentionType_ID";

		log.fine("SQL Declare Retentions=" + sql);
		trx = Trx.get(get_TrxName(), false);
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		PreparedStatement ps =null;
		ResultSet rs = null;
		int m_CUST_RetentionType_ID=0;
		MInvoice m_C_Invoice=null;
		ps = DB.prepareStatement(sql, trx.getTrxName());
		ps.setInt(1, getAD_PInstance_ID());
		rs = ps.executeQuery();
		
		while (rs.next())
		{
			if (m_CUST_RetentionType_ID!=rs.getInt("CUST_RetentionType_ID"))
			{
				if (m_C_Invoice!=null)
					processDocument(m_C_Invoice);
				m_C_Invoice=addDocument(rs);
				m_CUST_RetentionType_ID=rs.getInt("CUST_RetentionType_ID");
			}
			
			if (m_C_Invoice!=null)
				addDetailtDocument(rs,m_C_Invoice);
		}
		if (m_C_Invoice!=null)
			processDocument(m_C_Invoice);
		
		DB.close(rs, ps);
		trx.commit();
		/*if (!m_Generated.equals(""))
			ADialog.info(0, null, m_Generated);*/
		return m_Generated;//"@Generated@ = " + m_Generated;
	}
	
	/**
	 * 
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 25/03/2013, 15:39:41
	 * @return void
	 * @throws SQLException 
	 */
	private MInvoice addDocument(ResultSet rs) throws SQLException
	{
		MInvoice m_Declare = new MInvoice(getCtx(), 0, trx.getTrxName());
		m_Declare.setC_DocTypeTarget_ID(rs.getInt("C_DocTypeTarget_ID"));
		m_Declare.setIsSOTrx(false);
		m_Declare.setC_BPartner_ID(p_C_BPartner_ID);
		m_Declare.setDateInvoiced(p_DateInvoiced);
		m_Declare.setDateAcct(p_DateInvoiced);
		m_Declare.setC_BPartner_ID(p_C_BPartner_ID);
		m_Declare.saveEx();
		return m_Declare;
	}
	/**
	 * 
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 31/03/2013, 17:30:06
	 * @param rs
	 * @return void
	 * @throws SQLException 
	 */
	private void addDetailtDocument(ResultSet rs,MInvoice m_Invoice) throws SQLException
	{
		MInvoiceLine m_DeclareLine = new MInvoiceLine(m_Invoice);
		m_DeclareLine.set_ValueOfColumn("DocAffected_ID", rs.getInt("T_Selection_ID"));
		m_DeclareLine.setC_Charge_ID(rs.getInt("C_Charge_ID"));
		m_DeclareLine.setQty(Env.ONE);
		m_DeclareLine.setC_UOM_ID(N_UOM);
		m_DeclareLine.setPrice(rs.getBigDecimal("GrandTotal"));
		m_DeclareLine.setLineNetAmt(rs.getBigDecimal("GrandTotal"));
		m_DeclareLine.setLineTotalAmt(rs.getBigDecimal("GrandTotal"));			
		m_DeclareLine.saveEx();		
		
	}
	/**
	 * 
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 31/03/2013, 19:45:16
	 * @return void
	 */
	private void processDocument(MInvoice m_Invoice)
	{
		m_Generated+=Msg.translate(getCtx(), "DocumentNo") + " : " +m_Invoice.getDocumentNo()+" \n";
		
		if(!p_DocStatus.equals(DocumentEngine.STATUS_Drafted)){
			m_Invoice.setDocAction(p_DocStatus);
			m_Invoice.processIt(p_DocStatus);
			m_Invoice.saveEx();
			addLog (m_Invoice.getC_Invoice_ID(), m_Invoice.getUpdated(), null, 
					m_Invoice.getDocumentNo() + 
					(m_Invoice.getProcessMsg() != null && m_Invoice.getProcessMsg().length() !=0
							? ": Error " + m_Invoice.getProcessMsg()
							:" --> " + Msg.translate(getCtx(), "OK")));
		}
	}
	
	/**	Logger							*/
	public static CLogger log = CLogger.getCLogger(DeclareRetentions.class);
	
	/**	Business Partner				*/
	private int			p_C_BPartner_ID			=	0;
	/**	Invoiced	Date				*/
	private Timestamp	p_DateInvoiced			=	null;
	/**	Document Status				*/
	private String		p_DocStatus			=	"CO";
	/** Query SQL	 */
	private String		sql 					= null;
	/** Transaction	 */
	Trx 				trx 					= null;
	/** UOM Default*/
	private final int 	N_UOM = 100;
	/** String Message Generated*/
	private String m_Generated="";
}
