INSERT INTO tf_f_spanopen(booking_id,base_line,dead_line,subscribe_type,subscribe_state,org_serial_number,cust_name,pspt_type_code,pspt_number,contact_name,contact_mobile,contact_phone,contact_fax,contact_email,org_staff_name,org_staff_id,org_staff_mobile,org_staff_phone,org_staff_fax,org_staff_email,booking_open_area,booking_open_date,need_destroy,need_spec_num,need_move_score,confirm_open_area,confirm_open_date,dest_staff_name,dest_staff_id,dest_staff_mobile,dest_staff_phone,dest_staff_fax,dest_staff_email,confirm_spec_num,check_tag,reason,success_moved_score,stand_by)
 select booking_id,base_line,dead_line,subscribe_type,'0',org_serial_number,cust_name,pspt_type_code,pspt_number,contact_name,contact_mobile,contact_phone,contact_fax,contact_email,org_staff_name,org_staff_id,org_staff_mobile,org_staff_phone,org_staff_fax,org_staff_email,booking_open_area,booking_open_date,need_destroy,need_spec_num,need_move_score,confirm_open_area,confirm_open_date,dest_staff_name,dest_staff_id,dest_staff_mobile,dest_staff_phone,dest_staff_fax,dest_staff_email,confirm_spec_num,check_tag,reason,success_moved_score,stand_by
  from tf_b_trade_spanopen
 where trade_id = :TRADE_ID