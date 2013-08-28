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

/** Generated Model for LVE_WH_Concept
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LVE_WH_Concept extends PO implements I_LVE_WH_Concept, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130828L;

    /** Standard Constructor */
    public X_LVE_WH_Concept (Properties ctx, int LVE_WH_Concept_ID, String trxName)
    {
      super (ctx, LVE_WH_Concept_ID, trxName);
      /** if (LVE_WH_Concept_ID == 0)
        {
			setLVE_WH_Concept_ID (0);
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_LVE_WH_Concept (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_WH_Concept[")
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

	public org.spin.model.I_LVE_WH_ConceptGroup getLVE_WH_ConceptGroup() throws RuntimeException
    {
		return (org.spin.model.I_LVE_WH_ConceptGroup)MTable.get(getCtx(), org.spin.model.I_LVE_WH_ConceptGroup.Table_Name)
			.getPO(getLVE_WH_ConceptGroup_ID(), get_TrxName());	}

	/** Set Concept Group.
		@param LVE_WH_ConceptGroup_ID Concept Group	  */
	public void setLVE_WH_ConceptGroup_ID (int LVE_WH_ConceptGroup_ID)
	{
		if (LVE_WH_ConceptGroup_ID < 1) 
			set_Value (COLUMNNAME_LVE_WH_ConceptGroup_ID, null);
		else 
			set_Value (COLUMNNAME_LVE_WH_ConceptGroup_ID, Integer.valueOf(LVE_WH_ConceptGroup_ID));
	}

	/** Get Concept Group.
		@return Concept Group	  */
	public int getLVE_WH_ConceptGroup_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_WH_ConceptGroup_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

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