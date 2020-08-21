SELECT  /*+ index(a IDX_TF_AHB_PAYLOG_2007_ACCT_ID) */ to_char(charge_id) charge_id,
       partition_id,
       eparchy_code,
       city_code,
       to_char(cust_id) cust_id,
       to_char(user_id) user_id,
       to_char(acct_id) acct_id,
       charge_source_code,
       pay_fee_mode_code,
       to_char(nvl(recv_fee,'0')) recv_fee,
       deposit_code,
       cancel_tag,
       to_char(recv_time, 'yyyy-mm-dd hh24:mi:ss') recv_time,
       recv_eparchy_code,
       recv_city_code,
       recv_depart_id,
       recv_staff_id,to_char(cancel_time,'yyyy-mm-dd hh24:mi:ss') cancel_time,cancel_eparchy_code,cancel_city_code,cancel_depart_id,cancel_staff_id 
  FROM tf_ahb_paylog_2007 a
 WHERE partition_id >= :PARTITION_ID1 and partition_id <= :PARTITION_ID2 AND
       eparchy_code = :EPARCHY_CODE AND acct_id = TO_NUMBER(:ACCT_ID) AND
       recv_time <= TO_DATE(:RECV_TIME_E, 'YYYY-MM-DD HH24:MI:SS') AND
       recv_time >=
       decode(:X_TAG,
              1,
              TO_DATE(:BEGIN_TIME, 'YYYY-MM-DD HH24:MI:SS'),
              0,
              add_months(TO_DATE(:END_TIME, 'YYYY-MM-DD HH24:MI:SS'),
                         :LIMIT_TIME))