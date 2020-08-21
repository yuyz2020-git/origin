insert into TI_B_ECBUSIINFO(
INST_ID,EC_ID,EC_NAME,REGION_CODE,DISTRICT_CODE,EC_STATUS,VALUELEVEL,CUSTOMERSERVLEVEL,INDUSTRY_TYPE,
EC_TYPE,EFF_TIME,SP_ID,STAFF_NAME,STAFF_TEL,STAFF_MAIL,EC_OPR_CODE,PRODUCT_NAME,PRODUCT_ID,BIZ_CODE,
BASE_ACCESSNO,SERV_CODE,SERV_TYPE,SOURCE,BIZ_STATUS,RB_LIST,CONFIRMFLAG,ACCESSMODEL,TEXT_SIGN_FLAG,
TEXT_SIGN_DEFAULT,TEXT_SIGN_ZH,TEXT_SIGN_EN,BIZ_AREA,BIZ_OPR_CODE,SYNC_FLAG,UP_TIME,UP_STAFF_ID,
UP_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,
RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3)
values(:INST_ID,:EC_ID,:EC_NAME,:REGION_CODE,:DISTRICT_CODE,:EC_STATUS,:VALUELEVEL,:CUSTOMERSERVLEVEL,
:INDUSTRY_TYPE,:EC_TYPE,TO_DATE(:EFF_TIME,'yyyy-MM-dd HH24:mi:ss'),:SP_ID,:STAFF_NAME,:STAFF_TEL,:STAFF_MAIL,:EC_OPR_CODE,
:PRODUCT_NAME,:PRODUCT_ID,:BIZ_CODE,:BASE_ACCESSNO,:SERV_CODE,:SERV_TYPE,:SOURCE,:BIZ_STATUS,
:RB_LIST,:CONFIRMFLAG,:ACCESSMODEL,:TEXT_SIGN_FLAG,:TEXT_SIGN_DEFAULT,:TEXT_SIGN_ZH,:TEXT_SIGN_EN,
:BIZ_AREA,:BIZ_OPR_CODE,:SYNC_FLAG,SYSDATE,:UPDATE_STAFF_ID,:UPDATE_DEPART_ID,:REMARK,:RSRV_NUM1,
:RSRV_NUM2,:RSRV_NUM3,:RSRV_NUM4,:RSRV_NUM5,:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,
:RSRV_STR4,:RSRV_STR5,:RSRV_DATE1,:RSRV_DATE2,:RSRV_DATE3,:RSRV_TAG1,:RSRV_TAG2,:RSRV_TAG3)



