
CREATE TABLE t_cust_reconciliation  (	
    c_bankstatement_id      	NUMBER(10,0) NULL,
    c_bankaccount_id        	NUMBER(10,0) NULL,
    ad_client_id            	NUMBER(10,0) NULL,
    ad_org_id               	NUMBER(10,0) NULL,
    ad_pinstance_id         	NUMBER(10,0) NULL,
    amountnotreconciled     	NUMBER(10) NULL,
    t_cust_reconciliation_id	NUMBER(10,0) NULL 
    );

ALTER TABLE t_cust_reconciliation
    ADD CONSTRAINT fk_t_cust_reconciliation_c_bankaccount
	FOREIGN KEY(c_bankaccount_id)
	REFERENCES c_bankaccount(c_bankaccount_id)
	ON DELETE RESTRICT ;

CREATE TABLE t_cust_reconciliationline  ( 
    ad_client_id          	NUMBER(10,0) NULL,
    ad_org_id             	NUMBER(10,0) NULL,
    ad_pinstance_id       	NUMBER(10,0) NULL,
    isreconciled          	char(1) NULL,
    statementdate         	DATE NULL,
    trxamt                	NUMBER NULL,
    stmtamt               	NUMBER NULL,
    c_payment_id          	NUMBER(10,0) NULL,
    chargeamt             	NUMBER NULL,
    c_charge_id           	NUMBER(10,0) NULL,
    ismanual              	char(1) NULL,
    tendertype            	char(1) NULL,
    c_bankstatementline_id	NUMBER(10,0) NULL,
    t_cust_reconciliationline NUMBER(10,0)
    );

CREATE VIEW cust_rv_reconciliation
AS
SELECT t_cust_reconciliationline.ad_pinstance_id, t_cust_reconciliationline.ad_client_id, t_cust_reconciliationline.ad_org_id, t_cust_reconciliationline.isreconciled, t_cust_reconciliationline.tendertype, sum(t_cust_reconciliationline.trxamt) AS trxamt, sum(t_cust_reconciliationline.stmtamt) AS stmtamt FROM t_cust_reconciliationline GROUP BY t_cust_reconciliationline.isreconciled, t_cust_reconciliationline.tendertype, t_cust_reconciliationline.ad_pinstance_id, t_cust_reconciliationline.ad_client_id, t_cust_reconciliationline.ad_org_id;


CREATE VIEW cust_rv_reconciled
AS
SELECT cust_rv_reconciliation.ad_pinstance_id, cust_rv_reconciliation.ad_client_id, cust_rv_reconciliation.ad_org_id, cust_rv_reconciliation.isreconciled, cust_rv_reconciliation.tendertype, cust_rv_reconciliation.trxamt, cust_rv_reconciliation.stmtamt FROM cust_rv_reconciliation WHERE (cust_rv_reconciliation.isreconciled = 'Y');



CREATE VIEW cust_rv_unreconciled
AS
SELECT cust_rv_reconciliation.ad_pinstance_id, cust_rv_reconciliation.ad_client_id, cust_rv_reconciliation.ad_org_id, cust_rv_reconciliation.isreconciled, cust_rv_reconciliation.tendertype, cust_rv_reconciliation.trxamt, cust_rv_reconciliation.stmtamt FROM cust_rv_reconciliation WHERE (cust_rv_reconciliation.isreconciled = 'N');

