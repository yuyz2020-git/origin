INSERT INTO td_o_hastenstaff(staff_id,start_date,end_date,update_time,update_staff_id,update_depart_id)
 VALUES(:STAFF_ID,SYSDATE,TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),SYSDATE,:UPDATE_STAFF_ID,:UPDATE_DEPART_ID)