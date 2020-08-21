SELECT TO_CHAR(E.TRADE_ID) TRADE_ID,
       E.ACCEPT_MONTH,
       TO_CHAR(E.USER_ID) USER_ID,
       E.SERVICE_ID,
       E.SERIAL_NUMBER,
       E.INFO_CODE,
       E.INFO_VALUE,
       E.INFO_NAME,
       TO_CHAR(E.UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
       E.UPDATE_STAFF_ID,
       E.UPDATE_DEPART_ID,
       E.REMARK,
       E.RSRV_NUM1,
       E.RSRV_NUM2,
       E.RSRV_STR1,
       E.RSRV_STR2,
       TO_CHAR(E.RSRV_DATE1, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE1,
       TO_CHAR(E.RSRV_DATE2, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE2,
       TO_CHAR(E.RSRV_DATE3, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE3
  FROM TF_B_TRADE_PLATSVC_ATTR E
 WHERE E.TRADE_ID = TO_NUMBER(:TRADE_ID)
   AND E.INFO_CODE = :INFO_CODE
   AND E.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
   AND E.SERVICE_ID IN
       (SELECT S.SERVICE_ID
          FROM TF_B_TRADE_PLATSVC S
         WHERE E.SERVICE_ID = S.SERVICE_ID
           AND S.TRADE_ID = TO_NUMBER(:TRADE_ID)
           AND S.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2)))