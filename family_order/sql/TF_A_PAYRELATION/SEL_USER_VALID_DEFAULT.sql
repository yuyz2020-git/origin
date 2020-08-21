SELECT /*+ index(a IDX_ACCT_ID_DEFTAG) */ partition_id,to_char(user_id) user_id,to_char(acct_id) acct_id,payitem_code,acct_priority,user_priority,bind_type,start_cycle_id,end_cycle_id,default_tag,act_tag,limit_type,to_char(limit) limit,complement_tag,update_staff_id,update_depart_id,to_char(update_time,'yyyy-mm-dd hh24:mi:ss') update_time
  FROM tf_a_payrelation a
  WHERE a.acct_id = TO_NUMBER(:ACCT_ID)
  AND TO_CHAR(SYSDATE, 'YYYYMMDD') < a.end_cycle_id
  AND a.default_tag = '1'
  AND a.act_tag = '1'