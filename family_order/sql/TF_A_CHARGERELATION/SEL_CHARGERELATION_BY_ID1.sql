SELECT to_char(operate_id1) operate_id1,operate_type1,to_char(operate_id2) operate_id2,operate_type2,relation_type,to_char(update_time,'yyyy-mm-dd hh24:mi:ss') update_time,partition_id,eparchy_code,to_char(trade_id) trade_id 
  FROM tf_a_chargerelation
 WHERE operate_id1=TO_NUMBER(:OPERATE_ID1)