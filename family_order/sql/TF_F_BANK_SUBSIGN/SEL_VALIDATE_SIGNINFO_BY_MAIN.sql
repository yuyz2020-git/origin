select   SIGN_ID           ,
  MAIN_USER_TYPE    ,
  MAIN_USER_VALUE   ,
  MAIN_SIGN_TYPE    ,
  SUB_USER_TYPE     ,
  SUB_USER_VALUE    ,
  SUB_SIGN_TYPE     ,
  MAIN_EPARCHY_CODE ,
  CHNL_TYPE         ,
  to_char(START_DATE,'yyyy-mm-dd hh24:mi:ss') START_DATE,
  to_char(END_DATE,'yyyy-mm-dd hh24:mi:ss') END_DATE,
  to_char(UPDATE_DATE,'yyyy-mm-dd hh24:mi:ss') UPDATE_DATE,
  UPDATE_STAFF_ID   ,
  UPDATE_DEPART_ID  ,
  REMARK            ,
  RSRV_NUM1         ,
  RSRV_NUM2         ,
  RSRV_NUM3         ,
  RSRV_NUM4         ,
  RSRV_NUM5         ,
  RSRV_STR1         ,
  RSRV_STR2         ,
  RSRV_STR3         ,
  RSRV_STR4         ,
  RSRV_STR5         ,
  RSRV_STR6         ,
  RSRV_STR7         ,
  RSRV_STR8         ,
  RSRV_STR9         ,
  RSRV_STR10        ,
  to_char(RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,
  to_char(RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,
  to_char(RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3,
  RSRV_TAG1         ,
  RSRV_TAG2         ,
  RSRV_TAG3         
  from TF_F_BANK_SUBSIGN
 where main_user_type = :MAIN_USER_TYPE
   and main_user_value = :MAIN_USER_VALUE
   and sysdate between start_date and end_date
   and sub_sign_type = '0'
   and main_sign_type = '0'
   and MAIN_EPARCHY_CODE = :EPARCHY_CODE