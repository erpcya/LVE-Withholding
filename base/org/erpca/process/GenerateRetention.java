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

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.model.MPInstance;
import org.compiere.model.MPInstancePara;
import org.compiere.process.ProcessInfo;
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
public class GenerateRetention extends SvrProcess {

	/**	Logger							*/
	public static CLogger log = CLogger.getCLogger(GenerateRetention.class);
	
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
	
	/**	Retention Type					*/
	private int			p_CUST_RetentionType_ID	= 0;
	
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
			else if (name.equals("CUST_RetentionType_ID"))
				p_CUST_RetentionType_ID = para.getParameterAsInt();
		}
		//	SQL
		sql = new String("SELECT rt.AD_Process_ID, pr.ClassName, rt.CUST_RetentionType_ID, rt.Name " +
				"FROM CUST_RetentionType rt " +
				"INNER JOIN AD_Process pr ON(pr.AD_Process_ID = rt.AD_Process_ID) " +
				"WHERE rt.IsActive = 'Y' ");
		//	Add Clause
		if(p_CUST_RetentionType_ID != 0)
			sql += "AND rt.CUST_RetentionType_ID=" + p_CUST_RetentionType_ID;
	
		log.fine("SQL Retention Type=" + sql);
		
		trx = Trx.get(get_TrxName(), false);
		
	}

	@Override
	protected String doIt() throws Exception {
		PreparedStatement pstmt = null;
		pstmt = DB.prepareStatement(sql, get_TrxName());
		ResultSet rs = pstmt.executeQuery();
		
		if(rs != null){
			while(rs.next()){
				int m_AD_Process_ID 		= rs.getInt("AD_Process_ID");
				String p_ClassName 			= rs.getString("ClassName");
				int m_CUST_RetentionType_ID = rs.getInt("CUST_RetentionType_ID");
				String p_RetentionName				= rs.getString("Name");
				callProcess(m_AD_Process_ID, p_ClassName, m_CUST_RetentionType_ID, p_RetentionName);
			}
		}
		//	Close Connection
		DB.close(rs, pstmt);
		return "@Generated@ = " + 0;
	}
	
	/**
	 * Call Process from ID Retention
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 03/03/2013, 20:50:00
	 * @param p_AD_Process_ID
	 * @param p_ClassName
	 * @param p_CUST_RetentionType_ID
	 * @param p_RetentionName
	 * @return
	 * @return String
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	private String callProcess(int p_AD_Process_ID, String p_ClassName, 
			int p_CUST_RetentionType_ID, String p_RetentionName) 
					throws ClassNotFoundException, InstantiationException, IllegalAccessException{
		
		log.fine("p_AD_Process_ID=" + p_AD_Process_ID 
				+ " p_ClassName=" + p_ClassName 
				+ " p_CUST_RetentionType_ID=" + p_CUST_RetentionType_ID 
				+ " p_RetentionName=" + p_RetentionName);
		
		String info = "";
		MPInstance instance = new MPInstance(Env.getCtx(), p_AD_Process_ID, 0);
		if (!instance.save())
		{
			info = Msg.getMsg(Env.getCtx(), "ProcessNoInstance");
			return info;
		}
		ProcessInfo pi = new ProcessInfo ("", p_AD_Process_ID);
		pi.setAD_PInstance_ID (instance.getAD_PInstance_ID());

		//	Add Parameters
		MPInstancePara para = new MPInstancePara(instance, 10);
		para.setParameter("C_Invoice_ID", p_C_Invoice_ID);
		if (!para.save())
		{
			String msg = "No Selection Parameter added";  //  not translated
			info = msg;
			log.log(Level.SEVERE, msg);
			return info;
		}
		
		para = new MPInstancePara(instance, 30);
		para.setParameter("C_BPartner_ID", p_C_BPartner_ID);
		if (!para.save())
		{
			String msg = "No Selection Parameter added";  //  not translated
			info = msg;
			log.log(Level.SEVERE, msg);
			return info;
		}
		
		para = new MPInstancePara(instance, 40);
		para.setParameter("DateAcct", p_DateAcct);
		if (!para.save())
		{
			String msg = "No Selection Parameter added";  //  not translated
			info = msg;
			log.log(Level.SEVERE, msg);
			return info;
		}
		
		para = new MPInstancePara(instance, 50);
		para.setParameter("DateAcct_To", p_DateAcct_To);
		if (!para.save())
		{
			String msg = "No Selection Parameter added";  //  not translated
			info = msg;
			log.log(Level.SEVERE, msg);
			return info;
		}
		
		para = new MPInstancePara(instance, 60);
		para.setParameter("CUST_RetentionType_ID", p_CUST_RetentionType_ID);
		if (!para.save())
		{
			String msg = "No Selection Parameter added";  //  not translated
			info = msg;
			log.log(Level.SEVERE, msg);
			return info;
		}
		
		para = new MPInstancePara(instance, 70);
		para.setParameter("DateDoc", p_DateDoc);
		if (!para.save())
		{
			String msg = "No Selection Parameter added";  //  not translated
			info = msg;
			log.log(Level.SEVERE, msg);
			return info;
		}
		
		Class<?> clazz;
		clazz = Class.forName(p_ClassName);
		SvrProcess pr = (SvrProcess) clazz.newInstance();
		pr.startProcess(getCtx(), pi, trx);
		addLog(p_RetentionName + " ||:::>>> " + pi.getSummary());
		
		return "OK";
	}
}
