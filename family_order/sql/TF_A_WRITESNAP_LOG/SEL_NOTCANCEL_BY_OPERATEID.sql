SELECT to_char(operate_id) operate_id,operate_type,partition_id,to_char(acct_id) acct_id,writeoff_mode,to_char(spay_fee) spay_fee,to_char(all_money) all_money,to_char(all_new_money) all_new_money,to_char(all_balance) all_balance,to_char(all_new_balance) all_new_balance,to_char(allbowe_fee) allbowe_fee,to_char(allrowe_fee) allrowe_fee,recover_tag,to_char(old_round_fee) old_round_fee,to_char(new_round_fee) new_round_fee,to_char(operate_time,'yyyy-mm-dd hh24:mi:ss') operate_time,cancel_tag,to_char(allnewbowe_fee) allnewbowe_fee,to_char(prereal_fee) prereal_fee,to_char(curreal_fee) curreal_fee,rsrv_tag1,rsrv_info1,rsrv_info2,remark,to_char(rsrv_date1,'yyyy-mm-dd hh24:mi:ss') rsrv_date1,to_char(rsrv_date2,'yyyy-mm-dd hh24:mi:ss') rsrv_date2,to_char(rsrv_fee1) rsrv_fee1,to_char(rsrv_fee2) rsrv_fee2,eparchy_code ,to_char(rsrv_fee3) rsrv_fee3
  FROM tf_a_writesnap_log
 WHERE operate_id=TO_NUMBER(:OPERATE_ID)
   AND operate_type=:OPERATE_TYPE
   AND partition_id >= :START_PARTITION_ID
   AND partition_id <= :END_PARTITION_ID
   AND cancel_tag = '0'