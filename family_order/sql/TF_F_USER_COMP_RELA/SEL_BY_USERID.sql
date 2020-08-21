SELECT PARTITION_ID,
       to_char(USER_ID) user_id,
       COMP_PRODUCT_ID,
       COMP_PROD_SPEC_TYPE,
       to_char(COMP_USER_ID) comp_user_id,
       RELATION_TYPE_CODE,
       ROLE,
       to_char(START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       to_char(END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE,
       UPDATE_TIME,
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
       to_char(RSRV_DATE1, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,
       to_char(RSRV_DATE2, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,
       to_char(RSRV_DATE3, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3,
       to_char(group_id) group_id
  from tf_F_user_comp_rela t
 WHERE t.USER_ID = TO_NUMBER(:USER_ID)
   AND t.partition_id = mod(TO_NUMBER(:USER_ID), 10000)
   and sysdate between t.start_date and t.end_date