SELECT A.SERIAL_NUMBER PARA_CODE1,
       B.PARAM_NAME PARA_CODE2,
       A.RSRV_STR1 PARA_CODE4,
       A.RENT_SERIAL_NUMBER,
       A.NATIONALITY_AREACODE PARA_CODE5,
       A.RENT_TYPE_CODE,
       A.RENT_IMEI PARA_CODE8,
       A.RSRV_STR2 RENT_MODE_CODE,
       TO_CHAR(A.START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       TO_CHAR(A.RSRV_DATE1, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE,
       0 PARAM_ATTR
  FROM TF_F_USER_RENT A, TD_S_COMMPARA B
 WHERE A.USER_ID = :USER_ID
   AND A.PARTITION_ID = MOD(:USER_ID, 10000)
   AND B.SUBSYS_CODE = 'CSM'
   AND B.PARAM_ATTR = 743
   AND A.RENT_TYPE_CODE = B.PARAM_CODE
   AND A.END_DATE > SYSDATE