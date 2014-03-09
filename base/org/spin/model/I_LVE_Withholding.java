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
package org.spin.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LVE_Withholding
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LVE_Withholding 
{

    /** TableName=LVE_Withholding */
    public static final String Table_Name = "LVE_Withholding";

    /** AD_Table_ID=53534 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Client.
	  * Client/Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within client
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within client
	  */
	public int getAD_Org_ID();

    /** Column name AD_ReportView_ID */
    public static final String COLUMNNAME_AD_ReportView_ID = "AD_ReportView_ID";

	/** Set Report View.
	  * View used to generate this report
	  */
	public void setAD_ReportView_ID (int AD_ReportView_ID);

	/** Get Report View.
	  * View used to generate this report
	  */
	public int getAD_ReportView_ID();

	public I_AD_ReportView getAD_ReportView() throws RuntimeException;

    /** Column name AD_Rule_ID */
    public static final String COLUMNNAME_AD_Rule_ID = "AD_Rule_ID";

	/** Set Rule	  */
	public void setAD_Rule_ID (int AD_Rule_ID);

	/** Get Rule	  */
	public int getAD_Rule_ID();

	public I_AD_Rule getAD_Rule() throws RuntimeException;

    /** Column name AD_Table_ID */
    public static final String COLUMNNAME_AD_Table_ID = "AD_Table_ID";

	/** Set Table.
	  * Database Table information
	  */
	public void setAD_Table_ID (int AD_Table_ID);

	/** Get Table.
	  * Database Table information
	  */
	public int getAD_Table_ID();

	public I_AD_Table getAD_Table() throws RuntimeException;

    /** Column name Beneficiary_ID */
    public static final String COLUMNNAME_Beneficiary_ID = "Beneficiary_ID";

	/** Set Beneficiary.
	  * Business Partner to whom payment is made
	  */
	public void setBeneficiary_ID (int Beneficiary_ID);

	/** Get Beneficiary.
	  * Business Partner to whom payment is made
	  */
	public int getBeneficiary_ID();

	public I_C_BPartner getBeneficiary() throws RuntimeException;

    /** Column name C_Charge_ID */
    public static final String COLUMNNAME_C_Charge_ID = "C_Charge_ID";

	/** Set Charge.
	  * Additional document charges
	  */
	public void setC_Charge_ID (int C_Charge_ID);

	/** Get Charge.
	  * Additional document charges
	  */
	public int getC_Charge_ID();

	public I_C_Charge getC_Charge() throws RuntimeException;

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name DeclarationDocType_ID */
    public static final String COLUMNNAME_DeclarationDocType_ID = "DeclarationDocType_ID";

	/** Set Declaration Doc Type	  */
	public void setDeclarationDocType_ID (int DeclarationDocType_ID);

	/** Get Declaration Doc Type	  */
	public int getDeclarationDocType_ID();

	public I_C_DocType getDeclarationDocType() throws RuntimeException;

    /** Column name Description */
    public static final String COLUMNNAME_Description = "Description";

	/** Set Description.
	  * Optional short description of the record
	  */
	public void setDescription (String Description);

	/** Get Description.
	  * Optional short description of the record
	  */
	public String getDescription();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name IsSOTrx */
    public static final String COLUMNNAME_IsSOTrx = "IsSOTrx";

	/** Set Sales Transaction.
	  * This is a Sales Transaction
	  */
	public void setIsSOTrx (boolean IsSOTrx);

	/** Get Sales Transaction.
	  * This is a Sales Transaction
	  */
	public boolean isSOTrx();

    /** Column name LVE_WH_ConceptGroup_ID */
    public static final String COLUMNNAME_LVE_WH_ConceptGroup_ID = "LVE_WH_ConceptGroup_ID";

	/** Set Concept Group	  */
	public void setLVE_WH_ConceptGroup_ID (int LVE_WH_ConceptGroup_ID);

	/** Get Concept Group	  */
	public int getLVE_WH_ConceptGroup_ID();

	public org.spin.model.I_LVE_WH_ConceptGroup getLVE_WH_ConceptGroup() throws RuntimeException;

    /** Column name LVE_WH_Type_ID */
    public static final String COLUMNNAME_LVE_WH_Type_ID = "LVE_WH_Type_ID";

	/** Set Withholding Type	  */
	public void setLVE_WH_Type_ID (int LVE_WH_Type_ID);

	/** Get Withholding Type	  */
	public int getLVE_WH_Type_ID();

	public org.spin.model.I_LVE_WH_Type getLVE_WH_Type() throws RuntimeException;

    /** Column name LVE_Withholding_ID */
    public static final String COLUMNNAME_LVE_Withholding_ID = "LVE_Withholding_ID";

	/** Set Withholding	  */
	public void setLVE_Withholding_ID (int LVE_Withholding_ID);

	/** Get Withholding	  */
	public int getLVE_Withholding_ID();

    /** Column name Name */
    public static final String COLUMNNAME_Name = "Name";

	/** Set Name.
	  * Alphanumeric identifier of the entity
	  */
	public void setName (String Name);

	/** Get Name.
	  * Alphanumeric identifier of the entity
	  */
	public String getName();

    /** Column name Processing */
    public static final String COLUMNNAME_Processing = "Processing";

	/** Set Process Now	  */
	public void setProcessing (boolean Processing);

	/** Get Process Now	  */
	public boolean isProcessing();

    /** Column name SeqNo */
    public static final String COLUMNNAME_SeqNo = "SeqNo";

	/** Set Sequence.
	  * Method of ordering records;
 lowest number comes first
	  */
	public void setSeqNo (int SeqNo);

	/** Get Sequence.
	  * Method of ordering records;
 lowest number comes first
	  */
	public int getSeqNo();

    /** Column name TaxUnitRate */
    public static final String COLUMNNAME_TaxUnitRate = "TaxUnitRate";

	/** Set Tax Unit Rate	  */
	public void setTaxUnitRate (BigDecimal TaxUnitRate);

	/** Get Tax Unit Rate	  */
	public BigDecimal getTaxUnitRate();

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();

    /** Column name WithholdingDocType_ID */
    public static final String COLUMNNAME_WithholdingDocType_ID = "WithholdingDocType_ID";

	/** Set Withholding Doc Type	  */
	public void setWithholdingDocType_ID (int WithholdingDocType_ID);

	/** Get Withholding Doc Type	  */
	public int getWithholdingDocType_ID();

	public I_C_DocType getWithholdingDocType() throws RuntimeException;
}
