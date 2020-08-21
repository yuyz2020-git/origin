SELECT TO_CHAR(a.batch_task_id) batch_task_id,
       TO_CHAR(a.batch_id) batch_id,
	   TO_CHAR(a.operate_id) operate_id,
	   TO_CHAR(a.trade_id) trade_id,
	   a.batch_oper_type,
       a.priority,
	   TO_CHAR(a.refer_time,'yyyy-mm-dd hh24:mi:ss') refer_time,
	   TO_CHAR(a.exec_time,'yyyy-mm-dd hh24:mi:ss') exec_time,
	   a.serial_number,
       a.route_eparchy_code,
       a.db_source,
       a.data1,a.data2,a.data3,a.data4,a.data5,a.data6,a.data7,a.data8,a.data9,a.data10,
       a.data11,a.data12,a.data13,a.data14,a.data15,a.data16,a.data17,a.data18,a.data19,a.data20,
       a.cancel_tag,
       TO_CHAR(a.cancel_date,'yyyy-mm-dd hh24:mi:ss') cancel_date,
       a.cancel_staff_id,
       a.cancel_depart_id,
       a.cancel_city_code,
       a.cancel_eparchy_code,
       a.deal_state,
       TO_CHAR(a.deal_time,'yyyy-mm-dd hh24:mi:ss') deal_time,
       a.deal_result,
	   a.deal_desc
  FROM tf_b_trade_batdeal a
 WHERE a.operate_id = TO_NUMBER(:OPERATE_ID)