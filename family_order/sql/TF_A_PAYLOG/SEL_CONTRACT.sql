SELECT to_char(charge_id) charge_id,partition_id,eparchy_code,city_code,to_char(cust_id) cust_id,to_char(user_id) user_id,to_char(acct_id) acct_id,charge_source_code,pay_fee_mode_code,to_char(recv_fee) recv_fee,deposit_code,cancel_tag,to_char(recv_time,'yyyy-mm-dd hh24:mi:ss') recv_time,recv_eparchy_code,recv_city_code,recv_depart_id,recv_staff_id,to_char(cancel_time,'yyyy-mm-dd hh24:mi:ss') cancel_time,cancel_eparchy_code,cancel_city_code,cancel_depart_id,cancel_staff_id 
  FROM tf_a_paylog
 WHERE (CHARGE_ID ,PARTITION_ID) IN (
SELECT TRADE_ID,PARTITION_ID FROM TF_A_CHARGERELATION WHERE OPERATE_ID1=:USER_ID
AND OPERATE_TYPE1='3' AND OPERATE_ID2=:BCYC_ID AND OPERATE_TYPE2='3'
AND RELATION_TYPE='6') AND CANCEL_TAG='0'