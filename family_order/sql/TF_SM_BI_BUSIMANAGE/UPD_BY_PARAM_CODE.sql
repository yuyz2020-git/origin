UPDATE TF_SM_BI_BUSIMANAGE
SET SMS_SCRIPT=:SMS_SCRIPT, DATA_TIME=to_date(:DATA_TIME,'yyyy-mm-dd')
   WHERE SALE_ACT_TYPE=:SALE_ACT_TYPE
   AND MATCH_CODE=:MATCH_CODE
   AND BP_SERIAL_NO=:BP_SERIAL_NO