SELECT A.PARTITION_ID,A.CUST_ID,A.CUST_NAME,A.SIMPLE_SPELL,A.CUST_TYPE,A.CUST_KIND,A.CUST_STATE,A.PSPT_TYPE_CODE,A.PSPT_ID,A.OPEN_LIMIT,A.EPARCHY_CODE,A.CITY_CODE,A.CUST_PASSWD,A.SCORE_VALUE,A.CREDIT_CLASS,A.BASIC_CREDIT_VALUE,A.CREDIT_VALUE,A.DEVELOP_STAFF_ID,A.DEVELOP_DEPART_ID,A.IN_DATE,A.IN_STAFF_ID,A.IN_DEPART_ID,A.REMOVE_TAG,A.REMOVE_DATE,A.REMOVE_STAFF_ID,A.REMOVE_CHANGE,A.UPDATE_TIME,A.UPDATE_STAFF_ID,A.UPDATE_DEPART_ID,A.REMARK,A.RSRV_STR1,A.RSRV_STR2,A.RSRV_STR3,A.RSRV_STR4,A.RSRV_STR5,A.RSRV_STR6,A.RSRV_STR7,A.RSRV_STR8,A.RSRV_STR9,A.RSRV_STR10,B.PSPT_END_DATE,B.PSPT_ADDR,B.SEX,B.BIRTHDAY,B.BIRTHDAY_LUNAR,B.BIRTHDAY_FLAG,B.POST_ADDRESS,B.POST_CODE,B.POST_PERSON,B.PHONE,B.FAX_NBR,B.EMAIL,B.HOME_ADDRESS,B.HOME_PHONE,B.WORK_NAME,B.WORK_KIND,B.WORK_ADDRESS,B.WORK_PHONE,B.WORK_POST_CODE,B.CALLING_TYPE_CODE,B.SUB_CALLING_TYPE_CODE,B.WORK_DEPART,B.JOB,B.CONTACT,B.CONTACT_PHONE,B.CONTACT_TYPE_CODE,B.CONTACT_FREQ,B.NATIONALITY_CODE,B.LOCAL_NATIVE_CODE,B.POPULATION,B.LANGUAGE_CODE,B.FOLK_CODE,B.RELIGION_CODE,B.JOB_TYPE_CODE,B.REVENUE_LEVEL_CODE,B.EDUCATE_DEGREE_CODE,B.EDUCATE_GRADE_CODE,B.GRADUATE_SCHOOL,B.SPECIALITY,B.CHARACTER_TYPE_CODE,B.HEALTH_STATE_CODE,B.MARRIAGE,B.WEBUSER_ID,B.WEB_PASSWD,B.COMMUNITY_ID
  FROM TF_F_CUSTOMER A, TF_F_CUST_PERSON B
 WHERE A.CUST_ID = B.CUST_ID
   AND A.CUST_TYPE = :CUST_TYPE
   AND A.PSPT_TYPE_CODE = :PSPT_TYPE_CODE
   AND A.PSPT_ID = :PSPT_ID
   AND rownum <= 30