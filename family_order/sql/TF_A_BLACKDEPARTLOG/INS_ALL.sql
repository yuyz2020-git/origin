INSERT INTO tf_a_blackdepartlog(depart_id,depart_code,oper_type,reason_code,recv_date,recv_eparchy_code,recv_city_code,recv_depart_id,recv_staff_id,remark,rsrv_tag1,rsrv_tag2,rsrv_str1,rsrv_str2)
 VALUES(:DEPART_ID,:DEPART_CODE,:OPER_TYPE,:REASON_CODE,TO_DATE(:RECV_DATE,'YYYY-MM-DD HH24:MI:SS'),:RECV_EPARCHY_CODE,:RECV_CITY_CODE,:RECV_DEPART_ID,:RECV_STAFF_ID,:REMARK,:RSRV_TAG1,:RSRV_TAG2,:RSRV_STR1,:RSRV_STR2)