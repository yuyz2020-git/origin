INSERT INTO tf_b_res_inout_log(inout_code,oper_time,oper_staff_id,oper_flag,res_type_code,card_type_code,value_code,eparchy_code,city_code,depart_id,staff_id,oper_num,batch_id,start_res_no,end_res_no,log_id,rsrv_tag1,rsrv_tag2,rsrv_tag3,para_value1,para_value2,para_value3,para_value4,para_value5,para_value6,para_value7,para_value8,para_value9,para_value10,para_value11,rdvalue1,rdvalue2,remark2)
 VALUES(TO_NUMBER(:INOUT_CODE),SYSDATE,:OPER_STAFF_ID,:OPER_FLAG,:RES_TYPE_CODE,:CARD_TYPE_CODE,:VALUE_CODE,:EPARCHY_CODE,:CITY_CODE,:DEPART_ID,:STAFF_ID,TO_NUMBER(:OPER_NUM),TO_NUMBER(:BATCH_ID),:START_RES_NO,:END_RES_NO,DECODE(:LOG_ID,'0',TO_NUMBER(:INOUT_CODE),TO_NUMBER(:LOG_ID)),:RSRV_TAG1,:RSRV_TAG2,:RSRV_TAG3,:PARA_VALUE1,:PARA_VALUE2,:PARA_VALUE3,:PARA_VALUE4,:PARA_VALUE5,:PARA_VALUE6,:PARA_VALUE7,:PARA_VALUE8,TO_NUMBER(:PARA_VALUE9),TO_NUMBER(:PARA_VALUE10),TO_NUMBER(:PARA_VALUE11),TO_DATE(:RDVALUE1,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RDVALUE2,'YYYY-MM-DD HH24:MI:SS'),:REMARK2)