UPDATE TF_B_TRADE T
   SET T.EXEC_TIME        = SYSDATE,
       T.UPDATE_TIME      = SYSDATE,
       T.UPDATE_STAFF_ID  = :UPDATE_STAFF_ID,
       T.UPDATE_DEPART_ID = :UPDATE_DEPART_ID,
       T.REMARK           = :REMARK
 WHERE T.TRADE_ID = TO_NUMBER(:TRADE_ID)
   AND T.ACCEPT_MONTH = :ACCEPT_MONTH
   AND T.CANCEL_TAG = :CANCEL_TAG
