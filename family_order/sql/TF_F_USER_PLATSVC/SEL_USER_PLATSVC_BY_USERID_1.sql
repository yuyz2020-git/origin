SELECT A.PARTITION_ID,
       A.USER_ID,
       A.SERVICE_ID,
       A.BIZ_STATE_CODE,
       TO_CHAR(A.FIRST_DATE, 'YYYY-MM-DD HH24:MI:SS') FIRST_DATE,
       TO_CHAR(A.FIRST_DATE_MON, 'YYYY-MM-DD HH24:MI:SS') FIRST_DATE_MON,
       A.GIFT_SERIAL_NUMBER,
       A.GIFT_USER_ID,
       TO_CHAR(A.START_DATE, 'YYYY-MM-DD HH24:MI:SS') START_DATE,
       TO_CHAR(A.END_DATE, 'YYYY-MM-DD HH24:MI:SS') END_DATE,
       TO_CHAR(A.UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
       A.UPDATE_STAFF_ID,
       A.UPDATE_DEPART_ID,
       A.REMARK,
       A.RSRV_NUM1,
       A.RSRV_NUM2,
       A.RSRV_NUM3,
       A.RSRV_NUM4,
       A.RSRV_NUM5,
       A.RSRV_STR1,
       A.RSRV_STR2,
       A.RSRV_STR3,
       A.RSRV_STR4,
       A.RSRV_STR5,
       A.RSRV_STR6,
       A.RSRV_STR7,
       A.RSRV_STR8,
       A.RSRV_STR9,
       A.RSRV_STR10,
       TO_CHAR(A.RSRV_DATE1, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE1,
       TO_CHAR(A.RSRV_DATE2, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE2,
       TO_CHAR(A.RSRV_DATE3, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE3,
       A.RSRV_TAG1,
       A.RSRV_TAG2,
       A.RSRV_TAG3
  FROM TF_F_USER_PLATSVC A, TD_S_COMMPARA C
 WHERE A.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND A.USER_ID = TO_NUMBER(:USER_ID)
   AND A.SERVICE_ID = '98001901'
   AND A.SERVICE_ID = TO_NUMBER(C.PARA_CODE1)
   AND MONTHS_BETWEEN(TRUNC(SYSDATE, 'MM'), TRUNC(A.END_DATE, 'MM')) < 3
   AND EXISTS (SELECT 1 FROM TF_F_USER_ATTR WHERE USER_ID = TO_NUMBER(:USER_ID) AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)  AND rela_inst_id = A.INST_ID
     AND ATTR_CODE = '302' AND ATTR_VALUE='3' AND MONTHS_BETWEEN(TRUNC(SYSDATE, 'MM'), TRUNC(A.END_DATE, 'MM')) < 3
    )
   AND C.SUBSYS_CODE = 'CSM'
   AND C.PARAM_ATTR = :PARAM_ATTR
   AND C.PARAM_CODE = :PARAM_CODE
   AND (C.EPARCHY_CODE = :EPARCHY_CODE OR C.EPARCHY_CODE = 'ZZZZ')
   AND SYSDATE BETWEEN C.START_DATE AND C.END_DATE
   UNION ALL
   SELECT A.PARTITION_ID,
       A.USER_ID,
       A.SERVICE_ID,
       A.BIZ_STATE_CODE,
       TO_CHAR(A.FIRST_DATE, 'YYYY-MM-DD HH24:MI:SS') FIRST_DATE,
       TO_CHAR(A.FIRST_DATE_MON, 'YYYY-MM-DD HH24:MI:SS') FIRST_DATE_MON,
       A.GIFT_SERIAL_NUMBER,
       A.GIFT_USER_ID,
       TO_CHAR(A.START_DATE, 'YYYY-MM-DD HH24:MI:SS') START_DATE,
       TO_CHAR(A.END_DATE, 'YYYY-MM-DD HH24:MI:SS') END_DATE,
       TO_CHAR(A.UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
       A.UPDATE_STAFF_ID,
       A.UPDATE_DEPART_ID,
       A.REMARK,
       A.RSRV_NUM1,
       A.RSRV_NUM2,
       A.RSRV_NUM3,
       A.RSRV_NUM4,
       A.RSRV_NUM5,
       A.RSRV_STR1,
       A.RSRV_STR2,
       A.RSRV_STR3,
       A.RSRV_STR4,
       A.RSRV_STR5,
       A.RSRV_STR6,
       A.RSRV_STR7,
       A.RSRV_STR8,
       A.RSRV_STR9,
       A.RSRV_STR10,
       TO_CHAR(A.RSRV_DATE1, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE1,
       TO_CHAR(A.RSRV_DATE2, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE2,
       TO_CHAR(A.RSRV_DATE3, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE3,
       A.RSRV_TAG1,
       A.RSRV_TAG2,
       A.RSRV_TAG3
  FROM TF_F_USER_PLATSVC A,  TD_S_COMMPARA C
 WHERE A.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND A.USER_ID = TO_NUMBER(:USER_ID)
   AND A.SERVICE_ID <> '98001901'
   AND A.SERVICE_ID = TO_NUMBER(C.PARA_CODE1)
   AND MONTHS_BETWEEN(TRUNC(SYSDATE, 'MM'), TRUNC(A.END_DATE, 'MM')) < 3
   AND C.SUBSYS_CODE = 'CSM'
   AND C.PARAM_ATTR = :PARAM_ATTR
   AND C.PARAM_CODE = :PARAM_CODE
   AND (C.EPARCHY_CODE = :EPARCHY_CODE OR C.EPARCHY_CODE = 'ZZZZ')
   AND SYSDATE BETWEEN C.START_DATE AND C.END_DATE