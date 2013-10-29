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

import java.util.List;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.PO;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.spin.model.MLVEWHCombination;
import org.spin.model.MLVEWHConcept;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 * @contributor <a href="yamelsenih@gmail.com">Yamel Senih</a>
 * 	<li> Fixed Error with copy
 * 	<li> Add Missing Translations
 */
public class CopyFromConceptGroup extends SvrProcess
{


	/**	Logger									*/
	public static CLogger log = CLogger.getCLogger(CopyFromConceptGroup.class);
	
	/**	Group Concept From						*/
	private int 			p_LVE_WH_ConceptGroup_From_ID 	= 0;
	
	/**	Group Concept From						*/
	private int 			p_LVE_WH_Concept_Target_ID		= 0;
	
	/** Copy Combination						*/
	private boolean p_CopyCombination						= false;
	
	/**	Copied									*/
	private int m_Copied									= 0;

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
				p_CopyCombination = para.getParameterAsBoolean();
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
			throw new AdempiereException("@LVE_WH_ConceptGroup_ID@ Not Found");
		else if(p_LVE_WH_Concept_Target_ID == p_LVE_WH_ConceptGroup_From_ID)
			throw new AdempiereException("@LVE_WH_ConceptGroup_ID@ = @Record_ID@");
		
		
		log.info("LVE_TaxUnitFrom_ID=" + p_LVE_WH_ConceptGroup_From_ID);
		
		//	Yamel Senih
		//	Add Translation
		int m_LVE_WH_Concept_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(c.LVE_WH_Concept_ID) " +
				"FROM LVE_WH_Concept c " +
				"WHERE c.LVE_WH_ConceptGroup_ID=?", p_LVE_WH_Concept_Target_ID);
		if (m_LVE_WH_Concept_ID > 0)
			throw new AdempiereException("@CopyError@ @LVE_WH_Concept_ID@ @AlreadyExists@");
		
		//	Get Concepts
		List<MLVEWHConcept> m_LVE_WH_ConceptList = MLVEWHConcept.get(getCtx(), p_LVE_WH_ConceptGroup_From_ID, get_TrxName());
		
		//	Read Concept
		for (MLVEWHConcept m_FromConcept : m_LVE_WH_ConceptList)
		{
			//	Yamel Senih
			//	More elegant
			MLVEWHConcept m_TargetConcept = new MLVEWHConcept(getCtx(), 0, get_TrxName());
			PO.copyValues(m_FromConcept, m_TargetConcept);
			//	Set Concept Group ID
			m_TargetConcept.setLVE_WH_ConceptGroup_ID(p_LVE_WH_Concept_Target_ID);
			m_TargetConcept.save();
			//	Copy Combination
			if(p_CopyCombination){
				List<MLVEWHCombination> m_LVE_WH_CombinationList = MLVEWHCombination.get(getCtx(), 
						m_FromConcept.getLVE_WH_Concept_ID(), getName());
				//	Loop
				for(MLVEWHCombination m_FromCombination : m_LVE_WH_CombinationList){
					MLVEWHCombination m_TargetCombination = new MLVEWHCombination(getCtx(), 0, get_TrxName());
					PO.copyValues(m_FromCombination, m_TargetCombination);
					//	Set Concept ID
					m_TargetCombination.setLVE_WH_Concept_ID(m_TargetConcept.getLVE_WH_Concept_ID());
					m_TargetCombination.save();
				}
				
			}
			m_Copied++;
		}

		return "@Copied@ = " + m_Copied;

	}
}
