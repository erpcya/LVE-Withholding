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

import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MBPartner;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.spin.model.ValidateRifSeniat;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class ValidateSeniat extends SvrProcess
{

	/**
	 * *** Constructor ***
	 * @author @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 24/09/2013, 10:32:08
	 */
	public ValidateSeniat()
	{
		// TODO Auto-generated constructor stub
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#prepare()
	 */
	@Override
	protected void prepare()
	{
		for(ProcessInfoParameter para : getParameter())
		{
			String name = para.getParameterName();
			if(para.getParameter() == null)
				;
			else if(name.equals("OverwriteBPartner"))
				p_OverwriteBPartner = para.getParameterAsBoolean();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);				
		}
		
		mPartner = new MBPartner(Env.getCtx(), getRecord_ID(), null);		
	}// End Prepare

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception
	{
		String m_Value = mPartner.get_ValueAsString("Value");
		String m_TaxID = mPartner.getTaxID();
		String value;
		
		if(m_Value == null || m_Value.equals(""))
		{
			if(m_TaxID == null || m_TaxID.equals(""))
			{
				return "";
			}
		
		}
		
		if(m_Value.equals(""))
		{
			value = m_TaxID; 
		}else
		{
			value = m_Value;
		}
		
		ValidateRifSeniat validate = new ValidateRifSeniat(value);
		
		if(validate.isM_exists())
		{			
			String newName = null;
			String newName2 = null ;
			
			String name = validate.getM_Name();			
			if(name != null &&
					name.length() > 60)
			{
				int lastIndexOf = name.lastIndexOf(" ", 59);
				newName = name.substring(0, lastIndexOf).trim();
				newName2 = name.substring(lastIndexOf);
			}else
			{
				newName = name;
				newName2 = "";
			}
			if(p_OverwriteBPartner){
				mPartner.setName(newName);
				mPartner.setName2(newName2);
				mPartner.saveEx();
			}
			//	Set Message
			String msg = "@Value@ :" +validate.getM_Rif()+" "+
					 "@Name@: "+validate.getM_Name()+" "+
					 "@RetentionAgent@ :" +validate.getM_Agent()+"  "+
					 "@IVATaxpayer@ :" + validate.getM_Contributor();
			
			addLog(msg);
			return msg;
		}else
		{
			throw new AdempiereException(validate.getM_error());
		}//	End DoIt
	}
	
	/** Object Partner 			*/
	MBPartner 					mPartner = null;
	
	/** Over Write BPartner		*/ 		
	boolean 					p_OverwriteBPartner	= false;

	
}
