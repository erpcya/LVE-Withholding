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

/** Generated Model for LVE_WH_Config
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LVE_WH_Config extends PO implements I_LVE_WH_Config, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130828L;

    /** Standard Constructor */
    public X_LVE_WH_Config (Properties ctx, int LVE_WH_Config_ID, String trxName)
    {
      super (ctx, LVE_WH_Config_ID, trxName);
      /** if (LVE_WH_Config_ID == 0)
        {
			setLVE_TaxUnit_ID (0);
			setLVE_WH_Combination_ID (0);
			setLVE_WH_Config_ID (0);
			setLVE_Withholding_ID (0);
			setMaxValue (Env.ZERO);
			setMinValue (Env.ZERO);
			setSubtrahend (Env.ZERO);
        } */
    }

    /** Load Constructor */
    public X_LVE_WH_Config (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_WH_Config[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public I_AD_Rule getAD_Rule() throws RuntimeException
    {
		return (I_AD_Rule)MTable.get(getCtx(), I_AD_Rule.Table_Name)
			.getPO(getAD_Rule_ID(), get_TrxName());	}

	/** Set Rule.
		@param AD_Rule_ID Rule	  */
	public void setAD_Rule_ID (int AD_Rule_ID)
	{
		if (AD_Rule_ID < 1) 
			set_Value (COLUMNNAME_AD_Rule_ID, null);
		else 
			set_Value (COLUMNNAME_AD_Rule_ID, Integer.valueOf(AD_Rule_ID));
	}

	/** Get Rule.
		@return Rule	  */
	public int getAD_Rule_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_Rule_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_LVE_TaxUnit getLVE_TaxUnit() throws RuntimeException
    {
		return (org.spin.model.I_LVE_TaxUnit)MTable.get(getCtx(), org.spin.model.I_LVE_TaxUnit.Table_Name)
			.getPO(getLVE_TaxUnit_ID(), get_TrxName());	}

	/** Set Tax Unit.
		@param LVE_TaxUnit_ID Tax Unit	  */
	public void setLVE_TaxUnit_ID (int LVE_TaxUnit_ID)
	{
		if (LVE_TaxUnit_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_TaxUnit_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_TaxUnit_ID, Integer.valueOf(LVE_TaxUnit_ID));
	}

	/** Get Tax Unit.
		@return Tax Unit	  */
	public int getLVE_TaxUnit_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_TaxUnit_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_LVE_WH_Combination getLVE_WH_Combination() throws RuntimeException
    {
		return (org.spin.model.I_LVE_WH_Combination)MTable.get(getCtx(), org.spin.model.I_LVE_WH_Combination.Table_Name)
			.getPO(getLVE_WH_Combination_ID(), get_TrxName());	}

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

	/** Set Withholding Config.
		@param LVE_WH_Config_ID Withholding Config	  */
	public void setLVE_WH_Config_ID (int LVE_WH_Config_ID)
	{
		if (LVE_WH_Config_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_WH_Config_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_WH_Config_ID, Integer.valueOf(LVE_WH_Config_ID));
	}

	/** Get Withholding Config.
		@return Withholding Config	  */
	public int getLVE_WH_Config_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_WH_Config_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_LVE_Withholding getLVE_Withholding() throws RuntimeException
    {
		return (org.spin.model.I_LVE_Withholding)MTable.get(getCtx(), org.spin.model.I_LVE_Withholding.Table_Name)
			.getPO(getLVE_Withholding_ID(), get_TrxName());	}

	/** Set Withholding.
		@param LVE_Withholding_ID Withholding	  */
	public void setLVE_Withholding_ID (int LVE_Withholding_ID)
	{
		if (LVE_Withholding_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_Withholding_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_Withholding_ID, Integer.valueOf(LVE_Withholding_ID));
	}

	/** Get Withholding.
		@return Withholding	  */
	public int getLVE_Withholding_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_Withholding_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Max Value.
		@param MaxValue Max Value	  */
	public void setMaxValue (BigDecimal MaxValue)
	{
		set_Value (COLUMNNAME_MaxValue, MaxValue);
	}

	/** Get Max Value.
		@return Max Value	  */
	public BigDecimal getMaxValue () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_MaxValue);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Min Value.
		@param MinValue Min Value	  */
	public void setMinValue (BigDecimal MinValue)
	{
		set_Value (COLUMNNAME_MinValue, MinValue);
	}

	/** Get Min Value.
		@return Min Value	  */
	public BigDecimal getMinValue () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_MinValue);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Subtrahend.
		@param Subtrahend Subtrahend	  */
	public void setSubtrahend (BigDecimal Subtrahend)
	{
		set_Value (COLUMNNAME_Subtrahend, Subtrahend);
	}

	/** Get Subtrahend.
		@return Subtrahend	  */
	public BigDecimal getSubtrahend () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Subtrahend);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}