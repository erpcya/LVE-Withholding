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
package org.erpca.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;

/** Generated Model for CUST_RetentionConfig
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_CUST_RetentionConfig extends PO implements I_CUST_RetentionConfig, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130125L;

    /** Standard Constructor */
    public X_CUST_RetentionConfig (Properties ctx, int CUST_RetentionConfig_ID, String trxName)
    {
      super (ctx, CUST_RetentionConfig_ID, trxName);
      /** if (CUST_RetentionConfig_ID == 0)
        {
			setCUST_RetentionConfig_ID (0);
			setCUST_RetentionType_ID (0);
        } */
    }

    /** Load Constructor */
    public X_CUST_RetentionConfig (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_CUST_RetentionConfig[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Base.
		@param Base 
		Calculation Base
	  */
	public void setBase (BigDecimal Base)
	{
		set_Value (COLUMNNAME_Base, Base);
	}

	/** Get Base.
		@return Calculation Base
	  */
	public BigDecimal getBase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Base);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Retention Config.
		@param CUST_RetentionConfig_ID Retention Config	  */
	public void setCUST_RetentionConfig_ID (int CUST_RetentionConfig_ID)
	{
		if (CUST_RetentionConfig_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_CUST_RetentionConfig_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_CUST_RetentionConfig_ID, Integer.valueOf(CUST_RetentionConfig_ID));
	}

	/** Get Retention Config.
		@return Retention Config	  */
	public int getCUST_RetentionConfig_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_CUST_RetentionConfig_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.erpca.model.I_CUST_RetentionType getCUST_RetentionType() throws RuntimeException
    {
		return (org.erpca.model.I_CUST_RetentionType)MTable.get(getCtx(), org.erpca.model.I_CUST_RetentionType.Table_Name)
			.getPO(getCUST_RetentionType_ID(), get_TrxName());	}

	/** Set Retention Type.
		@param CUST_RetentionType_ID Retention Type	  */
	public void setCUST_RetentionType_ID (int CUST_RetentionType_ID)
	{
		if (CUST_RetentionType_ID < 1) 
			set_Value (COLUMNNAME_CUST_RetentionType_ID, null);
		else 
			set_Value (COLUMNNAME_CUST_RetentionType_ID, Integer.valueOf(CUST_RetentionType_ID));
	}

	/** Get Retention Type.
		@return Retention Type	  */
	public int getCUST_RetentionType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_CUST_RetentionType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getCUST_RetentionType_ID()));
    }

	/** Set Minimal Amount.
		@param MinimalAmt Minimal Amount	  */
	public void setMinimalAmt (BigDecimal MinimalAmt)
	{
		set_Value (COLUMNNAME_MinimalAmt, MinimalAmt);
	}

	/** Get Minimal Amount.
		@return Minimal Amount	  */
	public BigDecimal getMinimalAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_MinimalAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}