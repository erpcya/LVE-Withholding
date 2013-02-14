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

/** Generated Model for CUST_RetentionRelation
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_CUST_RetentionRelation extends PO implements I_CUST_RetentionRelation, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130125L;

    /** Standard Constructor */
    public X_CUST_RetentionRelation (Properties ctx, int CUST_RetentionRelation_ID, String trxName)
    {
      super (ctx, CUST_RetentionRelation_ID, trxName);
      /** if (CUST_RetentionRelation_ID == 0)
        {
			setCUST_RetentionRelation_ID (0);
			setCUST_RetentionType_ID (0);
        } */
    }

    /** Load Constructor */
    public X_CUST_RetentionRelation (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_CUST_RetentionRelation[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_BPartner getC_BPartner() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_Name)
			.getPO(getC_BPartner_ID(), get_TrxName());	}

	/** Set Business Partner .
		@param C_BPartner_ID 
		Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID)
	{
		if (C_BPartner_ID < 1) 
			set_Value (COLUMNNAME_C_BPartner_ID, null);
		else 
			set_Value (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
	}

	/** Get Business Partner .
		@return Identifies a Business Partner
	  */
	public int getC_BPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_BP_Group getC_BP_Group() throws RuntimeException
    {
		return (org.compiere.model.I_C_BP_Group)MTable.get(getCtx(), org.compiere.model.I_C_BP_Group.Table_Name)
			.getPO(getC_BP_Group_ID(), get_TrxName());	}

	/** Set Business Partner Group.
		@param C_BP_Group_ID 
		Business Partner Group
	  */
	public void setC_BP_Group_ID (int C_BP_Group_ID)
	{
		if (C_BP_Group_ID < 1) 
			set_Value (COLUMNNAME_C_BP_Group_ID, null);
		else 
			set_Value (COLUMNNAME_C_BP_Group_ID, Integer.valueOf(C_BP_Group_ID));
	}

	/** Get Business Partner Group.
		@return Business Partner Group
	  */
	public int getC_BP_Group_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BP_Group_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_DocType getC_DocType() throws RuntimeException
    {
		return (org.compiere.model.I_C_DocType)MTable.get(getCtx(), org.compiere.model.I_C_DocType.Table_Name)
			.getPO(getC_DocType_ID(), get_TrxName());	}

	/** Set Document Type.
		@param C_DocType_ID 
		Document type or rules
	  */
	public void setC_DocType_ID (int C_DocType_ID)
	{
		if (C_DocType_ID < 0) 
			set_Value (COLUMNNAME_C_DocType_ID, null);
		else 
			set_Value (COLUMNNAME_C_DocType_ID, Integer.valueOf(C_DocType_ID));
	}

	/** Get Document Type.
		@return Document type or rules
	  */
	public int getC_DocType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_DocType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Retention Relation.
		@param CUST_RetentionRelation_ID Retention Relation	  */
	public void setCUST_RetentionRelation_ID (int CUST_RetentionRelation_ID)
	{
		if (CUST_RetentionRelation_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_CUST_RetentionRelation_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_CUST_RetentionRelation_ID, Integer.valueOf(CUST_RetentionRelation_ID));
	}

	/** Get Retention Relation.
		@return Retention Relation	  */
	public int getCUST_RetentionRelation_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_CUST_RetentionRelation_ID);
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
}