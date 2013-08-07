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


import java.math.BigDecimal;
import java.sql.Timestamp;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MCurrency;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.spin.model.MLVETaxUnit;
import org.spin.model.MLVEWHCombination;
import org.spin.model.MLVEWithholding;
import org.spin.model.MLVEWithholdingConcept;
import org.spin.model.MLVEWithholdingConfig;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *	<br> Generate a Configuration from 
 */
public class GenerateConfigConbination extends SvrProcess {

	/**	Logger							*/
	public static CLogger log = CLogger.getCLogger(GenerateConfigConbination.class);
	
	/**	Tax Unit								*/
	private int 			p_LVE_TaxUnit_ID = 0;
	
	/**	Withholding Combination					*/
	private int 			m_LVE_WHCombination_ID = 0;
	
	/**	Date Accounting							*/
	private Timestamp		m_DateAcct = null;
	
	/**	Precision								*/
	private int				m_Precision = 0;
	
	
	
	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#prepare()
	 */
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("LVE_TaxUnit_ID"))
				p_LVE_TaxUnit_ID = para.getParameterAsInt();
			else if (name.equals("DateAcct"))
				m_DateAcct = (Timestamp) para.getParameter();
		}
		//	If Date Accounting is Null
		if(m_DateAcct == null)
			m_DateAcct = Env.getContextAsDate(getCtx(), "#Date");
		
		//	get ID from GridTab
		m_LVE_WHCombination_ID = getRecord_ID();
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {
		if(m_LVE_WHCombination_ID == 0)
			throw new AdempiereException("@LVE_WHCombination_ID@ Not Found");
		log.info("LVE_WHCombination_ID=" + m_LVE_WHCombination_ID);
		
		//	Currency Precision
			m_Precision = MCurrency.getStdPrecision(getCtx(), Env.getContextAsInt(getCtx(), "$C_Currency_ID"));
		
		//	Tax Unit
		MLVETaxUnit m_LVE_TaxUnit = null;
		
		//	Combination
		MLVEWHCombination m_LVE_WHCombination = new MLVEWHCombination(getCtx(), m_LVE_WHCombination_ID, get_TrxName());
		
		//	Tax Unit
		if(p_LVE_TaxUnit_ID != 0)
			m_LVE_TaxUnit = new MLVETaxUnit(getCtx(), p_LVE_TaxUnit_ID, get_TrxName());
		else
			m_LVE_TaxUnit = MLVETaxUnit.get(getCtx(), m_DateAcct, get_TrxName());
		
		//	Withholding Concept
		MLVEWithholdingConcept m_LVE_WithholdingConcept = (MLVEWithholdingConcept) m_LVE_WHCombination.getLVE_WithholdingConcept();
		//	Withholding
		MLVEWithholding m_LVE_Withholding = (MLVEWithholding) m_LVE_WithholdingConcept.getLVE_Withholding();
		
		//	
		BigDecimal m_Subtrahend = Env.ZERO;
		BigDecimal m_MinimalAmt = Env.ZERO;
		//	Get Values
		BigDecimal m_Aliquot = m_LVE_WHCombination.getAliquot();
		BigDecimal m_TaxUnitRate = m_LVE_Withholding.getTaxUnitRate();
		BigDecimal m_TaxUnit = m_LVE_TaxUnit.getTaxAmt();
		
		
		//	If Null
		if(m_Aliquot == null)
			m_Aliquot = Env.ZERO;
		if(m_TaxUnitRate == null)
			m_TaxUnitRate = Env.ZERO;
		//	
		if(m_TaxUnit == null)
			m_TaxUnit = Env.ZERO;
		//	Log
		log.fine("Aliquot=" + m_Aliquot
				+"TaxUnitRate=" + m_TaxUnitRate
				+"TaxUnit=" + m_TaxUnit);
		
		m_MinimalAmt = m_TaxUnit.multiply(m_TaxUnitRate)
				.setScale(m_Precision, BigDecimal.ROUND_HALF_UP);		
		m_Subtrahend = m_Aliquot.multiply(m_MinimalAmt)
				.divide(Env.ONEHUNDRED)
				.setScale(m_Precision, BigDecimal.ROUND_HALF_UP);
		
		log.fine("MinimalAmt=" + m_MinimalAmt);
		log.fine("Sustrahend=" + m_Subtrahend);
		
		MLVEWithholdingConfig m_Config = MLVEWithholdingConfig
				.createFrom(getCtx(), m_LVE_WHCombination_ID, p_LVE_TaxUnit_ID, get_TrxName());
		//	Set Values
		m_Config.setSubtrahend(m_Subtrahend);
		m_Config.setMinimalAmt(m_MinimalAmt);
		//	Save
		m_Config.saveEx();
		
		return "@MinimalAmt@=" + m_MinimalAmt + " @Subtrahend@=" + m_Subtrahend;
	}

}
