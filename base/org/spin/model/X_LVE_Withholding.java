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

/** Generated Model for LVE_Withholding
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LVE_Withholding extends PO implements I_LVE_Withholding, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130805L;

    /** Standard Constructor */
    public X_LVE_Withholding (Properties ctx, int LVE_Withholding_ID, String trxName)
    {
      super (ctx, LVE_Withholding_ID, trxName);
      /** if (LVE_Withholding_ID == 0)
        {
			setBeneficiary (0);
			setC_Charge_ID (0);
			setClassname (null);
			setDeclarationDocType (0);
			setLVE_Withholding_ID (0);
			setLVE_WithholdingType_ID (0);
			setName (null);
			setWithholdingDocType (0);
        } */
    }

    /** Load Constructor */
    public X_LVE_Withholding (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_Withholding[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public I_C_BPartner getBenefici() throws RuntimeException
    {
		return (I_C_BPartner)MTable.get(getCtx(), I_C_BPartner.Table_Name)
			.getPO(getBeneficiary(), get_TrxName());	}

	/** Set Beneficiary.
		@param Beneficiary 
		Business Partner to whom payment is made
	  */
	public void setBeneficiary (int Beneficiary)
	{
		set_ValueNoCheck (COLUMNNAME_Beneficiary, Integer.valueOf(Beneficiary));
	}

	/** Get Beneficiary.
		@return Business Partner to whom payment is made
	  */
	public int getBeneficiary () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Beneficiary);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Classname.
		@param Classname 
		Java Classname
	  */
	public void setClassname (String Classname)
	{
		set_Value (COLUMNNAME_Classname, Classname);
	}

	/** Get Classname.
		@return Java Classname
	  */
	public String getClassname () 
	{
		return (String)get_Value(COLUMNNAME_Classname);
	}

	public I_C_DocType getDeclarationDocT() throws RuntimeException
    {
		return (I_C_DocType)MTable.get(getCtx(), I_C_DocType.Table_Name)
			.getPO(getDeclarationDocType(), get_TrxName());	}

	/** Set Declaration Doc Type.
		@param DeclarationDocType Declaration Doc Type	  */
	public void setDeclarationDocType (int DeclarationDocType)
	{
		set_ValueNoCheck (COLUMNNAME_DeclarationDocType, Integer.valueOf(DeclarationDocType));
	}

	/** Get Declaration Doc Type.
		@return Declaration Doc Type	  */
	public int getDeclarationDocType () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_DeclarationDocType);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Sales Transaction.
		@param IsSOTrx 
		This is a Sales Transaction
	  */
	public void setIsSOTrx (boolean IsSOTrx)
	{
		set_Value (COLUMNNAME_IsSOTrx, Boolean.valueOf(IsSOTrx));
	}

	/** Get Sales Transaction.
		@return This is a Sales Transaction
	  */
	public boolean isSOTrx () 
	{
		Object oo = get_Value(COLUMNNAME_IsSOTrx);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

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

	public org.spin.model.I_LVE_WithholdingType getLVE_WithholdingType() throws RuntimeException
    {
		return (org.spin.model.I_LVE_WithholdingType)MTable.get(getCtx(), org.spin.model.I_LVE_WithholdingType.Table_Name)
			.getPO(getLVE_WithholdingType_ID(), get_TrxName());	}

	/** Set Withholding Type.
		@param LVE_WithholdingType_ID Withholding Type	  */
	public void setLVE_WithholdingType_ID (int LVE_WithholdingType_ID)
	{
		if (LVE_WithholdingType_ID < 1) 
			set_Value (COLUMNNAME_LVE_WithholdingType_ID, null);
		else 
			set_Value (COLUMNNAME_LVE_WithholdingType_ID, Integer.valueOf(LVE_WithholdingType_ID));
	}

	/** Get Withholding Type.
		@return Withholding Type	  */
	public int getLVE_WithholdingType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_WithholdingType_ID);
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

	/** Set Tax Unit Rate.
		@param TaxUnitRate Tax Unit Rate	  */
	public void setTaxUnitRate (BigDecimal TaxUnitRate)
	{
		set_ValueNoCheck (COLUMNNAME_TaxUnitRate, TaxUnitRate);
	}

	/** Get Tax Unit Rate.
		@return Tax Unit Rate	  */
	public BigDecimal getTaxUnitRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TaxUnitRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public I_C_DocType getWithholdingDocT() throws RuntimeException
    {
		return (I_C_DocType)MTable.get(getCtx(), I_C_DocType.Table_Name)
			.getPO(getWithholdingDocType(), get_TrxName());	}

	/** Set Withholding Doc Type.
		@param WithholdingDocType Withholding Doc Type	  */
	public void setWithholdingDocType (int WithholdingDocType)
	{
		set_ValueNoCheck (COLUMNNAME_WithholdingDocType, Integer.valueOf(WithholdingDocType));
	}

	/** Get Withholding Doc Type.
		@return Withholding Doc Type	  */
	public int getWithholdingDocType () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_WithholdingDocType);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}