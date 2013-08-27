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
import java.util.List;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MDocType;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.model.X_AD_ReportView;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.spin.model.MLVEWHConcept;
import org.spin.model.MLVEWHConceptGroup;
import org.spin.model.MLVEWHConfig;
import org.spin.model.MLVEWithholding;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class CopyGroupConcept extends SvrProcess
{


	/**	Logger									*/
	public static CLogger log = CLogger.getCLogger(CopyGroupConcept.class);
	
	/**	Group Concept From							*/
	private int 			p_LVE_WH_ConceptGroup_From_ID 	= 0;
	
	/**	Group Concept From							*/
	private int 			p_LVE_WH_Concept_Target_ID 	= 0;
	
	/** Copy Combination							*/
	private boolean p_CopyCombination						= false;
	
	/**	Copied										*/
	private int m_Created									= 0;
	
	/**
	 * *** Constructor ***
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 27/08/2013, 14:22:09
	 */
	public CopyGroupConcept()
	{
		// TODO Auto-generated constructor stub
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#prepare()
	 */
	@Override
	protected void prepare()
	{
		for (ProcessInfoParameter para:getParameter())
		{
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("LVE_WH_ConceptGroup_ID"))
				p_LVE_WH_ConceptGroup_From_ID = para.getParameterAsInt();
			else if (name.equals("CopyCombination"))
				p_CopyCombination = para.getParameter_ToAsBoolean();
		}
		//	get ID from GridTab
		p_LVE_WH_Concept_Target_ID = getRecord_ID();

	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception
	{
		if(p_LVE_WH_ConceptGroup_From_ID == 0)
			throw new AdempiereException("@p_LVE_WH_ConceptGroup_From_ID@ Not Found");
		log.info("LVE_TaxUnitFrom_ID=" + p_LVE_WH_ConceptGroup_From_ID);

		
	//	List<MLVEWHConcept> m_LVE_WH_ConceptList = MLVEWHConcept.get(getCtx(), p_LVE_WH_ConceptGroup_From_ID, get_TrxName());

		//	Read Concept
	/*	for (MLVEWHConcept m_Concept : m_LVE_WH_ConceptList)
		{
			MLVEWHConcept m_LVEConcept = new MLVEWHConcept(getCtx(), 0, get_TrxName());
			m_LVEConcept.setLVE_WH_ConceptGroup_ID(p_LVE_WH_Concept_Target_ID);
			m_LVEConcept.setName(m_Concept.getName());
			m_LVEConcept.setDescription(m_Concept.getDescription());
			m_LVEConcept.save();
			m_Created++;
		}
*/
		return "@Created@ = " + m_Created;

	}

}
