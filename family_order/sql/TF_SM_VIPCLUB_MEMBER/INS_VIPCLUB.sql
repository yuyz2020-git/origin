INSERT INTO tf_sm_vipclub_member(member_id,club_id,vip_id,cust_name,vip_type_code,class_id,serial_number,vip_no,join_date,birth_yearmonth,contract_phone,parfor_score,create_time,create_staff_id,remart,prevaluen1,prevaluev1,prevaluev2,prevaluev3,prevaluev4,prevalued1,RSRV_STR1,RSRV_STR3)
 VALUES(SEQ_VIPVIPCLUB_MEMBER_ID.NEXTVAL,:CLUB_ID,:VIP_ID,:CUST_NAME,:VIP_TYPE_CODE,:CLASS_ID,:SERIAL_NUMBER,:VIP_NO,SYSDATE,TO_DATE(:BIRTH_YEARMONTH,'YYYY-MM-DD HH24:MI:SS'),:CONTRACT_PHONE,TO_NUMBER(:PARFOR_SCORE),SYSDATE,:CREATE_STAFF_ID,:REMART,TO_NUMBER(:PREVALUEN1),:PREVALUEV1,:PREVALUEV2,:PREVALUEV3,:PREVALUEV4,TO_DATE(:PREVALUED1,'YYYY-MM-DD HH24:MI:SS'),:RSRV_STR1,:RSRV_STR3)