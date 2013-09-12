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

import org.compiere.model.MCurrency;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.spin.model.MLVEWHCombination;
import org.spin.model.MLVEWHConfig;
import org.spin.model.MLVEWithholding;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *	<br> Generate a Configuration from Withholding Combination and Tax Unit
 */
public class WithholdingConfigGenerate extends SvrProcess {

	/**	Logger									*/
	public static CLogger log = CLogger.getCLogger(WithholdingConfigGenerate.class);
	
	/**	Tax Unit								*/
	private int 			p_LVE_TaxUnit_ID = 0;
	
	/**	Withholding								*/
	private int				m_LVE_Withholding_ID = 0;
	
	/**	Precision								*/
	private int				m_Precision = 0;
	
	/**	Created									*/
	private int				m_Created = 0;
	
	/**	Where									*/
	private StringBuffer	sqlWhere = new StringBuffer();
	
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
			else if (name.equals("LVE_Withholding_ID"))
				m_LVE_Withholding_ID = para.getParameterAsInt();
		}
		//	get ID from GridTab
		if(m_LVE_Withholding_ID == 0
				&& getTable_ID() == MLVEWithholding.Table_ID)
			m_LVE_Withholding_ID = getRecord_ID();
		else if(getTable_ID() == MLVEWHCombination.Table_ID)
			sqlWhere.append("AND whb.LVE_WH_Combination_ID=" + getRecord_ID() + " ");
		//	Add SQL
		if(m_LVE_Withholding_ID != 0)
			sqlWhere.append("AND wh.LVE_Withholding_ID=" + m_LVE_Withholding_ID + " ");
		//	Add Where
		if(p_LVE_TaxUnit_ID != 0)
			sqlWhere.append("AND tu.LVE_TaxUnit_ID=" + p_LVE_TaxUnit_ID + " ");
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {
		log.info("LVE_Withholding_ID=" + m_LVE_Withholding_ID);
		
		//	Currency Precision
		m_Precision = MCurrency.getStdPrecision(getCtx(), Env.getContextAsInt(getCtx(), "$C_Currency_ID"));
		//	Sql
		String sql = new String("SELECT wh.TaxUnitRate, whb.Aliquot, wh.LVE_Withholding_ID, " +
				"whb.LVE_WH_Combination_ID, tu.LVE_TaxUnit_ID, tu.TaxAmt, wh.AD_Rule_ID " +
				"FROM LVE_TaxUnit tu " +
				", LVE_Withholding wh " +
				"INNER JOIN LVE_WH_ConceptGroup wcg ON(wcg.LVE_WH_ConceptGroup_ID = wh.LVE_WH_ConceptGroup_ID) " +
				"INNER JOIN LVE_WH_Concept whc ON(whc.LVE_WH_ConceptGroup_ID = wcg.LVE_WH_ConceptGroup_ID) " +
				"INNER JOIN LVE_WH_Combination whb ON(whb.LVE_WH_Concept_ID = whc.LVE_WH_Concept_ID) " +
				"WHERE whb.IsActive = 'Y' " +
				//	Where
				sqlWhere +
				//	Group By
				"GROUP BY wh.TaxUnitRate, whb.Aliquot, wh.LVE_Withholding_ID, " +
				"whb.LVE_WH_Combination_ID, tu.LVE_TaxUnit_ID, tu.TaxAmt, wh.AD_Rule_ID ");
				
		log.fine("SQL=" + sql);
		
		PreparedStatement pstmt = null;
		pstmt = DB.prepareStatement(sql, get_TrxName());
		//	
		ResultSet rs = pstmt.executeQuery();
		if(rs != null){
			while(rs.next()){
				BigDecimal m_TaxUnitRate	= rs.getBigDecimal("TaxUnitRate");
				BigDecimal m_Aliquot		= rs.getBigDecimal("Aliquot");
				BigDecimal m_TaxUnitAmt		= rs.getBigDecimal("TaxAmt");
				int m_LVE_Withholding_ID	= rs.getInt("LVE_Withholding_ID");
				int m_LVE_WH_Combination_ID = rs.getInt("LVE_WH_Combination_ID");
				int m_LVE_TaxUnit_ID		= rs.getInt("LVE_TaxUnit_ID");
				int m_AD_Rule_ID			= rs.getInt("AD_Rule_ID");
				addConfig(m_Aliquot, m_TaxUnitRate, m_TaxUnitAmt, 
						m_LVE_Withholding_ID, m_LVE_WH_Combination_ID, m_LVE_TaxUnit_ID,m_AD_Rule_ID);
			}
		}
		//	Close DB
		DB.close(rs, pstmt);
		return "@Created@=" + m_Created;
	}
	
	/**
	 * Add a new Withholding Configuration or Update if Exists
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 08/08/2013, 14:09:45
	 * @param p_Aliquot
	 * @param p_TaxUnitRate
	 * @param p_TaxUnitAmt
	 * @param p_LVE_Withholding_ID
	 * @param p_LVE_WH_Combination_ID
	 * @param p_LVE_TaxUnit_ID
	 * @return void
	 */
	private void addConfig(BigDecimal p_Aliquot, BigDecimal p_TaxUnitRate, BigDecimal p_TaxUnitAmt, 
			int p_LVE_Withholding_ID, int p_LVE_WH_Combination_ID, int p_LVE_TaxUnit_ID,int p_AD_Rule_ID){
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
				+"\nTaxUnitRate=" + p_TaxUnitRate
				+"\nTaxUnit=" + p_TaxUnitAmt
				+"\nLVE_Withholding_ID=" + p_LVE_Withholding_ID
				+"\nLVE_WH_Combination_ID=" + p_LVE_WH_Combination_ID
				+"\nLVE_TaxUnit_ID" + p_LVE_TaxUnit_ID);
		
		m_MinimalAmt = p_TaxUnitAmt.multiply(p_TaxUnitRate)
				.setScale(m_Precision, BigDecimal.ROUND_HALF_UP);		
		m_Subtrahend = p_Aliquot.multiply(m_MinimalAmt)
				.divide(Env.ONEHUNDRED)
				.setScale(m_Precision, BigDecimal.ROUND_HALF_UP);
		
		log.fine("MinimalAmt=" + m_MinimalAmt);
		log.fine("Sustrahend=" + m_Subtrahend);
		
		MLVEWHConfig m_Config = MLVEWHConfig
				.createFrom(getCtx(), 
						p_LVE_Withholding_ID, 
						p_LVE_WH_Combination_ID, 
						p_LVE_TaxUnit_ID, 
						get_TrxName(), true);
		
		//	Exists in such Withholding 
		if(m_Config == null)
			return;
		
		//Set Rule 
		m_Config.setAD_Rule_ID(p_AD_Rule_ID);
		/**
		 * Carlos Parada 2013-08-15
		 * Changes for support manual WithHolding Combination
		 */
		//	Set Values
		if(!m_Config.getLVE_WH_Combination().isManual())
		{
			m_Config.setSubtrahend(m_Subtrahend);
			m_Config.setMinValue(m_MinimalAmt);
			m_Config.setMaxValue(Env.ZERO);
		}
		else
		{
			m_Config.setSubtrahend(Env.ZERO);
			m_Config.setMinValue(Env.ZERO);
			m_Config.setMaxValue(Env.ZERO);
		}
		/**
		 * End Carlos Parada
		 */
		//	Save
		m_Config.saveEx();
		//	Created
		//addLog("@MinimalAmt@=" + m_MinimalAmt + " @Subtrahend@=" + m_Subtrahend);
		m_Created++;
	}

}
