SELECT A.USER_ID,
       A.SERVICE_ID,
       A.SERIAL_NUMBER,
       A.SP_CODE,
       A.BIZ_CODE,
       A.BIZ_TYPE_CODE,
       A.BIZ_STATE_CODE,
       A.ORG_DOMAIN,
       A.OPER_CODE,
       A.OPR_SOURCE,
       A.BILL_TYPE,
       A.PRICE,
       A.START_DATE,
       A.END_DATE
  FROM TF_F_USER_PLATSVC A
 WHERE A.SERIAL_NUMBER = :SERIAL_NUMBER
   AND A.USER_ID = :USER_ID
   AND A.BIZ_TYPE_CODE = :BIZ_TYPE_CODE
   AND (A.BIZ_STATE_CODE = 'A' OR A.BIZ_STATE_CODE = 'N')
   AND SYSDATE BETWEEN A.START_DATE AND A.END_DATE