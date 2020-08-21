SELECT C.SERIAL_NUMBER,a.ATTR_VALUE,A.ATTR_CODE
  FROM tf_F_user_attr A, TF_F_USER_PLATSVC B,TF_F_USER C
 WHERE B.USER_ID =C.USER_ID
  AND C.SERIAL_NUMBER=:SERIAL_NUMBER
   AND C.REMOVE_TAG='0'
 AND   A.USER_ID = B.USER_ID
 AND   B.SERVICE_ID = '98001901'
 AND   A.ATTR_CODE='302'
 AND   B.BIZ_STATE_CODE IN ('A','N')
 AND   SYSDATE BETWEEN B.START_DATE AND B.END_DATE