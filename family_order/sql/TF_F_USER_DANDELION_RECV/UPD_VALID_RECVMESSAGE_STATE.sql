UPDATE TF_F_USER_DANDELION_RECV A
   SET A.STATE_CODE        = :STATE_CODE,
       A.REPLY_DATE        = SYSDATE,
       A.UPDATE_TIME       = SYSDATE,
       A.UPDATE_STAFF_ID   = :UPDATE_STAFF_ID,
       A.UPDATE_DEPART_ID  = :UPDATE_DEPART_ID,
       A.RELATION_TRADE_ID = :RELATION_TRADE_ID
 WHERE A.TRADE_ID = :TRADE_ID
   AND A.STATE_CODE = '0'