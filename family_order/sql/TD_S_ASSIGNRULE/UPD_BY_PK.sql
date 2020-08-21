UPDATE td_s_assignrule
   SET depart_code=:DEPART_CODE,depart_name=:DEPART_NAME,depart_frame=:DEPART_FRAME,valid_flag=:VALID_FLAG,area_code=:AREA_CODE,parent_depart_id=:PARENT_DEPART_ID,manager_id=:MANAGER_ID,order_no=:ORDER_NO,warnning_value_u=TO_NUMBER(:WARNNING_VALUE_U),warnning_value_d=TO_NUMBER(:WARNNING_VALUE_D),start_date=TO_DATE(:START_DATE, 'YYYY-MM-DD HH24:MI:SS'),end_date=TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS'),depart_level=:DEPART_LEVEL,rsrv_tag1=:RSRV_TAG1,rsrv_tag2=:RSRV_TAG2,rsrv_tag3=:RSRV_TAG3,rsrv_date1=TO_DATE(:RSRV_DATE1, 'YYYY-MM-DD HH24:MI:SS'),rsrv_date2=TO_DATE(:RSRV_DATE2, 'YYYY-MM-DD HH24:MI:SS'),rsrv_date3=TO_DATE(:RSRV_DATE3, 'YYYY-MM-DD HH24:MI:SS'),rsrv_str1=:RSRV_STR1,rsrv_str2=:RSRV_STR2,rsrv_str3=:RSRV_STR3,remark=:REMARK,update_time=SYSDATE,update_staff_id=:UPDATE_STAFF_ID,update_depart_id=:UPDATE_DEPART_ID,
stock_level=:STOCK_LEVEL,depart_kind_code=:DEPART_KIND_CODE    
 WHERE eparchy_code=:EPARCHY_CODE
   AND res_type_code=:RES_TYPE_CODE
   AND depart_id=:DEPART_ID