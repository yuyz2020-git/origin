select to_char(TRADE_ID) TRADE_ID,
       ACCEPT_MONTH,
       USER_ID,
       FEE_MODE,
       FEE_TYPE_CODE,
       BUSI_FEE,
       SALE_PRICE,
       DISCOUNT,
       TYPE,
       RATE,
       FEE1,
       FEE2,
       FEE3,
       GOODS_NAME,
       COUNT,
       UNIT,
       SCORE_VALUE,
       to_char(UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       REMARK,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_NUM1,
       RSRV_NUM2,
       RSRV_NUM3,
       to_char(RSRV_DATE1, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,
       RSRV_TAG1
  from tf_b_tradefee_tax
  WHERE TRADE_ID = :TRADE_ID
   AND ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))