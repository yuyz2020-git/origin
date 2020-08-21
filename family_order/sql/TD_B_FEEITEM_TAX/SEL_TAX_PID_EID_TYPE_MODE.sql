--IS_CACHE=Y
SELECT TRADE_TYPE_CODE,
       PRODUCT_ID,
       FEE_TYPE_CODE,
       FEE_MODE,
       FEEITEM_NAME,
       to_char(FEE) FEE,
       to_char(DISCOUNT) DISCOUNT,
       TYPE,
       RATE,
       RES_TAG,
       EPARCHY_CODE,
       to_char(START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       to_char(END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE,
       to_char(UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       REMARK,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       to_char(RSRV_DATE1, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,
       to_char(RSRV_DATE2, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,
       to_char(RSRV_DATE3, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3,
       to_char(RSRV_NUM1) RSRV_NUM1
  FROM TD_B_FEEITEM_TAX
 WHERE TRADE_TYPE_CODE = :TRADE_TYPE_CODE
   AND PRODUCT_ID = :PRODUCT_ID
   AND ELEMENT_ID = :ELEMENT_ID
   AND FEE_MODE = :FEE_MODE
   AND (EPARCHY_CODE = :EPARCHY_CODE OR EPARCHY_CODE = 'ZZZZ')
   AND SYSDATE BETWEEN START_DATE AND END_DATE
