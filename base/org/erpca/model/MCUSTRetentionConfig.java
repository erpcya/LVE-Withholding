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
package org.erpca.model;

import java.sql.ResultSet;
import java.util.Properties;

/**
 * 
 * @author Yamel Senih
 *
 */
public class MCUSTRetentionConfig extends X_CUST_RetentionConfig{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 472987887942654941L;

	public MCUSTRetentionConfig(Properties ctx, int CUST_RetentionConfig_ID, String trxName) {
		super(ctx, CUST_RetentionConfig_ID, trxName);
		// TODO Auto-generated constructor stub
	}
	
	public MCUSTRetentionConfig(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}	
}
