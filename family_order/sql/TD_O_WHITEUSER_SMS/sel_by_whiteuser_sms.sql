--IS_CACHE=Y
select white_type, white_serinum, eparchy_code,join_reason, to_char(start_time,'yyyy-mm-dd hh24:mi:ss') start_time,to_char(end_time,'yyyy-mm-dd hh24:mi:ss') end_time,remark, to_char(update_time,'yyyy-mm-dd hh24:mi:ss') update_time,update_staff,update_depart, rsrv_str1,rsrv_str2,rsrv_str3,0 x_tag from td_o_whiteuser_sms where (:WHITE_SERINUM is null or (:WHITE_SERINUM is not null and white_serinum = :WHITE_SERINUM))and (:WHITE_TYPE is null or (:WHITE_TYPE is not null and white_type = :WHITE_TYPE)) and (:EPARCHY_CODE is null or (:EPARCHY_CODE is not null and eparchy_code = to_char(:EPARCHY_CODE))) and (:START_TIME is null or (:START_TIME is not null and start_time > to_date(:START_TIME, 'yyyy-mm-dd hh24:mi:ss')))and (:END_TIME is null or(:END_TIME is not null and end_time <to_date(:END_TIME, 'yyyy-mm-dd hh24:mi:ss')))