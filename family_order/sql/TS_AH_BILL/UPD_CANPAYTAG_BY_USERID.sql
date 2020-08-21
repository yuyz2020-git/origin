UPDATE TS_AH_BILL SET CANPAY_TAG=:CANPAY_TAG,
           UPDATE_DEPART_ID=:UPDATE_DEPART_ID,
           UPDATE_STAFF_ID=:UPDATE_STAFF_ID,
           UPDATE_TIME=SYSDATE 
 WHERE PARTITION_ID=:PARTITION_ID AND ACCT_ID=TO_NUMBER(:ACCT_ID) 
   AND USER_ID=TO_NUMBER(:USER_ID) AND BILL_ID=TO_NUMBER(:BILL_ID) 
   AND ACYC_ID=:ACYC_ID AND INTEGRATE_ITEM_CODE=:INTEGRATE_ITEM_CODE 
   AND PAY_TAG='0' AND CANPAY_TAG<>'2' AND CANPAY_TAG<>'3'