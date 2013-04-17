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

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Model for CUST_CR_PT_Combination
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_CUST_CR_PT_Combination extends PO implements I_CUST_CR_PT_Combination, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130125L;

    /** Standard Constructor */
    public X_CUST_CR_PT_Combination (Properties ctx, int CUST_CR_PT_Combination_ID, String trxName)
    {
      super (ctx, CUST_CR_PT_Combination_ID, trxName);
      /** if (CUST_CR_PT_Combination_ID == 0)
        {
			setCUST_ConceptRetention_ID (0);
			setCUST_CR_PT_Combination_ID (0);
			setCUST_PersonType_ID (0);
			setCUST_RetentionConfig_ID (0);
        } */
    }

    /** Load Constructor */
    public X_CUST_CR_PT_Combination (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_CUST_CR_PT_Combination[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.erpca.model.I_CUST_ConceptRetention getCUST_ConceptRetention() throws RuntimeException
    {
		return (org.erpca.model.I_CUST_ConceptRetention)MTable.get(getCtx(), org.erpca.model.I_CUST_ConceptRetention.Table_Name)
			.getPO(getCUST_ConceptRetention_ID(), get_TrxName());	}

	/** Set Concept Retention.
		@param CUST_ConceptRetention_ID Concept Retention	  */
	public void setCUST_ConceptRetention_ID (int CUST_ConceptRetention_ID)
	{
		if (CUST_ConceptRetention_ID < 1) 
			set_Value (COLUMNNAME_CUST_ConceptRetention_ID, null);
		else 
			set_Value (COLUMNNAME_CUST_ConceptRetention_ID, Integer.valueOf(CUST_ConceptRetention_ID));
	}

	/** Get Concept Retention.
		@return Concept Retention	  */
	public int getCUST_ConceptRetention_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_CUST_ConceptRetention_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getCUST_ConceptRetention_ID()));
    }

	/** Set Concept Retention and Person Type Combination.
		@param CUST_CR_PT_Combination_ID Concept Retention and Person Type Combination	  */
	public void setCUST_CR_PT_Combination_ID (int CUST_CR_PT_Combination_ID)
	{
		if (CUST_CR_PT_Combination_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_CUST_CR_PT_Combination_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_CUST_CR_PT_Combination_ID, Integer.valueOf(CUST_CR_PT_Combination_ID));
	}

	/** Get Concept Retention and Person Type Combination.
		@return Concept Retention and Person Type Combination	  */
	public int getCUST_CR_PT_Combination_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_CUST_CR_PT_Combination_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.erpca.model.I_CUST_PersonType getCUST_PersonType() throws RuntimeException
    {
		return (org.erpca.model.I_CUST_PersonType)MTable.get(getCtx(), org.erpca.model.I_CUST_PersonType.Table_Name)
			.getPO(getCUST_PersonType_ID(), get_TrxName());	}

	/** Set Person Type.
		@param CUST_PersonType_ID Person Type	  */
	public void setCUST_PersonType_ID (int CUST_PersonType_ID)
	{
		if (CUST_PersonType_ID < 1) 
			set_Value (COLUMNNAME_CUST_PersonType_ID, null);
		else 
			set_Value (COLUMNNAME_CUST_PersonType_ID, Integer.valueOf(CUST_PersonType_ID));
	}

	/** Get Person Type.
		@return Person Type	  */
	public int getCUST_PersonType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_CUST_PersonType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.erpca.model.I_CUST_RetentionConfig getCUST_RetentionConfig() throws RuntimeException
    {
		return (org.erpca.model.I_CUST_RetentionConfig)MTable.get(getCtx(), org.erpca.model.I_CUST_RetentionConfig.Table_Name)
			.getPO(getCUST_RetentionConfig_ID(), get_TrxName());	}

	/** Set Retention Config.
		@param CUST_RetentionConfig_ID Retention Config	  */
	public void setCUST_RetentionConfig_ID (int CUST_RetentionConfig_ID)
	{
		if (CUST_RetentionConfig_ID < 1) 
			set_Value (COLUMNNAME_CUST_RetentionConfig_ID, null);
		else 
			set_Value (COLUMNNAME_CUST_RetentionConfig_ID, Integer.valueOf(CUST_RetentionConfig_ID));
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
}