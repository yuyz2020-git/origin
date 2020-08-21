SELECT A.USER_ID,
       A.SERIAL_NUMBER,
       A.SERVICE_ID,
       A.OPER_CODE,
       A.SP_CODE,
       A.BIZ_CODE,
       A.BIZ_TYPE_CODE,
       A.ORG_DOMAIN,
       B.INFO_VALUE
  FROM TF_B_TRADE_PLATSVC A, TF_B_TRADE_PLATSVC_ATTR B
 WHERE A.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
   AND A.TRADE_ID = TO_NUMBER(:TRADE_ID)
   AND A.USER_ID = :USER_ID
   AND A.SERVICE_ID = :SERVICE_ID
   AND A.TRADE_ID = B.TRADE_ID
   AND A.USER_ID = B.USER_ID
   AND A.SERVICE_ID = B.SERVICE_ID
   AND B.INFO_CODE = 'PASSWD'