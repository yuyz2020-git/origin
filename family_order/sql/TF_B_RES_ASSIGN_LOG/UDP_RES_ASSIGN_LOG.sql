UPDATE TF_B_RES_ASSIGN_LOG 
SET AUDIT_TAG=:AUDIT_TAG, 
OPER_STAFF_ID= :OPER_STAFF_ID, OPER_DEPART_ID = :OPER_DEPART_ID, OPER_DATE = SYSDATE, AUDIT_DATE= SYSDATE
WHERE 1=1
	AND LOG_ID=:LOG_ID