INSERT INTO tf_f_user_ingw(partition_id,user_id,serial_number,regist_date,rsrv_str1,rsrv_str2,rsrv_num3,rsrv_num4,rsrv_dat5,rsrv_dat6)
 VALUES(MOD(TO_NUMBER(:USER_ID),10000),TO_NUMBER(:USER_ID),:SERIAL_NUMBER,TO_DATE(:REGIST_DATE,'YYYY-MM-DD HH24:MI:SS'),:RSRV_STR1,:RSRV_STR2,TO_NUMBER(:RSRV_NUM3),TO_NUMBER(:RSRV_NUM4),TO_DATE(:RSRV_DAT5,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DAT6,'YYYY-MM-DD HH24:MI:SS'))