SELECT 
to_char(t1.log_id) log_id,to_char(sub_log_id) sub_log_id,eparchy_code,city_code,res_type_code,res_kind_code,sale_type_code,to_char(t2.sale_num) sale_num,t2.start_value,t2.end_value,stock_id,to_char(t2.sale_money/100) sale_money,to_char(t2.advance_pay/100) advance_pay,to_char(t2.old_money/100) old_money,to_char(t2.agent_fee/100)  agent_fee,discount,pay_type_code,value_code,check_card_no,to_char(t2.sale_time,'yyyy-mm-dd hh24:mi:ss') sale_time,sale_staff_id,sale_depart_id,PRODUCT_ID, remark,rsrv_tag1,rsrv_tag2,rsrv_tag3,to_char(rsrv_date1,'yyyy-mm-dd hh24:mi:ss') rsrv_date1,to_char(rsrv_date2,'yyyy-mm-dd hh24:mi:ss') rsrv_date2,to_char(rsrv_date3,'yyyy-mm-dd hh24:mi:ss') rsrv_date3,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_num1,rsrv_num2,rsrv_num3 
FROM 
   (SELECT Distinct(log_id), sub_log_id ,eparchy_code,city_code,res_type_code,sale_type_code,stock_id,discount,pay_type_code,check_card_no,sale_staff_id,sale_depart_id,product_id,remark,rsrv_tag1,rsrv_tag2,rsrv_tag3,rsrv_date1,rsrv_date2,rsrv_date3,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_num1,rsrv_num2,rsrv_num3 FROM tf_b_cardsale_log b
    WHERE b.sale_type_code='3' AND b.eparchy_code=:EPARCHY_CODE AND b.res_Type_code=:RES_TYPE_CODE and (:LOG_ID is null or b.log_id=TO_NUMBER(:LOG_ID)) AND (:SALE_STAFF_ID is null or b.sale_staff_id =:SALE_STAFF_ID) AND (:START_VALUE is null or b.start_value >=:START_VALUE) AND (:END_VALUE is null or b.end_value <=:END_VALUE) AND b.sale_time>=to_date(:START_DATE,'yyyymmdd') and b.sale_time<=to_date(:END_DATE,'yyyymmdd')+1 and not exists (select 1 from tf_b_cardsale_log c where c.sub_log_id=b.log_id and sale_type_code ='5')
     AND b.sale_depart_id IN (  SELECT depart_id FROM td_s_assignrule WHERE res_type_code=DECODE(:RES_TYPE_CODE,'6','1',:RES_TYPE_CODE) AND depart_frame LIKE (SELECT c.depart_frame||'%'  FROM td_s_assignrule c , td_s_assignrule d WHERE ( c.depart_id=substr(d.depart_frame,length(d.depart_frame)-14,5) OR c.depart_id=substr(d.depart_frame,length(d.depart_frame)-9,5) OR c.depart_id=d.depart_id) AND c.res_type_code=d.res_type_code AND c.eparchy_code= d.eparchy_code AND c.res_type_code=DECODE(:RES_TYPE_CODE,'6','1',:RES_TYPE_CODE) AND d.depart_id=:SALE_DEPART_ID AND c.depart_kind_code='00Y'))) t1,
   (SELECT log_id, SUM(sale_num) sale_num, MIN(start_value) start_value, MAX(end_value) end_value,SUM(sale_money) sale_money,SUM(advance_pay) advance_pay, sum(old_money) old_money,SUM(agent_fee) agent_fee, MAX(sale_time) sale_time, MAX(value_code) value_code, MAX(res_kind_code) res_kind_code,MAX(product_id) product_id FROM tf_b_cardsale_log b
    WHERE sale_type_code='3' AND eparchy_code=:EPARCHY_CODE AND res_Type_code=:RES_TYPE_CODE and (:LOG_ID is null or b.log_id=TO_NUMBER(:LOG_ID)) AND (:SALE_STAFF_ID is null or sale_staff_id =:SALE_STAFF_ID) AND (:START_VALUE is null or b.start_value >=:START_VALUE) AND (:END_VALUE is null or b.end_value <=:END_VALUE) AND sale_time>=to_date(:START_DATE,'yyyymmdd') and sale_time<=to_date(:END_DATE,'yyyymmdd')+1 and not exists (select 1 from tf_b_cardsale_log c where c.sub_log_id=b.log_id and sale_type_code='5') 
    AND b.sale_depart_id IN (SELECT depart_id FROM td_s_assignrule WHERE res_type_code=DECODE(:RES_TYPE_CODE,'6','1',:RES_TYPE_CODE) AND depart_frame LIKE (SELECT c.depart_frame||'%'  FROM td_s_assignrule c , td_s_assignrule d WHERE ( c.depart_id=substr(d.depart_frame,length(d.depart_frame)-14,5) OR c.depart_id=substr(d.depart_frame,length(d.depart_frame)-9,5) OR c.depart_id=d.depart_id) AND c.res_type_code=d.res_type_code AND c.eparchy_code= d.eparchy_code AND c.res_type_code=DECODE(:RES_TYPE_CODE,'6','1',:RES_TYPE_CODE) AND d.depart_id=:SALE_DEPART_ID AND c.depart_kind_code='00Y') ) GROUP BY log_id ) t2
WHERE t1.log_id=t2.log_id