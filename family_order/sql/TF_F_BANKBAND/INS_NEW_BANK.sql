INSERT INTO tf_f_bankband(user_band_id,user_id,bank_card_no,update_staff_id,update_depart_id,update_time,start_time,end_time,reck_tag)
 VALUES(TO_NUMBER(:USER_BAND_ID),TO_NUMBER(:USER_ID),:BANK_CARD_NO,:UPDATE_STAFF_ID,:UPDATE_DEPART_ID,SYSDATE,TO_DATE(:START_TIME,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:END_TIME,'YYYY-MM-DD HH24:MI:SS'),:RECK_TAG)