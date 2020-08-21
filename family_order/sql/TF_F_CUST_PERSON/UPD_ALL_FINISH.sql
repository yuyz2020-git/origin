UPDATE TF_F_CUST_PERSON SET 
PSPT_TYPE_CODE = :PSPT_TYPE_CODE, PSPT_ID = :PSPT_ID, PSPT_END_DATE = to_date(:PSPT_END_DATE,'yyyy-mm-dd hh24:mi:ss'), PSPT_ADDR = :PSPT_ADDR, CUST_NAME = :CUST_NAME, SEX = :SEX, EPARCHY_CODE = :EPARCHY_CODE, CITY_CODE = :CITY_CODE, BIRTHDAY = to_date(:BIRTHDAY,'yyyy-mm-dd hh24:mi:ss'), BIRTHDAY_LUNAR = :BIRTHDAY_LUNAR, BIRTHDAY_FLAG = :BIRTHDAY_FLAG, POST_ADDRESS = :POST_ADDRESS, POST_CODE = :POST_CODE, POST_PERSON = :POST_PERSON, PHONE = :PHONE, FAX_NBR = :FAX_NBR, EMAIL = :EMAIL, HOME_ADDRESS = :HOME_ADDRESS, HOME_PHONE = :HOME_PHONE, WORK_NAME = :WORK_NAME, WORK_KIND = :WORK_KIND, WORK_ADDRESS = :WORK_ADDRESS, WORK_PHONE = :WORK_PHONE, WORK_POST_CODE = :WORK_POST_CODE, CALLING_TYPE_CODE = :CALLING_TYPE_CODE, SUB_CALLING_TYPE_CODE = :SUB_CALLING_TYPE_CODE, WORK_DEPART = :WORK_DEPART, JOB = :JOB, CONTACT = :CONTACT, CONTACT_PHONE = :CONTACT_PHONE, CONTACT_TYPE_CODE = :CONTACT_TYPE_CODE, CONTACT_FREQ = :CONTACT_FREQ, NATIONALITY_CODE = :NATIONALITY_CODE, LOCAL_NATIVE_CODE = :LOCAL_NATIVE_CODE, POPULATION = :POPULATION, LANGUAGE_CODE = :LANGUAGE_CODE, FOLK_CODE = :FOLK_CODE, RELIGION_CODE = :RELIGION_CODE, JOB_TYPE_CODE = :JOB_TYPE_CODE, REVENUE_LEVEL_CODE = :REVENUE_LEVEL_CODE, EDUCATE_DEGREE_CODE = :EDUCATE_DEGREE_CODE, EDUCATE_GRADE_CODE = :EDUCATE_GRADE_CODE, GRADUATE_SCHOOL = :GRADUATE_SCHOOL, SPECIALITY = :SPECIALITY, CHARACTER_TYPE_CODE = :CHARACTER_TYPE_CODE, HEALTH_STATE_CODE = :HEALTH_STATE_CODE, MARRIAGE = :MARRIAGE, WEBUSER_ID = :WEBUSER_ID, WEB_PASSWD = :WEB_PASSWD, COMMUNITY_ID = :COMMUNITY_ID, REMOVE_TAG = :REMOVE_TAG, REMOVE_DATE = to_date(:REMOVE_DATE,'yyyy-mm-dd hh24:mi:ss'), REMOVE_STAFF_ID = :REMOVE_STAFF_ID, REMOVE_CHANGE = :REMOVE_CHANGE, UPDATE_TIME = to_date(:UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss'), UPDATE_STAFF_ID = :UPDATE_STAFF_ID, UPDATE_DEPART_ID = :UPDATE_DEPART_ID, REMARK = :REMARK, RSRV_NUM1 = :RSRV_NUM1, RSRV_NUM2 = :RSRV_NUM2, RSRV_NUM3 = :RSRV_NUM3, RSRV_STR1 = :RSRV_STR1, RSRV_STR2 = :RSRV_STR2, RSRV_STR3 = :RSRV_STR3, RSRV_STR4 = :RSRV_STR4, RSRV_STR5 = :RSRV_STR5, RSRV_STR6 = :RSRV_STR6, RSRV_STR7 = :RSRV_STR7, RSRV_STR8 = :RSRV_STR8, RSRV_DATE1 = to_date(:RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss'), RSRV_DATE2 = to_date(:RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss'), RSRV_DATE3 = to_date(:RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss'), RSRV_TAG1 = :RSRV_TAG1, RSRV_TAG2 = :RSRV_TAG2, RSRV_TAG3 = :RSRV_TAG3 WHERE PARTITION_ID = MOD(to_number(:USER_ID),10000) and CUST_ID = to_number(:CUST_ID)