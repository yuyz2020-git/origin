UPDATE tf_f_managerstaff
   SET vip_manager_name=:VIP_MANAGER_NAME,city_code=:CITY_CODE,duty=:DUTY,local_native=:LOCAL_NATIVE,sex=:SEX,birthday=TO_DATE(:BIRTHDAY, 'YYYY-MM-DD HH24:MI:SS'),user_pid=:USER_PID,school=:SCHOOL,educate_grade=:EDUCATE_GRADE,speciality=:SPECIALITY,home_address=:HOME_ADDRESS,work_date=TO_DATE(:WORK_DATE, 'YYYY-MM-DD HH24:MI:SS'),polity=:POLITY,depart=:DEPART,work_bound=:WORK_BOUND,link_phone=:LINK_PHONE,serial_number=TO_NUMBER(:SERIAL_NUMBER),fax=:FAX,email=:EMAIL,home_phone=:HOME_PHONE,trait=:TRAIT,hobby=:HOBBY,train_record=:TRAIN_RECORD,work_story=:WORK_STORY,appraise_tag=:APPRAISE_TAG,remark=:REMARK,update_staff_id=:UPDATE_STAFF_ID,update_depart_id=:UPDATE_DEPART_ID,update_time=sysdate,prevaluen1=TO_NUMBER(:PREVALUEN1),prevaluen2=TO_NUMBER(:PREVALUEN2),prevaluen3=TO_NUMBER(:PREVALUEN3),prevaluec1=:PREVALUEC1,prevaluec2=:PREVALUEC2,prevaluec3=:PREVALUEC3,prevaluec4=:PREVALUEC4,prevalued1=TO_DATE(:PREVALUED1, 'YYYY-MM-DD HH24:MI:SS'),prevalued2=TO_DATE(:PREVALUED2, 'YYYY-MM-DD HH24:MI:SS'),prevalued3=TO_DATE(:PREVALUED3, 'YYYY-MM-DD HH24:MI:SS')  
 WHERE vip_manager_id=:VIP_MANAGER_ID