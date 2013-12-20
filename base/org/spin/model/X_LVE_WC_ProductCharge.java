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

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LVE_WC_ProductCharge
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LVE_WC_ProductCharge extends PO implements I_LVE_WC_ProductCharge, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130828L;

    /** Standard Constructor */
    public X_LVE_WC_ProductCharge (Properties ctx, int LVE_WC_ProductCharge_ID, String trxName)
    {
      super (ctx, LVE_WC_ProductCharge_ID, trxName);
      /** if (LVE_WC_ProductCharge_ID == 0)
        {
			setLVE_WC_ProductCharge_ID (0);
			setLVE_WH_Concept_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LVE_WC_ProductCharge (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_WC_ProductCharge[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public I_C_Charge getC_Charge() throws RuntimeException
    {
		return (I_C_Charge)MTable.get(getCtx(), I_C_Charge.Table_Name)
			.getPO(getC_Charge_ID(), get_TrxName());	}

	/** Set Charge.
		@param C_Charge_ID 
		Additional document charges
	  */
	public void setC_Charge_ID (int C_Charge_ID)
	{
		if (C_Charge_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_Charge_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_Charge_ID, Integer.valueOf(C_Charge_ID));
	}

	/** Get Charge.
		@return Additional document charges
	  */
	public int getC_Charge_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Charge_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Product or Charge.
		@param LVE_WC_ProductCharge_ID Product or Charge	  */
	public void setLVE_WC_ProductCharge_ID (int LVE_WC_ProductCharge_ID)
	{
		if (LVE_WC_ProductCharge_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_WC_ProductCharge_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_WC_ProductCharge_ID, Integer.valueOf(LVE_WC_ProductCharge_ID));
	}

	/** Get Product or Charge.
		@return Product or Charge	  */
	public int getLVE_WC_ProductCharge_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_WC_ProductCharge_ID);
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

	public I_M_Product getM_Product() throws RuntimeException
    {
		return (I_M_Product)MTable.get(getCtx(), I_M_Product.Table_Name)
			.getPO(getM_Product_ID(), get_TrxName());	}

	/** Set Product.
		@param M_Product_ID 
		Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID)
	{
		if (M_Product_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_M_Product_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
	}

	/** Get Product.
		@return Product, Service, Item
	  */
	public int getM_Product_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}