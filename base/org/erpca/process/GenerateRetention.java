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

import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;

/**
 * 
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class GenerateRetention extends SvrProcess {

	/**	Logger							*/
	public static CLogger log = CLogger.getCLogger(GenerateRetention.class);
	
	/**	Retention Type					*/
	private int			p_CUST_RetentionType_ID	= 0;
	
	private String			sql 					= null;

	private int				pos						= -1;
	
	@Override
	protected void prepare() {
		
		ProcessInfoParameter[] params = getParameter();
		for (int i = 0; i < params.length; i++){
			ProcessInfoParameter para = params[i];
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("CUST_RetentionType_ID")){
				p_CUST_RetentionType_ID = para.getParameterAsInt();
				pos = i;
			}
		}
		//	SQL
		sql = new String("SELECT rt.AD_Process_ID, rt.CUST_RetentionType_ID " +
				"FROM CUST_RetentionType rt " +
				"WHERE rt.IsActive = 'Y' ");
		//	Add Clause
		if(p_CUST_RetentionType_ID != 0)
			sql += "AND rt.CUST_RetentionType_ID=" + p_CUST_RetentionType_ID;
	
		System.out.println(sql);
		
	}

	@Override
	protected String doIt() throws Exception {
		if(pos == -1)
			return "";
		PreparedStatement pstmt = null;
		pstmt = DB.prepareStatement(sql, get_TrxName());
		ResultSet rs = pstmt.executeQuery();
		
		ProcessInfoParameter[] para = getParameter();
		
		if(rs != null){
			while(rs.next()){
				int m_AD_Process_ID = rs.getInt("AD_Process_ID");
				int m_CUST_RetentionType_ID = rs.getInt("CUST_RetentionType_ID");
				System.out.println("sdsd");
				ProcessInfo pi = new ProcessInfo("Retention", m_AD_Process_ID);
				para[pos].setParameter(m_CUST_RetentionType_ID);
				pi.setParameter(para);
				startProcess(getCtx(), pi, null);
			}
		}
		//	Close Connection
		DB.close(rs, pstmt);
		return "@Generated@ = " + 0;
	}
	
	/*private void callProcess(){
		// Create instance parameters. I e the parameters you want to send to the process.
		ProcessInfoParameter pi1 = new ProcessInfoParameter("AD_Client_ID", clientId,"","","");
		ProcessInfoParameter pi2 = new ProcessInfoParameter("AD_Org_ID", orgId, "","","");

		// Create a process info instance. This is a composite class containing the parameters.
		ProcessInfo pi = new ProcessInfo("Retention", 0);
		pi.setParameter(new ProcessInfoParameter[] {pi1, pi2, pi3});

		// Lookup process in the AD, in this case by value
		MProcess pr = new Query(Env.getCtx(), MProcess.Table_Name, "value=?", null)
		                        .setParameters(new Object[]{"MyProcess"})
		                        .first();
		if (pr==null) {
		      log.warn("Process " + pr.getName() + " does not exist. ");
		      return false;
		}

		// Create an instance of the actual process class.
		MyProcess process = new MyProcess();

		// Create process instance (mainly for logging/sync purpose)
		MPInstance mpi = new MPInstance(Env.getCtx(), 0, null);
		mpi.setAD_Process_ID(pr.get_ID()); 
		mpi.setRecord_ID(0);
		mpi.save();

		// Connect the process to the process instance.
		pi.setAD_PInstance_ID(mpi.get_ID());
		startProcess(ctx, pi, trx);
		log.info("Starting process " + pr.getName());
		boolean result = process.startProcess(ctx, pi, null);

	}*/
}
