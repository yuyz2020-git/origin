INSERT INTO ts_a_goods_staff(log_id,in_date,city_code,stock_id,staff_id,res_kind_code,capacity_type_code,eparchy_code,oper_type_code,stock_level,in_tag,modify_tag,fee,total_num,apply_num,cancel_num,oper_num,oper_staff_id,oper_depart_id,oper_time,remark,rsrv_tag1,rsrv_tag2,rsrv_tag3,rsrv_date1,rsrv_date2,rsrv_date3,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_num1,rsrv_num2,rsrv_num3,open_num1,open_num2,open_num3)
 VALUES(TO_NUMBER(:LOG_ID),(SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') FROM DUAL),:CITY_CODE,:STOCK_ID,:STAFF_ID,:RES_KIND_CODE,:CAPACITY_TYPE_CODE,:EPARCHY_CODE,:OPER_TYPE_CODE,:STOCK_LEVEL,:IN_TAG,:MODIFY_TAG,:FEE,TO_NUMBER(:TOTAL_NUM),TO_NUMBER(:APPLY_NUM),TO_NUMBER(:CANCEL_NUM),TO_NUMBER(:OPER_NUM),:OPER_STAFF_ID,:OPER_DEPART_ID,sysdate,:REMARK,:RSRV_TAG1,:RSRV_TAG2,:RSRV_TAG3,TO_DATE(:RSRV_DATE1,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DATE2,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DATE3,'YYYY-MM-DD HH24:MI:SS'),:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,:RSRV_STR6,:RSRV_STR7,:RSRV_NUM1,:RSRV_NUM2,:RSRV_NUM3,:OPEN_NUM1,:OPEN_NUM2,:OPEN_NUM3)