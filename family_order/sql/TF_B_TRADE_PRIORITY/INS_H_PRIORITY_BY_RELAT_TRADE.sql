INSERT INTO TF_BH_TRADE_PRIORITY(ORDER_ID,TRADE_ID,TRADE_TYPE_CODE,ACCEPT_MONTH,EXEC_TIME,FINISH_TIME,RELAT_ORDER_ID,RELAT_TRADE_ID,RELAT_TRADE_TYPE_CODE,SUBSCRIBE_STATE, INSERT_TIME)
    SELECT ORDER_ID,TRADE_ID,TRADE_TYPE_CODE,ACCEPT_MONTH,EXEC_TIME,SYSDATE,RELAT_ORDER_ID,RELAT_TRADE_ID,RELAT_TRADE_TYPE_CODE,SUBSCRIBE_STATE,INSERT_TIME
      FROM TF_B_TRADE_PRIORITY
    WHERE RELAT_TRADE_ID = TO_NUMBER(:RELAT_TRADE_ID)
