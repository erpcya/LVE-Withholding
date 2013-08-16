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

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.spin.util.I_WithholdingGenerate;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class WithholdingGenerate extends SvrProcess {

	/**	Logger							*/
	public static CLogger log = CLogger.getCLogger(WithholdingGenerate.class);
	
	/**	Invoice							*/
	private int			p_C_Invoice_ID			=	0;
	/**	Business Partner				*/
	private int			p_C_BPartner_ID			=	0;
	/**	Accounting	Date				*/
	private Timestamp	p_DateAcct				=	null;
	/**	Accounting	Date				*/
	private Timestamp	p_DateAcct_To			=	null;
	/**	Document	Date				*/
	private Timestamp	p_DateDoc				=	null;
	
	/**	Withholding						*/
	private int			p_LVE_Withholding_ID	= 0;
	
	private String		sql 					= null;
	
	Trx 				trx 					= null;

	
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
			else if (name.equals("LVE_Withholding_ID"))
				p_LVE_Withholding_ID = para.getParameterAsInt();
		}
		//	SQL
		sql = new String("SELECT wh.ClassName, wh.LVE_Withholding_ID, wh.Name " +
				"FROM LVE_Withholding wh " +
				"WHERE wh.IsActive = 'Y' ");
		//	Add Clause
		if(p_LVE_Withholding_ID != 0)
			sql += "AND wh.LVE_Withholding_ID=" + p_LVE_Withholding_ID + " ";
	
		sql += "ORDER BY wh.SeqNo ASC";
		//	Log
		log.fine("SQL Withholding=" + sql);
		//	Transaction
		trx = Trx.get(get_TrxName(), false);
	}

	@Override
	protected String doIt() throws Exception {
		//	Log
		StringBuffer prcLog = new StringBuffer();
		int generated = 0;
		PreparedStatement pstmt = null;
		pstmt = DB.prepareStatement(sql, get_TrxName());
		ResultSet rs = pstmt.executeQuery();
		
		if(rs != null){
			while(rs.next()){
				String p_ClassName 			= rs.getString("ClassName");
				int p_LVE_Withholding_ID 	= rs.getInt("LVE_Withholding_ID");
				String p_WithholdingName	= rs.getString("Name");
				if(p_ClassName != null 
						&& p_ClassName.length() != 0){
					//	Load Class for Withholding
					I_WithholdingGenerate wh = loadClass(p_ClassName);
					//	Generate Documents
					StringBuffer sb = new StringBuffer();
					//	Info
					log.fine("WithholdingGenerate" +
							"\nTrxName=" + trx.getTrxName() + 
							"\nAD_PInstance_ID=" + getAD_PInstance_ID() + 
							"\nC_Invoice_ID=" + p_C_Invoice_ID + 
							"\nC_BPartner_ID=" + p_C_BPartner_ID + 
							"\nDateAcct=" + p_DateAcct + 
							"\nDateAcct_To=" + p_DateAcct_To + 
							"\nDateDoc=" + p_DateDoc + 
							"\nLVE_Withholding_ID=" + p_LVE_Withholding_ID);
					
					generated+= wh.generate(getCtx(), trx.getTrxName(), getAD_PInstance_ID(), p_C_Invoice_ID, 
							p_C_BPartner_ID, p_DateAcct, p_DateAcct_To, p_DateDoc, p_LVE_Withholding_ID, log, sb);
					//	Add Buffer
					if(sb != null
							&& sb.length() != 0){
						prcLog.append(sb);
						addLog(p_WithholdingName + " ||:::>>> " + sb.toString());
					}
				} else
					addLog(p_WithholdingName + " ||:::>>> " + Msg.translate(getCtx(), "ClassName") + " = null");
			}
		}
		//	Close Connection
		DB.close(rs, pstmt);
		return "@Created@ = " + generated + " \n" + prcLog.toString();
	}

	/**
	 * Load Class
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 31/07/2013, 14:16:12
	 * @param p_ClassName
	 * @return
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 * @return I_WithholdingGenerate
	 */
	private I_WithholdingGenerate loadClass(String p_ClassName) throws ClassNotFoundException, InstantiationException, IllegalAccessException{
		Class<?> clazz;
		clazz = Class.forName(p_ClassName);
		I_WithholdingGenerate wh = (I_WithholdingGenerate) clazz.newInstance();
		return wh;
	}
	
}
