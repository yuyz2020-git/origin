SELECT to_char(trade_id) trade_id,trade_type_code,group_id,vpmn_id,area_code,scp_code,vpmn_type,sub_state,func_tlags,inter_feeindex,out_feeindex,outgrp_feeindex,subgrp_feeindex,pre_ip_no,pre_ip_disc,othor_ip_disc,trans_no,max_close_num,max_num_close,person_maxclose,max_outnum,max_users,to_char(pkg_start_date,'yyyy-mm-dd hh24:mi:ss') pkg_start_date,pkg_type,discount,to_char(limit_fee) limit_fee,zone_max,zonefree_num,to_char(zone_fee) zone_fee,mt_maxnum,aip_id,to_char(accept_date,'yyyy-mm-dd hh24:mi:ss') accept_date,trade_staff_id,trade_depart_id,trade_city_code,trade_eparchy_code,client_info1,client_info2,client_info3,client_info4,client_info5,client_info6,client_info7,client_tag1,client_tag2,remark 
  FROM tf_b_trade_group
 WHERE trade_id=TO_NUMBER(:TRADE_ID)