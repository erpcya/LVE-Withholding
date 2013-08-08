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
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MCurrency;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.spin.model.MLVETaxUnit;
import org.spin.model.MLVEWHConfig;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *	<br> Generate a Configuration from Withholding Combination and Tax Unit, 
 *			Copied from other Tax Unit
 */
public class CopyFromTaxUnit extends SvrProcess {

	/**	Logger									*/
	public static CLogger log = CLogger.getCLogger(CopyFromTaxUnit.class);
	
	/**	Tax Unit From							*/
	private int 			p_LVE_TaxUnitFrom_ID = 0;
	
	/**	Withholding Combination					*/
	private int 			m_LVE_TaxUnit_ID = 0;
	
	/**	Precision								*/
	private int				m_Precision = 0;
	
	/**	Created									*/
	private int				m_Created = 0;
	
	
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
				p_LVE_TaxUnitFrom_ID = para.getParameterAsInt();
		}
		//	get ID from GridTab
		m_LVE_TaxUnit_ID = getRecord_ID();
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {
		if(p_LVE_TaxUnitFrom_ID == 0)
			throw new AdempiereException("@LVE_TaxUnitFrom_ID@ Not Found");
		log.info("LVE_TaxUnitFrom_ID=" + p_LVE_TaxUnitFrom_ID);
		
		//	Currency Precision
		m_Precision = MCurrency.getStdPrecision(getCtx(), Env.getContextAsInt(getCtx(), "$C_Currency_ID"));
		
		//	Tax Unit
		MLVETaxUnit m_LVE_TaxUnit = new MLVETaxUnit(getCtx(), m_LVE_TaxUnit_ID, get_TrxName());
		//	Get Amount
		BigDecimal m_TaxUnitAmt = m_LVE_TaxUnit.getTaxAmt();
		
		
		String sql = new String("SELECT wh.TaxUnitRate, whb.Aliquot, whb.LVE_WH_Combination_ID " +
				"FROM LVE_Withholding wh " +
				"INNER JOIN LVE_WH_Concept whc ON(whc.LVE_Withholding_ID = wh.LVE_Withholding_ID) " +
				"INNER JOIN LVE_WH_Combination whb ON(whb.LVE_WH_Concept_ID = whc.LVE_WH_Concept_ID) " +
				"INNER JOIN LVE_WH_Config whf ON(whf.LVE_WH_Combination_ID = whb.LVE_WH_Combination_ID) " +
				"WHERE whf.IsActive = 'Y' " +
				"AND whf.LVE_TaxUnit_ID = ?");
		
		PreparedStatement pstmt = null;
		pstmt = DB.prepareStatement(sql, get_TrxName());
		
		//	Add Parameters
		pstmt.setInt(1, p_LVE_TaxUnitFrom_ID);
		
		ResultSet rs = pstmt.executeQuery();
		if(rs != null){
			while(rs.next()){
				BigDecimal m_TaxUnitRate	= rs.getBigDecimal("TaxUnitRate");
				BigDecimal m_Aliquot		= rs.getBigDecimal("Aliquot");
				int m_LVE_WH_Combination_ID = rs.getInt("LVE_WH_Combination_ID");
				addConfig(m_Aliquot, m_TaxUnitRate, m_TaxUnitAmt, m_LVE_WH_Combination_ID);
			}
		}
				
		return "@Created@=" + m_Created;
	}
	
	/**
	 * Add a new Withholding Configuration or Update if Exists
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 08/08/2013, 14:09:45
	 * @param p_Aliquot
	 * @param p_TaxUnitRate
	 * @param p_TaxUnitAmt
	 * @param p_LVE_WH_Combination_ID
	 * @return void
	 */
	private void addConfig(BigDecimal p_Aliquot, BigDecimal p_TaxUnitRate, BigDecimal p_TaxUnitAmt, int p_LVE_WH_Combination_ID){
		//	
		BigDecimal m_Subtrahend = Env.ZERO;
		BigDecimal m_MinimalAmt = Env.ZERO;
		//	If Null
		if(p_Aliquot == null)
			p_Aliquot = Env.ZERO;
		if(p_TaxUnitRate == null)
			p_TaxUnitRate = Env.ZERO;
		//	
		if(p_TaxUnitAmt == null)
			p_TaxUnitAmt = Env.ZERO;
		//	Log
		log.fine("Aliquot=" + p_Aliquot
				+"TaxUnitRate=" + p_TaxUnitRate
				+"TaxUnit=" + p_TaxUnitAmt);
		
		m_MinimalAmt = p_TaxUnitAmt.multiply(p_TaxUnitRate)
				.setScale(m_Precision, BigDecimal.ROUND_HALF_UP);		
		m_Subtrahend = p_Aliquot.multiply(m_MinimalAmt)
				.divide(Env.ONEHUNDRED)
				.setScale(m_Precision, BigDecimal.ROUND_HALF_UP);
		
		log.fine("MinimalAmt=" + m_MinimalAmt);
		log.fine("Sustrahend=" + m_Subtrahend);
		
		MLVEWHConfig m_Config = MLVEWHConfig
				.createFrom(getCtx(), p_LVE_WH_Combination_ID, m_LVE_TaxUnit_ID, get_TrxName());
		//	Set Values
		m_Config.setSubtrahend(m_Subtrahend);
		m_Config.setMinimalAmt(m_MinimalAmt);
		//	Save
		m_Config.saveEx();
		//	Created
		addLog("@MinimalAmt@=" + m_MinimalAmt + " @Subtrahend@=" + m_Subtrahend);
		m_Created++;
	}

}
