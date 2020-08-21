SELECT T.USER_ID, T.SERVICE_ID, T.SERIAL_NUMBER, T.GROUP_ID, T.BIZ_ATTR
  FROM TF_F_USER_GRP_PLATSVC T
 WHERE T.BIZ_CODE = :BIZ_CODE
   AND T.GROUP_ID = :GROUP_ID
   AND SYSDATE BETWEEN T.START_DATE AND T.END_DATE