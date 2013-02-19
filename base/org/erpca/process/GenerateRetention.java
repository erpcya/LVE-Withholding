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

import java.sql.Timestamp;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

/**
 * @author Yamel Senih
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
	
	private StringBuffer		m_sql 				= new StringBuffer();
	/**	Where Clause					*/
	private StringBuffer		m_parameterWhere	= new StringBuffer();
	
	/**
	 * *** Constructor de la Clase ***
	 * @author Yamel Senih 25/01/2013, 17:51:09
	 */
	public GenerateRetention() {
		record_ID = getRecord_ID();
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
		
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
