--IS_CACHE=Y
SELECT SP_ID,SP_CODE,SP_NAME,SP_TYPE,SP_ATTR,SERV_CODE,IN_PROVINCE,CON_PROVINCE,PLAT_CODE,to_char(START_DATE,'yyyy-mm-dd hh24:mi:ss') START_DATE,to_char(END_DATE,'yyyy-mm-dd hh24:mi:ss') END_DATE,SP_DESC,CS_TEL,CS_URL,CONTACT,SP_STATUS,SP_SHORT_NAME,SP_NAME_EN,OPR_SOURCE,to_char(FIRST_DATE,'yyyy-mm-dd hh24:mi:ss') FIRST_DATE,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,REMARK,UPDATE_STAFF_ID,UPDATE_DEPART_ID,to_char(UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,FILE_NAME
  FROM TD_M_CORPORATION_SP a
WHERE SP_STATUS = 'A'
and rsrv_str1='1'
  AND  exists(select 1 from TD_M_OPERATION_SP b where b.biz_type_code=:BIZ_TYPE_CODE and b.sp_code=a.sp_code)
  and sysdate between a.start_date and a.end_date