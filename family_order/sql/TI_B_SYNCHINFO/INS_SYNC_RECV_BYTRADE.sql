INSERT INTO ti_a_sync_recv
  (sync_sequence,
   trade_id,
   trade_type_code,
   batch_id,
   priority,
   charge_id,
   acct_id,
   user_id,
   serial_number,
   acct_id2,
   user_id2,
   writeoff_mode,
   channel_id,
   payment_id,
   pay_fee_mode_code,
   payment_op,
   recv_fee,
   recv_time,
   recv_eparchy_code,
   recv_city_code,
   recv_depart_id,
   recv_staff_id,
   payment_reason_code,
   act_tag,
   action_code,
   remark,
   outer_trade_id,
   cancel_tag,
   deal_tag,
   deal_time,
   result_code,
   result_info,
   start_cycle_id,
   end_cycle_id,
   start_date,
   months,
   amonth,
   limit_money,
   batdealtime,
   rsrv_fee1,
   rsrv_fee2,
   rsrv_info1,
   rsrv_date1,
   modify_tag,
   valid_tag,
   rsrv_info2,
   rsrv_info3)
select 
   TO_NUMBER(:SYNC_SEQUENCE),
   t.trade_id,
   '7044',
   f_sys_getseqid('0898','SEQ_BILL_SYN_ID'),
   '0',
   t.trade_id,
   b.acct_id,
   b.user_id,
   b.serial_number,
   '0',
   '0',
   '1',
   '15000',
   '102',
   '0',
   '16000',
   '0',
   sysdate,
   b.eparchy_code,
   b.city_code,
   t.update_depart_id,
   t.update_staff_id,
   '0',
   '4',
   t.a_discnt_code,
   null,
   t.trade_id,
   '0',
   '0',
   sysdate,
   '0',
   null,
   to_number(to_char(t.start_date,'yyyymm')),
   to_number(to_char(t.end_date,'yyyymm')),
   t.start_date,
   t.months,
   '0',
   t.limit_money,
   sysdate,
   null,
   null,
   b.serial_number,
   t.rsrv_date1,
   '0',
   '0',
   null,
   null 
 from tf_b_trade_sale_deposit t, tf_b_trade b
 where b.trade_id=t.trade_id
 and   b.trade_id=to_number(:TRADE_ID)
 and  t.trade_id=to_number(:TRADE_ID)
 and  t.start_date>sysdate
 and  t.end_date>sysdate