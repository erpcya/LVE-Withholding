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
	private static final long serialVersionUID = 20130828L;

    /** Standard Constructor */
    public X_LVE_Withholding (Properties ctx, int LVE_Withholding_ID, String trxName)
    {
      super (ctx, LVE_Withholding_ID, trxName);
      /** if (LVE_Withholding_ID == 0)
        {
			setAD_Table_ID (0);
			setBeneficiary_ID (0);
			setC_Charge_ID (0);
			setDeclarationDocType_ID (0);
			setLVE_WH_ConceptGroup_ID (0);
			setLVE_WH_Type_ID (0);
			setLVE_Withholding_ID (0);
			setName (null);
			setSeqNo (0);
// @SQL=SELECT NVL(MAX(SeqNo),0)+10 AS DefaultValue FROM LVE_Withholding
			setTaxUnitRate (Env.ZERO);
			setWithholdingDocType_ID (0);
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

	public I_AD_ReportView getAD_ReportView() throws RuntimeException
    {
		return (I_AD_ReportView)MTable.get(getCtx(), I_AD_ReportView.Table_Name)
			.getPO(getAD_ReportView_ID(), get_TrxName());	}

	/** Set Report View.
		@param AD_ReportView_ID 
		View used to generate this report
	  */
	public void setAD_ReportView_ID (int AD_ReportView_ID)
	{
		if (AD_ReportView_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_AD_ReportView_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_AD_ReportView_ID, Integer.valueOf(AD_ReportView_ID));
	}

	/** Get Report View.
		@return View used to generate this report
	  */
	public int getAD_ReportView_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_ReportView_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	public I_AD_Table getAD_Table() throws RuntimeException
    {
		return (I_AD_Table)MTable.get(getCtx(), I_AD_Table.Table_Name)
			.getPO(getAD_Table_ID(), get_TrxName());	}

	/** Set Table.
		@param AD_Table_ID 
		Database Table information
	  */
	public void setAD_Table_ID (int AD_Table_ID)
	{
		if (AD_Table_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_AD_Table_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_AD_Table_ID, Integer.valueOf(AD_Table_ID));
	}

	/** Get Table.
		@return Database Table information
	  */
	public int getAD_Table_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_Table_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_BPartner getBeneficiary() throws RuntimeException
    {
		return (I_C_BPartner)MTable.get(getCtx(), I_C_BPartner.Table_Name)
			.getPO(getBeneficiary_ID(), get_TrxName());	}

	/** Set Beneficiary.
		@param Beneficiary_ID 
		Business Partner to whom payment is made
	  */
	public void setBeneficiary_ID (int Beneficiary_ID)
	{
		if (Beneficiary_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_Beneficiary_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_Beneficiary_ID, Integer.valueOf(Beneficiary_ID));
	}

	/** Get Beneficiary.
		@return Business Partner to whom payment is made
	  */
	public int getBeneficiary_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Beneficiary_ID);
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

	public I_C_DocType getDeclarationDocType() throws RuntimeException
    {
		return (I_C_DocType)MTable.get(getCtx(), I_C_DocType.Table_Name)
			.getPO(getDeclarationDocType_ID(), get_TrxName());	}

	/** Set Declaration Doc Type.
		@param DeclarationDocType_ID Declaration Doc Type	  */
	public void setDeclarationDocType_ID (int DeclarationDocType_ID)
	{
		if (DeclarationDocType_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_DeclarationDocType_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_DeclarationDocType_ID, Integer.valueOf(DeclarationDocType_ID));
	}

	/** Get Declaration Doc Type.
		@return Declaration Doc Type	  */
	public int getDeclarationDocType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_DeclarationDocType_ID);
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
		set_ValueNoCheck (COLUMNNAME_IsSOTrx, Boolean.valueOf(IsSOTrx));
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

	public org.spin.model.I_LVE_WH_ConceptGroup getLVE_WH_ConceptGroup() throws RuntimeException
    {
		return (org.spin.model.I_LVE_WH_ConceptGroup)MTable.get(getCtx(), org.spin.model.I_LVE_WH_ConceptGroup.Table_Name)
			.getPO(getLVE_WH_ConceptGroup_ID(), get_TrxName());	}

	/** Set Concept Group.
		@param LVE_WH_ConceptGroup_ID Concept Group	  */
	public void setLVE_WH_ConceptGroup_ID (int LVE_WH_ConceptGroup_ID)
	{
		if (LVE_WH_ConceptGroup_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_WH_ConceptGroup_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_WH_ConceptGroup_ID, Integer.valueOf(LVE_WH_ConceptGroup_ID));
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

	public org.spin.model.I_LVE_WH_Type getLVE_WH_Type() throws RuntimeException
    {
		return (org.spin.model.I_LVE_WH_Type)MTable.get(getCtx(), org.spin.model.I_LVE_WH_Type.Table_Name)
			.getPO(getLVE_WH_Type_ID(), get_TrxName());	}

	/** Set Withholding Type.
		@param LVE_WH_Type_ID Withholding Type	  */
	public void setLVE_WH_Type_ID (int LVE_WH_Type_ID)
	{
		if (LVE_WH_Type_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_WH_Type_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_WH_Type_ID, Integer.valueOf(LVE_WH_Type_ID));
	}

	/** Get Withholding Type.
		@return Withholding Type	  */
	public int getLVE_WH_Type_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_WH_Type_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Sequence.
		@param SeqNo 
		Method of ordering records; lowest number comes first
	  */
	public void setSeqNo (int SeqNo)
	{
		set_ValueNoCheck (COLUMNNAME_SeqNo, Integer.valueOf(SeqNo));
	}

	/** Get Sequence.
		@return Method of ordering records; lowest number comes first
	  */
	public int getSeqNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_SeqNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Tax Unit Rate.
		@param TaxUnitRate Tax Unit Rate	  */
	public void setTaxUnitRate (BigDecimal TaxUnitRate)
	{
		set_Value (COLUMNNAME_TaxUnitRate, TaxUnitRate);
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

	public I_C_DocType getWithholdingDocType() throws RuntimeException
    {
		return (I_C_DocType)MTable.get(getCtx(), I_C_DocType.Table_Name)
			.getPO(getWithholdingDocType_ID(), get_TrxName());	}

	/** Set Withholding Doc Type.
		@param WithholdingDocType_ID Withholding Doc Type	  */
	public void setWithholdingDocType_ID (int WithholdingDocType_ID)
	{
		if (WithholdingDocType_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_WithholdingDocType_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_WithholdingDocType_ID, Integer.valueOf(WithholdingDocType_ID));
	}

	/** Get Withholding Doc Type.
		@return Withholding Doc Type	  */
	public int getWithholdingDocType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_WithholdingDocType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}