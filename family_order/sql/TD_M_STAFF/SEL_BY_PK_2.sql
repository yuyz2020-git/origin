--IS_CACHE=Y
SELECT staff_id,depart_id,staff_name,job_code,manager_info,sex,email,user_pid,serial_number,to_char(cust_id) cust_id,dimission_tag,to_char(birthday,'yyyy-mm-dd hh24:mi:ss') birthday,staff_group_id,cust_hobyy,manager_staff_id,receive_type_code,login_flag,cust_manager_flag,city_code,eparchy_code,remark,rsvalue1,rsvalue2,to_char(update_time,'yyyy-mm-dd hh24:mi:ss') update_time,update_staff_id,update_depart_id 
  FROM td_m_staff
 WHERE staff_id=:STAFF_ID

