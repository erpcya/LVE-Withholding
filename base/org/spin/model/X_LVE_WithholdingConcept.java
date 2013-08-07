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

/** Generated Model for LVE_WithholdingConcept
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LVE_WithholdingConcept extends PO implements I_LVE_WithholdingConcept, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130805L;

    /** Standard Constructor */
    public X_LVE_WithholdingConcept (Properties ctx, int LVE_WithholdingConcept_ID, String trxName)
    {
      super (ctx, LVE_WithholdingConcept_ID, trxName);
      /** if (LVE_WithholdingConcept_ID == 0)
        {
			setLVE_WithholdingConcept_ID (0);
			setLVE_Withholding_ID (0);
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_LVE_WithholdingConcept (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_WithholdingConcept[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Description.
		@param Description 
		Optional short description of the record
	  */
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription () 
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

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

	public org.spin.model.I_LVE_Withholding getLVE_Withholding() throws RuntimeException
    {
		return (org.spin.model.I_LVE_Withholding)MTable.get(getCtx(), org.spin.model.I_LVE_Withholding.Table_Name)
			.getPO(getLVE_Withholding_ID(), get_TrxName());	}

	/** Set Withholding.
		@param LVE_Withholding_ID Withholding	  */
	public void setLVE_Withholding_ID (int LVE_Withholding_ID)
	{
		if (LVE_Withholding_ID < 1) 
			set_Value (COLUMNNAME_LVE_Withholding_ID, null);
		else 
			set_Value (COLUMNNAME_LVE_Withholding_ID, Integer.valueOf(LVE_Withholding_ID));
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

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName () 
	{
		return (String)get_Value(COLUMNNAME_Name);
	}
}