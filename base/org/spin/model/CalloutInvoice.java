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
package org.spin.model;

import java.util.Properties;

import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MDocType;
import org.compiere.util.Env;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class CalloutInvoice extends CalloutEngine {
	
	/**
	 * Establece si el campo  AffectsBook dependiendo de si
	 * el documento es transaccion de venta o de compra
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String docType (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		
		
		Integer C_DocType_ID = Env.getContextAsInt(ctx, WindowNo, "C_DocTypeTarget_ID");
		if (C_DocType_ID == null || C_DocType_ID.intValue() == 0)
			return "";
		
		MDocType docType = new MDocType(ctx, C_DocType_ID.intValue(), null);
		
		if(docType.isSOTrx()){
			mTab.setValue("AffectsBook", "N");
			mTab.setValue("C_BPartner_ID", null);
		} else {
			mTab.setValue("AffectsBook", "Y");
		}
		
		return "";
	}
	
	
}
