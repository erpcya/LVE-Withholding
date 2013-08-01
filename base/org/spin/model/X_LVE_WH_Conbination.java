/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2007 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
/** Generated Model - DO NOT CHANGE */
package org.spin.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LVE_WH_Conbination
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LVE_WH_Conbination extends PO implements I_LVE_WH_Conbination, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130801L;

    /** Standard Constructor */
    public X_LVE_WH_Conbination (Properties ctx, int LVE_WH_Conbination_ID, String trxName)
    {
      super (ctx, LVE_WH_Conbination_ID, trxName);
      /** if (LVE_WH_Conbination_ID == 0)
        {
			setAliquot (Env.ZERO);
			setLVE_WH_Conbination_ID (0);
			setLVE_WithholdingConcept_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LVE_WH_Conbination (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_LVE_WH_Conbination[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Aliquot.
		@param Aliquot Aliquot	  */
	public void setAliquot (BigDecimal Aliquot)
	{
		set_Value (COLUMNNAME_Aliquot, Aliquot);
	}

	/** Get Aliquot.
		@return Aliquot	  */
	public BigDecimal getAliquot () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Aliquot);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public org.spin.model.I_LVE_PersonType getLVE_PersonType() throws RuntimeException
    {
		return (org.spin.model.I_LVE_PersonType)MTable.get(getCtx(), org.spin.model.I_LVE_PersonType.Table_Name)
			.getPO(getLVE_PersonType_ID(), get_TrxName());	}

	/** Set Person Type.
		@param LVE_PersonType_ID Person Type	  */
	public void setLVE_PersonType_ID (int LVE_PersonType_ID)
	{
		if (LVE_PersonType_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_PersonType_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_PersonType_ID, Integer.valueOf(LVE_PersonType_ID));
	}

	/** Get Person Type.
		@return Person Type	  */
	public int getLVE_PersonType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_PersonType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Withholding Conbination.
		@param LVE_WH_Conbination_ID Withholding Conbination	  */
	public void setLVE_WH_Conbination_ID (int LVE_WH_Conbination_ID)
	{
		if (LVE_WH_Conbination_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_WH_Conbination_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_WH_Conbination_ID, Integer.valueOf(LVE_WH_Conbination_ID));
	}

	/** Get Withholding Conbination.
		@return Withholding Conbination	  */
	public int getLVE_WH_Conbination_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_WH_Conbination_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_LVE_WithholdingConcept getLVE_WithholdingConcept() throws RuntimeException
    {
		return (org.spin.model.I_LVE_WithholdingConcept)MTable.get(getCtx(), org.spin.model.I_LVE_WithholdingConcept.Table_Name)
			.getPO(getLVE_WithholdingConcept_ID(), get_TrxName());	}

	/** Set Withholding Concept.
		@param LVE_WithholdingConcept_ID Withholding Concept	  */
	public void setLVE_WithholdingConcept_ID (int LVE_WithholdingConcept_ID)
	{
		if (LVE_WithholdingConcept_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_WithholdingConcept_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_WithholdingConcept_ID, Integer.valueOf(LVE_WithholdingConcept_ID));
	}

	/** Get Withholding Concept.
		@return Withholding Concept	  */
	public int getLVE_WithholdingConcept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_WithholdingConcept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Process Now.
		@param Processing Process Now	  */
	public void setProcessing (boolean Processing)
	{
		set_Value (COLUMNNAME_Processing, Boolean.valueOf(Processing));
	}

	/** Get Process Now.
		@return Process Now	  */
	public boolean isProcessing () 
	{
		Object oo = get_Value(COLUMNNAME_Processing);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Search Key.
		@param Value 
		Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value)
	{
		set_ValueNoCheck (COLUMNNAME_Value, Value);
	}

	/** Get Search Key.
		@return Search key for the record in the format required - must be unique
	  */
	public String getValue () 
	{
		return (String)get_Value(COLUMNNAME_Value);
	}
}