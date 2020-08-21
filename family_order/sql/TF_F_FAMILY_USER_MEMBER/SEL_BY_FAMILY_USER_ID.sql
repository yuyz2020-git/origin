SELECT T.PARTITION_ID,
       TO_CHAR(INST_ID),
       TO_CHAR(FAMILY_USER_ID) FAMILY_USER_ID,
       FAMILY_SERIAL_NUM,
       TO_CHAR(MEMBER_USER_ID) MEMBER_USER_ID,
       MAIN_SERIAL_NUM,
       MEMBER_SERIAL_NUM,
       MEMBER_ROLE_CODE,
       MEMBER_ROLE_TYPE,
       TO_CHAR(START_DATE, 'YYYY-MM-DD HH24:MI:SS') START_DATE,
       TO_CHAR(END_DATE, 'YYYY-MM-DD HH24:MI:SS') END_DATE,
       TO_CHAR(UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       REMARK,
       RSRV_NUM1,
       RSRV_NUM2,
       RSRV_NUM3,
       RSRV_NUM4,
       RSRV_NUM5,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5,
       RSRV_DATE1,
       RSRV_DATE2,
       RSRV_DATE3,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3
  FROM TF_F_FAMILY_USER_MEMBER T
 WHERE T.FAMILY_USER_ID = :FAMILY_USER_ID
   AND T.END_DATE > SYSDATE
   AND T.END_DATE > T.START_DATE