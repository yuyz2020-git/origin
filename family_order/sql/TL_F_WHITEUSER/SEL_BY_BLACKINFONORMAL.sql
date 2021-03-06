SELECT ACCEPT_MONTH,
       TO_CHAR(IN_TIME, 'yyyy-mm-dd hh24:mi:ss') IN_TIME,
       SERIAL_NUMBER,
       USER_ID,
       USER_ATTR,
       USER_LEVEL,
       PROVINCE_CODE,
       EFFECT_TAG,
       TO_CHAR(BEGIN_TIME, 'yyyy-mm-dd hh24:mi:ss') BEGIN_TIME,
       TO_CHAR(END_TIME, 'yyyy-mm-dd hh24:mi:ss') END_TIME,
       OPERATE_FLAG,
       TO_CHAR(EXEC_TIME, 'yyyy-mm-dd hh24:mi:ss') EXEC_TIME,
       PROCESS_TAG,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3,
       REMARK
  FROM TL_F_BLACKUSER
 WHERE 1 = 1
   AND SERIAL_NUMBER >= :PARA_CODE1
   AND SERIAL_NUMBER <= :PARA_CODE2
   AND (PROVINCE_CODE = :PARA_CODE3 OR :PARA_CODE3 IS NULL)