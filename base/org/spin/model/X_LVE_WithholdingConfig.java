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

/** Generated Model for LVE_WithholdingConfig
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LVE_WithholdingConfig extends PO implements I_LVE_WithholdingConfig, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130801L;

    /** Standard Constructor */
    public X_LVE_WithholdingConfig (Properties ctx, int LVE_WithholdingConfig_ID, String trxName)
    {
      super (ctx, LVE_WithholdingConfig_ID, trxName);
      /** if (LVE_WithholdingConfig_ID == 0)
        {
			setLVE_TaxUnit_ID (0);
			setLVE_WH_Conbination_ID (0);
			setLVE_WithholdingConfig_ID (0);
			setMinimalAmt (Env.ZERO);
			setSubtrahend (Env.ZERO);
        } */
    }

    /** Load Constructor */
    public X_LVE_WithholdingConfig (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_WithholdingConfig[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	public org.spin.model.I_LVE_WH_Conbination getLVE_WH_Conbination() throws RuntimeException
    {
		return (org.spin.model.I_LVE_WH_Conbination)MTable.get(getCtx(), org.spin.model.I_LVE_WH_Conbination.Table_Name)
			.getPO(getLVE_WH_Conbination_ID(), get_TrxName());	}

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

	/** Set Withholding Config.
		@param LVE_WithholdingConfig_ID Withholding Config	  */
	public void setLVE_WithholdingConfig_ID (int LVE_WithholdingConfig_ID)
	{
		if (LVE_WithholdingConfig_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_WithholdingConfig_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_WithholdingConfig_ID, Integer.valueOf(LVE_WithholdingConfig_ID));
	}

	/** Get Withholding Config.
		@return Withholding Config	  */
	public int getLVE_WithholdingConfig_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_WithholdingConfig_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Minimal Amt.
		@param MinimalAmt Minimal Amt	  */
	public void setMinimalAmt (BigDecimal MinimalAmt)
	{
		set_ValueNoCheck (COLUMNNAME_MinimalAmt, MinimalAmt);
	}

	/** Get Minimal Amt.
		@return Minimal Amt	  */
	public BigDecimal getMinimalAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_MinimalAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Subtrahend.
		@param Subtrahend Subtrahend	  */
	public void setSubtrahend (BigDecimal Subtrahend)
	{
		set_ValueNoCheck (COLUMNNAME_Subtrahend, Subtrahend);
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