update tf_f_user t set t.user_passwd = :USER_PASSWD where t.user_id=:USER_ID and t.partition_id = MOD(TO_NUMBER(:USER_ID),10000)