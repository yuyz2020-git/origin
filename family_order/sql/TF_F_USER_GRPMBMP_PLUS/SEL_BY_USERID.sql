SELECT partition_id,user_id,x_tag,biz_code,info_code,info_value,rsrv_str1,rsrv_str2,rsrv_str3 FROM TF_F_USER_GRPMBMP_PLUS a WHERE EXISTS(SELECT 1 FROM tf_b_trade_grpmbmp_plus WHERE  trade_id = :TRADE_ID  AND user_id = a.user_id AND biz_code = a.biz_code)