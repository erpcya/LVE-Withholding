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
package org.erpca.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for CUST_CR_PT_Combination
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS
 */
public interface I_CUST_CR_PT_Combination 
{

    /** TableName=CUST_CR_PT_Combination */
    public static final String Table_Name = "CUST_CR_PT_Combination";

    /** AD_Table_ID=3000003 */
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

    /** Column name CUST_ConceptRetention_ID */
    public static final String COLUMNNAME_CUST_ConceptRetention_ID = "CUST_ConceptRetention_ID";

	/** Set Concept Retention	  */
	public void setCUST_ConceptRetention_ID (int CUST_ConceptRetention_ID);

	/** Get Concept Retention	  */
	public int getCUST_ConceptRetention_ID();

	public org.erpca.model.I_CUST_ConceptRetention getCUST_ConceptRetention() throws RuntimeException;

    /** Column name CUST_CR_PT_Combination_ID */
    public static final String COLUMNNAME_CUST_CR_PT_Combination_ID = "CUST_CR_PT_Combination_ID";

	/** Set Concept Retention and Person Type Combination	  */
	public void setCUST_CR_PT_Combination_ID (int CUST_CR_PT_Combination_ID);

	/** Get Concept Retention and Person Type Combination	  */
	public int getCUST_CR_PT_Combination_ID();

    /** Column name CUST_PersonType_ID */
    public static final String COLUMNNAME_CUST_PersonType_ID = "CUST_PersonType_ID";

	/** Set Person Type	  */
	public void setCUST_PersonType_ID (int CUST_PersonType_ID);

	/** Get Person Type	  */
	public int getCUST_PersonType_ID();

	public org.erpca.model.I_CUST_PersonType getCUST_PersonType() throws RuntimeException;

    /** Column name CUST_RetentionConfig_ID */
    public static final String COLUMNNAME_CUST_RetentionConfig_ID = "CUST_RetentionConfig_ID";

	/** Set Retention Config	  */
	public void setCUST_RetentionConfig_ID (int CUST_RetentionConfig_ID);

	/** Get Retention Config	  */
	public int getCUST_RetentionConfig_ID();

	public org.erpca.model.I_CUST_RetentionConfig getCUST_RetentionConfig() throws RuntimeException;

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
}
