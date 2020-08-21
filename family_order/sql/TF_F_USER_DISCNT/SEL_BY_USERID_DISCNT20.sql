SELECT PARTITION_ID,
       TO_CHAR(USER_ID) USER_ID,
       TO_CHAR(USER_ID_A) USER_ID_A,
       TO_CHAR(DISCNT_CODE) DISCNT_CODE,
       SPEC_TAG,
       RELATION_TYPE_CODE,
       TO_CHAR(INST_ID) INST_ID,
       TO_CHAR(CAMPN_ID) CAMPN_ID,
       TO_CHAR(START_DATE, 'YYYY-MM-DD HH24:MI:SS') START_DATE,
       TO_CHAR(END_DATE, 'YYYY-MM-DD HH24:MI:SS') END_DATE,
       TO_CHAR(UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       REMARK,
       TO_CHAR(RSRV_NUM1) RSRV_NUM1,
       TO_CHAR(RSRV_NUM2) RSRV_NUM2,
       TO_CHAR(RSRV_NUM3) RSRV_NUM3,
       TO_CHAR(RSRV_NUM4) RSRV_NUM4,
       TO_CHAR(RSRV_NUM5) RSRV_NUM5,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5,
       TO_CHAR(RSRV_DATE1, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE1,
       TO_CHAR(RSRV_DATE2, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE2,
       TO_CHAR(RSRV_DATE3, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE3,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3
  FROM TF_F_USER_DISCNT
 WHERE PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND USER_ID = TO_NUMBER(:USER_ID)
   AND DISCNT_CODE = :DISCNT_CODE
   AND EXISTS (SELECT 1
          FROM TD_S_COMMPARA A
         WHERE A.SUBSYS_CODE = 'CSM'
		   AND A.PARAM_ATTR = :PARAM_ATTR
           AND A.PARAM_CODE = :DISCNT_CODE
		   AND ( A.EPARCHY_CODE = :EPARCHY_CODE OR  A.EPARCHY_CODE = 'ZZZZ'))