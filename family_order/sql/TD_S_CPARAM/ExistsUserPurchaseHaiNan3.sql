SELECT COUNT(1) RECORDCOUNT
  FROM TF_F_USER_SALE_ACTIVE
 WHERE PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND USER_ID = TO_NUMBER(:USER_ID)
   AND (INSTR(:RSRV_STR10,RSRV_STR10)>0 OR :RSRV_STR10='*')
   AND (INSTR(:RSRV_STR5,RSRV_STR5)>0 OR :RSRV_STR5='*')
   AND PROCESS_TAG = '0'
   AND NVL(ADVANCE_PAY,0) > TO_NUMBER(:RPAY_DEPOSIT)
   and nvl(rsrv_date2,end_date) > sysdate