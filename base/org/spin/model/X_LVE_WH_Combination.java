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

/** Generated Model for LVE_WH_Combination
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LVE_WH_Combination extends PO implements I_LVE_WH_Combination, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130828L;

    /** Standard Constructor */
    public X_LVE_WH_Combination (Properties ctx, int LVE_WH_Combination_ID, String trxName)
    {
      super (ctx, LVE_WH_Combination_ID, trxName);
      /** if (LVE_WH_Combination_ID == 0)
        {
			setAliquot (Env.ZERO);
			setLVE_WH_Combination_ID (0);
			setLVE_WH_Concept_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LVE_WH_Combination (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_WH_Combination[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Aliquot.
		@param Aliquot Aliquot	  */
	public void setAliquot (BigDecimal Aliquot)
	{
		set_ValueNoCheck (COLUMNNAME_Aliquot, Aliquot);
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

	/** Set Manual.
		@param IsManual 
		This is a manual process
	  */
	public void setIsManual (boolean IsManual)
	{
		set_ValueNoCheck (COLUMNNAME_IsManual, Boolean.valueOf(IsManual));
	}

	/** Get Manual.
		@return This is a manual process
	  */
	public boolean isManual () 
	{
		Object oo = get_Value(COLUMNNAME_IsManual);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
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

	/** Set Withholding Combination.
		@param LVE_WH_Combination_ID Withholding Combination	  */
	public void setLVE_WH_Combination_ID (int LVE_WH_Combination_ID)
	{
		if (LVE_WH_Combination_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_WH_Combination_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_WH_Combination_ID, Integer.valueOf(LVE_WH_Combination_ID));
	}

	/** Get Withholding Combination.
		@return Withholding Combination	  */
	public int getLVE_WH_Combination_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_WH_Combination_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_LVE_WH_Concept getLVE_WH_Concept() throws RuntimeException
    {
		return (org.spin.model.I_LVE_WH_Concept)MTable.get(getCtx(), org.spin.model.I_LVE_WH_Concept.Table_Name)
			.getPO(getLVE_WH_Concept_ID(), get_TrxName());	}

	/** Set Withholding Concept.
		@param LVE_WH_Concept_ID Withholding Concept	  */
	public void setLVE_WH_Concept_ID (int LVE_WH_Concept_ID)
	{
		if (LVE_WH_Concept_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_WH_Concept_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_WH_Concept_ID, Integer.valueOf(LVE_WH_Concept_ID));
	}

	/** Get Withholding Concept.
		@return Withholding Concept	  */
	public int getLVE_WH_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_WH_Concept_ID);
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

	/** Set Tax Base Rate.
		@param TaxBaseRate Tax Base Rate	  */
	public void setTaxBaseRate (BigDecimal TaxBaseRate)
	{
		set_ValueNoCheck (COLUMNNAME_TaxBaseRate, TaxBaseRate);
	}

	/** Get Tax Base Rate.
		@return Tax Base Rate	  */
	public BigDecimal getTaxBaseRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TaxBaseRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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