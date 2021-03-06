SELECT ROWNUM id,TO_NUMBER(trade_id) trade_id,
  stat_type,rsrv_tag1,
  res_type_code,card_type_code,
  oper_flag,eparchy_code,city_code,depart_id,staff_id,
  to_char(para_value9) para_value9, 
  to_char(rdvalue1,'yyyy-mm-dd hh24:mi:ss') rdvalue1,
  to_char(rdvalue2,'yyyy-mm-dd hh24:mi:ss') rdvalue2,
  remark2 
 FROM tf_b_resdaystat_log rl
 WHERE	rl.oper_time >= TO_DATE(:OPER_TIME, 'YYYY-MM-DD')
  AND   rl.oper_time <= TO_DATE(:OPER_TIME, 'YYYY-MM-DD')+1
  AND   rl.oper_date_str=:OPER_DATE_STR
  AND   rl.stat_type=:STAT_TYPE 
  AND   rl.res_type_code=:RES_TYPE_CODE 
  AND  (:CARD_TYPE_CODE IS NULL OR rl.card_type_code=:CARD_TYPE_CODE)
  AND  (:RSRV_TAG1 IS NULL OR rl.rsrv_tag1=:RSRV_TAG1)
  AND  (:OPER_FLAG IS NULL OR rl.oper_flag=:OPER_FLAG)
  AND  rl.eparchy_code=:EPARCHY_CODE   
  AND  (:CITY_CODE IS NULL OR rl.city_code=:CITY_CODE) 	
  AND  ((:STAFF_ID_S IS NULL AND :STAFF_ID_E IS NULL)
	  OR (rl.staff_id>=:STAFF_ID_S AND rl.staff_id<=:STAFF_ID_E))
  AND  (:PARA_VALUE9='@' OR rl.para_value9>=TO_NUMBER(:PARA_VALUE9))
  AND EXISTS
   (SELECT 1 FROM td_s_reskind rk
    WHERE rk.eparchy_code=:EPARCHY_CODE
    AND  rk.res_type_code=:RES_TYPE_CODE
    AND  rk.res_kind_code=rl.card_type_code)