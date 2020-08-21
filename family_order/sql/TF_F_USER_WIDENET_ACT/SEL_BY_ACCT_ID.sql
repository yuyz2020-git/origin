SELECT partition_id,
		to_char(user_id) user_id,
		acct_id,
		acct_passwd,
		main_tag,
		to_char(START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       to_char(END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE,
       to_char(UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,
		update_staff_id,
		update_depart_id,
		remark,
	    rsrv_num1,
    	rsrv_num2,
    	rsrv_num3,
    	rsrv_num4,
    	rsrv_num5,
    	rsrv_str1,
    	rsrv_str2,
    	rsrv_str3,
    	rsrv_str4,
    	rsrv_str5,
    	to_char(RSRV_DATE1, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,
       to_char(RSRV_DATE2, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,
       to_char(RSRV_DATE3, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3,
    	rsrv_tag1,
    	rsrv_tag2,
    	rsrv_tag3,
		INST_ID
  FROM tf_f_user_widenet_act
 WHERE acct_id=:ACCT_ID
   AND sysdate between start_date AND end_date