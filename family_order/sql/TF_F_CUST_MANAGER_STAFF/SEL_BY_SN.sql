--IS_CACHE=Y
SELECT CUST_MANAGER_ID, CUST_MANAGER_NAME, JOB_TYPE, VALID_TAG, to_char(INVALID_DATE,'yyyy-mm-dd hh24:mi:ss') INVALID_DATE, DEPART_ID, DEPART_FRAME, AREA_CODE, AREA_FRAME, LINK_PHONE, SERIAL_NUMBER, DUTY, LOCAL_NATIVE, SEX, to_char(BIRTHDAY,'yyyy-mm-dd hh24:mi:ss') BIRTHDAY, USER_PID, GRADUATE_SCHOOL, EDUCATE_GRADE_CODE, SPECIALITY, HOME_ADDRESS, HOME_PHONE, WORK_BOUND, WORK_STORY, to_char(WORK_DATE,'yyyy-mm-dd hh24:mi:ss') WORK_DATE, WORK_FUNC, POLITY, FAX, EMAIL, TRAIT, HOBBY, TRAIN_RECORD, APPRAISE_TAG, to_char(ID) ID, to_char(UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, to_char(RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1, to_char(RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2, to_char(RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3
   FROM TF_F_CUST_MANAGER_STAFF
   WHERE SERIAL_NUMBER = :SERIAL_NUMBER
   AND VALID_TAG = '1'