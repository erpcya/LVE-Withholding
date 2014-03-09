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

/** Generated Interface for LVE_WH_Combination
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LVE_WH_Combination 
{

    /** TableName=LVE_WH_Combination */
    public static final String Table_Name = "LVE_WH_Combination";

    /** AD_Table_ID=53537 */
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

    /** Column name Aliquot */
    public static final String COLUMNNAME_Aliquot = "Aliquot";

	/** Set Aliquot	  */
	public void setAliquot (BigDecimal Aliquot);

	/** Get Aliquot	  */
	public BigDecimal getAliquot();

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

    /** Column name IsManual */
    public static final String COLUMNNAME_IsManual = "IsManual";

	/** Set Manual.
	  * This is a manual process
	  */
	public void setIsManual (boolean IsManual);

	/** Get Manual.
	  * This is a manual process
	  */
	public boolean isManual();

    /** Column name LVE_PersonType_ID */
    public static final String COLUMNNAME_LVE_PersonType_ID = "LVE_PersonType_ID";

	/** Set Person Type	  */
	public void setLVE_PersonType_ID (int LVE_PersonType_ID);

	/** Get Person Type	  */
	public int getLVE_PersonType_ID();

	public org.spin.model.I_LVE_PersonType getLVE_PersonType() throws RuntimeException;

    /** Column name LVE_WH_Combination_ID */
    public static final String COLUMNNAME_LVE_WH_Combination_ID = "LVE_WH_Combination_ID";

	/** Set Withholding Combination	  */
	public void setLVE_WH_Combination_ID (int LVE_WH_Combination_ID);

	/** Get Withholding Combination	  */
	public int getLVE_WH_Combination_ID();

    /** Column name LVE_WH_Concept_ID */
    public static final String COLUMNNAME_LVE_WH_Concept_ID = "LVE_WH_Concept_ID";

	/** Set Withholding Concept	  */
	public void setLVE_WH_Concept_ID (int LVE_WH_Concept_ID);

	/** Get Withholding Concept	  */
	public int getLVE_WH_Concept_ID();

	public org.spin.model.I_LVE_WH_Concept getLVE_WH_Concept() throws RuntimeException;

    /** Column name Processing */
    public static final String COLUMNNAME_Processing = "Processing";

	/** Set Process Now	  */
	public void setProcessing (boolean Processing);

	/** Get Process Now	  */
	public boolean isProcessing();

    /** Column name TaxBaseRate */
    public static final String COLUMNNAME_TaxBaseRate = "TaxBaseRate";

	/** Set Tax Base Rate	  */
	public void setTaxBaseRate (BigDecimal TaxBaseRate);

	/** Get Tax Base Rate	  */
	public BigDecimal getTaxBaseRate();

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

    /** Column name Value */
    public static final String COLUMNNAME_Value = "Value";

	/** Set Search Key.
	  * Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value);

	/** Get Search Key.
	  * Search key for the record in the format required - must be unique
	  */
	public String getValue();
}
