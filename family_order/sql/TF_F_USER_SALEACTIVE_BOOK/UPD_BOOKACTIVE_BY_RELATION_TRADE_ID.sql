UPDATE TF_F_USER_SALEACTIVE_BOOK A
   SET  A.UPDATE_TIME  = SYSDATE,
       A.END_DATE     = SYSDATE,
       A.PROCESS_TAG = '2'
 WHERE A.PROCESS_TAG = '0'
   AND A.DEAL_STATE_CODE = '0'
   AND NVL(A.RSRV_DATE2, A.END_DATE) > SYSDATE
   AND A.SERIAL_NUMBER = :SERIAL_NUMBER
   AND A.ACCEPT_TRADE_ID = :TRADE_ID
   AND A.RELATION_TRADE_ID = :RELATION_TRADE_ID