SELECT to_char(bill_id) bill_id,integrate_item_code,integrate_item,to_char(fee) fee,to_char(adjust_fee) adjust_fee,to_char(b_discnt) b_discnt,to_char(a_discnt) a_discnt,to_char(balance) balance,to_char(nbalance) nbalance,to_char(late_balance) late_balance,to_char(nlate_balance) nlate_balance,late_flag,to_char(latecal_date,'yyyy-mm-dd hh24:mi:ss') latecal_date,pay_tag,npay_tag,to_char(imp_fee) imp_fee,recv_acyc_id,to_char(mconsign_id) mconsign_id,to_char(acct_id) acct_id,eparchy_code,acyc_id 
  FROM tf_a_subconsigninfolog
 WHERE eparchy_code=:EPARCHY_CODE AND recv_acyc_id =:RECV_ACYC_ID