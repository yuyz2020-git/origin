select  t.*
  from tf_b_trade t, tf_b_trade_widenet t2
 where t.serial_number = 'KD_'||:SERIAL_NUMBER
   and t.trade_type_code in ('600','613')
   and (t2.RSRV_STR2 = '3' or t2.RSRV_STR2 = '5')
   and t.trade_id = t2.trade_id
  