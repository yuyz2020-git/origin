SELECT apply_id_sub_1,apply_id_detail,detail_info_tag,relation_id,rsrv_str21,rsrv_str22,rsrv_str23,rsrv_str24,rsrv_str25,rsrv_str26,rsrv_str27,rsrv_str28,rsrv_str29,rsrv_str30 
  FROM tf_b_trade_span_apply_detail a,tf_b_trade_span_apply_sub b
 WHERE b.apply_id_1 = :APPLY_ID_1
   AND a.apply_id_sub_1 = b.apply_id_sub