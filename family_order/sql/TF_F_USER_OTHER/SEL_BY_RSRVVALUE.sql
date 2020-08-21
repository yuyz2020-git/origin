SELECT PARTITION_ID,
       to_char(USER_ID) USER_ID,
       RSRV_VALUE_CODE,
       RSRV_VALUE,
       RSRV_NUM1,
       RSRV_NUM2,
       RSRV_NUM3,
       to_char(RSRV_NUM4) RSRV_NUM4,
       to_char(RSRV_NUM5) RSRV_NUM5,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5,
       RSRV_STR6,
       RSRV_STR7,
       RSRV_STR8,
       RSRV_STR9,
       RSRV_STR10,
       to_char(RSRV_DATE1, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,
       to_char(RSRV_DATE2, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,
       to_char(RSRV_DATE3, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3,
       PROCESS_TAG,
       STAFF_ID,
       DEPART_ID,
       to_char(START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       to_char(END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE,
       to_char(UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       REMARK
  FROM TF_F_USER_OTHER
 WHERE user_id = TO_NUMBER(:USER_ID)
   and partition_id = MOD(TO_NUMBER(:USER_ID), 10000)  
   AND sysdate BETWEEN start_date+0 AND end_date+0
   and RSRV_VALUE_CODE in
       (SELECT para_code2
          FROM td_s_commpara  a
          WHERE  param_attr = '969' 
          And subsys_code = 'CSM'
          And sysdate BETWEEN start_date AND end_date
          AND (eparchy_code = :EPARCHY_CODE OR eparchy_code = 'ZZZZ')  )