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
	private int				m_Copied = 0;
	
	
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
		
		
		String sql = new String("SELECT wh.TaxUnitRate, whb.Aliquot, whf.LVE_Withholding_ID, whb.LVE_WH_Combination_ID " +
				/**
				 * Carlos Parada 2013-08-15 
				 * Implements IsManual WithHolding Combination
				 */
				", whb.IsManual, whf.MinValue, whf.MaxValue, whf.Subtrahend, wh.AD_Rule_ID " +
				 /**
				  * End Carlos Parada
				  */
				"FROM LVE_Withholding wh " +
				"INNER JOIN LVE_WH_ConceptGroup wcg ON(wcg.LVE_WH_ConceptGroup_ID = wh.LVE_WH_ConceptGroup_ID) " +
				"INNER JOIN LVE_WH_Concept whc ON(whc.LVE_WH_ConceptGroup_ID = wcg.LVE_WH_ConceptGroup_ID) " +
				"INNER JOIN LVE_WH_Combination whb ON(whb.LVE_WH_Concept_ID = whc.LVE_WH_Concept_ID) " +
				"INNER JOIN LVE_WH_Config whf ON(whf.LVE_WH_Combination_ID = whb.LVE_WH_Combination_ID) " +
				"WHERE whf.IsActive = 'Y' " +
				"AND whf.LVE_TaxUnit_ID = ? " +
				"GROUP BY wh.TaxUnitRate, whb.Aliquot, whf.LVE_Withholding_ID, whb.LVE_WH_Combination_ID,whb.IsManual, whf.MinValue, whf.MaxValue, whf.Subtrahend, wh.AD_Rule_ID ");
		
		log.fine("SQL=" + sql);
		log.fine("LVE_TaxUnitFrom_ID=" + p_LVE_TaxUnitFrom_ID);
		
		PreparedStatement pstmt = null;
		pstmt = DB.prepareStatement(sql, get_TrxName());
		
		//	Add Parameters
		pstmt.setInt(1, p_LVE_TaxUnitFrom_ID);
		
		ResultSet rs = pstmt.executeQuery();
		if(rs != null){
			while(rs.next()){
				BigDecimal m_TaxUnitRate	= rs.getBigDecimal("TaxUnitRate");
				BigDecimal m_Aliquot		= rs.getBigDecimal("Aliquot");
				int m_LVE_Withholding_ID	= rs.getInt("LVE_Withholding_ID");
				int m_LVE_WH_Combination_ID = rs.getInt("LVE_WH_Combination_ID");
				int m_AD_Rule_ID = rs.getInt("AD_Rule_ID");
				/**
				 * Carlos Parada 2013-08-15 
				 * Changes for support manual WithHolding Combination
				 */
				boolean m_IsManual = rs.getString("IsManual").equals("Y");
				BigDecimal m_MinValue = rs.getBigDecimal("MinValue");
				BigDecimal m_MaxValue = rs.getBigDecimal("MaxValue");
				BigDecimal m_Subtrahend = rs.getBigDecimal("Subtrahend");
				
				addConfig(m_Aliquot, m_TaxUnitRate, m_TaxUnitAmt, m_LVE_Withholding_ID, m_LVE_WH_Combination_ID,m_IsManual,m_MinValue,m_MaxValue,m_Subtrahend,m_AD_Rule_ID);
				/**
				 * End Carlos Parada  
				 */
				
			}
		}
		//	Close DB
		DB.close(rs, pstmt);
		return "@Copied@=" + m_Copied;
	}
	
	/**
	 * Add a new Withholding Configuration or Update if Exists
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 08/08/2013, 14:09:45
	 * @param p_Aliquot
	 * @param p_TaxUnitRate
	 * @param p_TaxUnitAmt
	 * @param p_LVE_Withholding_ID
	 * @param p_LVE_WH_Combination_ID
	 * @param p_MinValue
	 * @param p_MaxValue
	 * @param p_Subtrahend
	 * @return void
	 */
	private void addConfig(BigDecimal p_Aliquot, BigDecimal p_TaxUnitRate, BigDecimal p_TaxUnitAmt, 
			int p_LVE_Withholding_ID, int p_LVE_WH_Combination_ID,boolean p_IsManual,
			BigDecimal p_MinValue, BigDecimal p_MaxValue, BigDecimal p_Subtrahend,int p_AD_Rule_ID){
		//	
		BigDecimal m_Subtrahend = Env.ZERO;
		BigDecimal m_MinValue = Env.ZERO;
		
		/**
		 * Carlos Parada 2013-08-15
		 * Changes for support manual WithHolding Combination
		 */
		
		MLVEWHConfig m_Config = MLVEWHConfig
				.createFrom(getCtx(), 
						p_LVE_Withholding_ID, 
						p_LVE_WH_Combination_ID, 
						m_LVE_TaxUnit_ID, 
						get_TrxName(), false);
		//Set Rule
		m_Config.setAD_Rule_ID(p_AD_Rule_ID);
		
		if (!p_IsManual)
		{
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
			
			m_MinValue = p_TaxUnitAmt.multiply(p_TaxUnitRate)
					.setScale(m_Precision, BigDecimal.ROUND_HALF_UP);		
			m_Subtrahend = p_Aliquot.multiply(m_MinValue)
					.divide(Env.ONEHUNDRED)
					.setScale(m_Precision, BigDecimal.ROUND_HALF_UP);
			
			log.fine("MinValue=" + m_MinValue);
			log.fine("Sustrahend=" + m_Subtrahend);
			
			//	Set Values
			m_Config.setSubtrahend(m_Subtrahend);
			m_Config.setMinValue(m_MinValue);
			m_Config.setMaxValue(Env.ZERO);
			
		}
		else
		{
			//	Set Values
			m_Config.setSubtrahend(p_Subtrahend);
			m_Config.setMinValue(p_MinValue);
			m_Config.setMaxValue(p_MaxValue);
		}
		
		/**
		 * End Carlos Parada  
		 */
		
		//	Save
		m_Config.saveEx();
		//	Created
		//addLog("@MinimalAmt@=" + m_MinimalAmt + " @Subtrahend@=" + m_Subtrahend);
		m_Copied++;
	}

}
