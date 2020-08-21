UPDATE TF_B_TRADE_BAT T SET T.AUDIT_STAFF_ID = :AUDIT_STAFF_ID , T.AUDIT_INFO = :AUDIT_INFO , T.AUDIT_STATE = :AUDIT_STATE, T.AUDIT_DATE = TO_DATE(:AUDIT_DATE,'yyyy-mm-dd hh24:mi:ss') , T.AUDIT_DEPART_ID = :AUDIT_DEPART_ID WHERE 1=1 AND T.BATCH_ID = TO_NUMBER(:BATCH_ID) AND T.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:BATCH_ID, 5, 2))