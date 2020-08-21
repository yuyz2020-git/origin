INSERT INTO tf_b_trade_spanopen(trade_id,booking_id,base_line,dead_line,oper_type,subscribe_type,org_serial_number,cust_name,pspt_type_code,pspt_number,contact_name,contact_mobile,contact_phone,contact_fax,contact_email,org_staff_name,org_staff_id,org_staff_mobile,org_staff_phone,org_staff_fax,org_staff_email,booking_open_area,booking_open_date,need_destroy,need_spec_num,need_move_score,confirm_open_area,confirm_open_date,dest_staff_name,dest_staff_id,dest_staff_mobile,dest_staff_phone,dest_staff_fax,dest_staff_email,confirm_spec_num,passwd,check_tag,reason,success_moved_score,stand_by)
 VALUES(TO_NUMBER(:TRADE_ID),:BOOKING_ID,TO_DATE(:BASE_LINE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:DEAD_LINE,'YYYY-MM-DD HH24:MI:SS'),:OPER_TYPE,:SUBSCRIBE_TYPE,:ORG_SERIAL_NUMBER,:CUST_NAME,:PSPT_TYPE_CODE,:PSPT_NUMBER,:CONTACT_NAME,:CONTACT_MOBILE,:CONTACT_PHONE,:CONTACT_FAX,:CONTACT_EMAIL,:ORG_STAFF_NAME,:ORG_STAFF_ID,:ORG_STAFF_MOBILE,:ORG_STAFF_PHONE,:ORG_STAFF_FAX,:ORG_STAFF_EMAIL,:BOOKING_OPEN_AREA,TO_DATE(:BOOKING_OPEN_DATE,'YYYY-MM-DD HH24:MI:SS'),:NEED_DESTROY,:NEED_SPEC_NUM,:NEED_MOVE_SCORE,:CONFIRM_OPEN_AREA,TO_DATE(:CONFIRM_OPEN_DATE,'YYYY-MM-DD HH24:MI:SS'),:DEST_STAFF_NAME,:DEST_STAFF_ID,:DEST_STAFF_MOBILE,:DEST_STAFF_PHONE,:DEST_STAFF_FAX,:DEST_STAFF_EMAIL,:CONFIRM_SPEC_NUM,:PASSWD,:CHECK_TAG,:REASON,:SUCCESS_MOVED_SCORE,:STAND_BY)