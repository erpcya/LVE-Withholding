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

import java.sql.Timestamp;
import java.util.Properties;

import org.compiere.apps.ADialog;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class WithholdingGenerateISLR implements I_WithholdingGenerate {

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 02/08/2013, 02:07:52
	 */
	public WithholdingGenerateISLR() {
		// TODO Auto-generated constructor stub
	}

	/* (non-Javadoc)
	 * @see org.spin.util.I_WithholdingGenerate#generate(java.util.Properties, java.lang.String, int, int, int, java.sql.Timestamp, java.sql.Timestamp, java.sql.Timestamp, int, java.lang.StringBuffer)
	 */
	@Override
	public int generate(Properties ctx, String trxName, int p_ADPinstance,
			int p_C_Invoice_ID, int p_C_BPartner_ID, Timestamp p_DateAcct,
			Timestamp p_DateAcct_To, Timestamp p_DateDoc,
			int p_LVE_Withholding_ID, StringBuffer log) {
		//ADialog.info(0, null, "Hola " + p_LVE_Withholding_ID);
		return 0;
	}

}
