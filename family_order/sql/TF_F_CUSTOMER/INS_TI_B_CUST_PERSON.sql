INSERT INTO TI_B_CUST_PERSON
  (SYNC_SEQUENCE,
   MODIFY_TAG,
   TRADE_ID,
   PARTITION_ID,
   CUST_ID,
   PSPT_TYPE_CODE,
   PSPT_ID,
   PSPT_END_DATE,
   PSPT_ADDR,
   CUST_NAME,
   SEX,
   EPARCHY_CODE,
   CITY_CODE,
   BIRTHDAY,
   BIRTHDAY_LUNAR,
   BIRTHDAY_FLAG,
   POST_ADDRESS,
   POST_CODE,
   POST_PERSON,
   PHONE,
   FAX_NBR,
   EMAIL,
   HOME_ADDRESS,
   HOME_PHONE,
   WORK_NAME,
   WORK_KIND,
   WORK_ADDRESS,
   WORK_PHONE,
   WORK_POST_CODE,
   CALLING_TYPE_CODE,
   SUB_CALLING_TYPE_CODE,
   WORK_DEPART,
   JOB,
   CONTACT,
   CONTACT_PHONE,
   CONTACT_TYPE_CODE,
   CONTACT_FREQ,
   NATIONALITY_CODE,
   LOCAL_NATIVE_CODE,
   POPULATION,
   LANGUAGE_CODE,
   FOLK_CODE,
   RELIGION_CODE,
   JOB_TYPE_CODE,
   REVENUE_LEVEL_CODE,
   EDUCATE_DEGREE_CODE,
   EDUCATE_GRADE_CODE,
   GRADUATE_SCHOOL,
   SPECIALITY,
   CHARACTER_TYPE_CODE,
   HEALTH_STATE_CODE,
   MARRIAGE,
   WEBUSER_ID,
   WEB_PASSWD,
   COMMUNITY_ID,
   REMOVE_TAG,
   REMOVE_DATE,
   REMOVE_STAFF_ID,
   REMOVE_CHANGE,
   UPDATE_TIME,
   UPDATE_STAFF_ID,
   UPDATE_DEPART_ID,
   REMARK,
   RSRV_NUM1,
   RSRV_NUM2,
   RSRV_NUM3,
   RSRV_STR1,
   RSRV_STR2,
   RSRV_STR3,
   RSRV_STR4,
   RSRV_STR5,
   RSRV_STR6,
   RSRV_STR7,
   RSRV_STR8,
   RSRV_DATE1,
   RSRV_DATE2,
   RSRV_DATE3,
   RSRV_TAG1,
   RSRV_TAG2,
   RSRV_TAG3,
   SYNC_DAY)
  SELECT :SYNC_SEQUENCE,
         '8',
         :TRADE_ID,
         PARTITION_ID,
         CUST_ID,
         PSPT_TYPE_CODE,
         PSPT_ID,
         PSPT_END_DATE,
         PSPT_ADDR,
         CUST_NAME,
         SEX,
         EPARCHY_CODE,
         CITY_CODE,
         BIRTHDAY,
         BIRTHDAY_LUNAR,
         BIRTHDAY_FLAG,
         POST_ADDRESS,
         POST_CODE,
         POST_PERSON,
         PHONE,
         FAX_NBR,
         EMAIL,
         HOME_ADDRESS,
         HOME_PHONE,
         WORK_NAME,
         WORK_KIND,
         WORK_ADDRESS,
         WORK_PHONE,
         WORK_POST_CODE,
         CALLING_TYPE_CODE,
         SUB_CALLING_TYPE_CODE,
         WORK_DEPART,
         JOB,
         CONTACT,
         CONTACT_PHONE,
         CONTACT_TYPE_CODE,
         CONTACT_FREQ,
         NATIONALITY_CODE,
         LOCAL_NATIVE_CODE,
         POPULATION,
         LANGUAGE_CODE,
         FOLK_CODE,
         RELIGION_CODE,
         JOB_TYPE_CODE,
         REVENUE_LEVEL_CODE,
         EDUCATE_DEGREE_CODE,
         EDUCATE_GRADE_CODE,
         GRADUATE_SCHOOL,
         SPECIALITY,
         CHARACTER_TYPE_CODE,
         HEALTH_STATE_CODE,
         MARRIAGE,
         WEBUSER_ID,
         WEB_PASSWD,
         COMMUNITY_ID,
         REMOVE_TAG,
         REMOVE_DATE,
         REMOVE_STAFF_ID,
         REMOVE_CHANGE,
         UPDATE_TIME,
         UPDATE_STAFF_ID,
         UPDATE_DEPART_ID,
         REMARK,
         RSRV_NUM1,
         RSRV_NUM2,
         RSRV_NUM3,
         RSRV_STR1,
         RSRV_STR2,
         RSRV_STR3,
         RSRV_STR4,
         RSRV_STR5,
         RSRV_STR6,
         RSRV_STR7,
         RSRV_STR8,
         RSRV_DATE1,
         RSRV_DATE2,
         RSRV_DATE3,
         RSRV_TAG1,
         RSRV_TAG2,
         RSRV_TAG3,
         TO_NUMBER(SUBSTR(TO_CHAR(:SYNC_SEQUENCE), 7, 2))
    FROM TF_F_CUST_PERSON T
   WHERE T.CUST_ID = :CUST_ID
     AND T.PARTITION_ID = MOD(:CUST_ID, 10000)
