UPDATE TF_B_TRADE_NP
   SET STATE          = :STATE,
       MESSAGE_ID     = :MESSAGE_ID_NEW,
       FLOW_ID        = :FLOW_ID,
       MSG_CMD_CODE = :MSG_CMD_CODE,
       RESULT_CODE    = :RESULT_CODE,
       RESULT_MESSAGE = :RESULT_MESSAGE,
       REMARK         = :REMARK
 WHERE TRADE_ID = :TRADE_ID
   AND ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))