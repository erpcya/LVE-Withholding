
CREATE TABLE adempiere.t_cust_reconciliation  (	
    c_bankstatement_id      	numeric(10,0) NULL,
    c_bankaccount_id        	numeric(10,0) NULL,
    ad_client_id            	numeric(10,0) NULL,
    ad_org_id               	numeric(10,0) NULL,
    ad_pinstance_id         	numeric(10,0) NULL,
    amountnotreconciled     	numeric(10,0) NULL,
    t_cust_reconciliation_id	numeric(10,0) NULL 
    );

ALTER TABLE adempiere.t_cust_reconciliation
    ADD CONSTRAINT fk_t_cust_reconciliation_c_bankaccount
	FOREIGN KEY(c_bankaccount_id)
	REFERENCES adempiere.c_bankaccount(c_bankaccount_id)
	MATCH SIMPLE
	ON DELETE RESTRICT 
	ON UPDATE CASCADE;

CREATE TABLE adempiere.t_cust_reconciliationline  ( 
    ad_client_id          	numeric(10,0) NULL,
    ad_org_id             	numeric(10,0) NULL,
    ad_pinstance_id       	numeric(10,0) NULL,
    isreconciled          	char(1) NULL,
    statementdate         	timestamp NULL,
    trxamt                	numeric NULL,
    stmtamt               	numeric NULL,
    c_payment_id          	numeric(10,0) NULL,
    chargeamt             	numeric NULL,
    c_charge_id           	numeric(10,0) NULL,
    ismanual              	char(1) NULL,
    tendertype            	char(1) NULL,
    c_bankstatementline_id	numeric(10,0) NULL,
    t_cust_reconciliationline numeric(10,0)
    );

CREATE VIEW adempiere.cust_rv_reconciliation
AS
SELECT t_cust_reconciliationline.ad_pinstance_id, t_cust_reconciliationline.ad_client_id, t_cust_reconciliationline.ad_org_id, t_cust_reconciliationline.isreconciled, t_cust_reconciliationline.tendertype, sum(t_cust_reconciliationline.trxamt) AS trxamt, sum(t_cust_reconciliationline.stmtamt) AS stmtamt FROM t_cust_reconciliationline GROUP BY t_cust_reconciliationline.isreconciled, t_cust_reconciliationline.tendertype, t_cust_reconciliationline.ad_pinstance_id, t_cust_reconciliationline.ad_client_id, t_cust_reconciliationline.ad_org_id;


CREATE VIEW adempiere.cust_rv_reconciled
AS
SELECT cust_rv_reconciliation.ad_pinstance_id, cust_rv_reconciliation.ad_client_id, cust_rv_reconciliation.ad_org_id, cust_rv_reconciliation.isreconciled, cust_rv_reconciliation.tendertype, cust_rv_reconciliation.trxamt, cust_rv_reconciliation.stmtamt FROM cust_rv_reconciliation WHERE (cust_rv_reconciliation.isreconciled = 'Y'::bpchar);



CREATE VIEW adempiere.cust_rv_unreconciled
AS
SELECT cust_rv_reconciliation.ad_pinstance_id, cust_rv_reconciliation.ad_client_id, cust_rv_reconciliation.ad_org_id, cust_rv_reconciliation.isreconciled, cust_rv_reconciliation.tendertype, cust_rv_reconciliation.trxamt, cust_rv_reconciliation.stmtamt FROM cust_rv_reconciliation WHERE (cust_rv_reconciliation.isreconciled = 'N'::bpchar);

