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
 * Copyright (C) 2003-2014 E.R.P. Consultores y Asociados.                    *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.process;

import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MSequence;
import org.compiere.model.X_C_Invoice;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.spin.model.MLVEWHUserDocSequence;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class SetControlNo extends SvrProcess {

	int p_Record_ID = 0;

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#prepare()
	 */
	@Override
	protected void prepare() {
		p_Record_ID = getRecord_ID();
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {

		MInvoice inv = new MInvoice(getCtx(), p_Record_ID, get_TrxName());

		if(inv.isSOTrx() 
				&& inv.getReversal_ID() == 0){
			//	Verify if Control No is Not Null
			if(inv.get_Value("ControlNo") != null){
				return "";
			}

			//	
			MDocType doc = (MDocType) inv.getC_DocTypeTarget();
			if(doc.get_ValueAsBoolean("IsPrintSetControlNo") 
					&& inv.getDocStatus().equals(X_C_Invoice.DOCSTATUS_Completed)){
				//	Get Control No Sequence by User
				int m_ControlNo_Seq = MLVEWHUserDocSequence.getControlNoSequence_ID(Env.getAD_User_ID(Env.getCtx()), doc.get_ID());
				//	Verify if is not user sequence
				if(m_ControlNo_Seq == 0)
					m_ControlNo_Seq = doc.get_ValueAsInt("ControlNoSequence_ID");
				//	Load Sequence
				if(m_ControlNo_Seq != 0){
					MSequence seq_ControlNo = new MSequence(Env.getCtx(), m_ControlNo_Seq, inv.get_TrxName());
					String prefix = seq_ControlNo.getPrefix();
					String suffix = seq_ControlNo.getSuffix();
					int next = seq_ControlNo.getNextID();

					if(prefix == null 
							|| prefix.length() == 0)
						prefix = "";

					if(suffix == null 
							|| suffix.length() == 0)
						suffix = "";

					inv.set_ValueOfColumn("ControlNo", prefix + next + suffix);
					if(!inv.save())
						return inv.getProcessMsg();
					if(!seq_ControlNo.save())
						return "Error @ControlNo@";
				}

			}
		}

		return "@ControlNo@ @Updated@ "+inv.get_ValueAsString("ControlNo");
	}
}
