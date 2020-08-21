SELECT contract_id,to_char(batch_id) batch_id,res_type_code,start_res_no,end_res_no,res_kind_code,capacity_type_code,eparchy_code,city_code,depart_id,to_char(plan_start_time,'yyyy-mm-dd hh24:mi:ss') plan_start_time,to_char(plan_end_time,'yyyy-mm-dd hh24:mi:ss') plan_end_time,to_char(finish_time,'yyyy-mm-dd hh24:mi:ss') finish_time,assign_staff_id,to_char(assign_num) assign_num,factory_code,to_char(sale_price) sale_price,to_char(sale_money) sale_money,sale_type_code,pay_type_code,staff_name,to_char(fee_time,'yyyy-mm-dd hh24:mi:ss') fee_time,back_tag,remark2,rsrv_tag1,rsrv_tag2,rsrv_tag3,to_char(rsrv_date1,'yyyy-mm-dd hh24:mi:ss') rsrv_date1,to_char(rsrv_date2,'yyyy-mm-dd hh24:mi:ss') rsrv_date2,to_char(rsrv_date3,'yyyy-mm-dd hh24:mi:ss') rsrv_date3,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_num1,rsrv_num2,rsrv_num3 
  FROM tf_b_resorder_contract
 WHERE city_code = :CITY_CODE
   AND contract_id like :CITY_CODE||to_char(sysdate,'YYMMDD')||'%' order by contract_id desc