UPDATE TF_F_CUST_PERSON
   SET PSPT_TYPE_CODE      = :PSPT_TYPE_CODE,
       PSPT_ID             = :PSPT_ID,
       PSPT_END_DATE       = TO_DATE(:PSPT_END_DATE,
                                     'YYYY-MM-DD HH24:MI:SS'),
       PSPT_ADDR           = :PSPT_ADDR,
       CUST_NAME           = :CUST_NAME,
       SEX                 = :SEX,
       BIRTHDAY            = TO_DATE(:BIRTHDAY, 'YYYY-MM-DD HH24:MI:SS'),
       NATIONALITY_CODE    = :NATIONALITY_CODE,
       LOCAL_NATIVE_CODE   = :LOCAL_NATIVE_CODE,
       POPULATION          = :POPULATION,
       LANGUAGE_CODE       = :LANGUAGE_CODE,
       FOLK_CODE           = :FOLK_CODE,
       PHONE               = :PHONE,
       POST_CODE           = :POST_CODE,
       POST_ADDRESS        = :POST_ADDRESS,
       FAX_NBR             = :FAX_NBR,
       EMAIL               = :EMAIL,
       CONTACT             = :CONTACT,
       CONTACT_PHONE       = :CONTACT_PHONE,
       CONTACT_TYPE_CODE   = :CONTACT_TYPE_CODE,
       HOME_ADDRESS        = :HOME_ADDRESS,
       WORK_NAME           = :WORK_NAME,
       WORK_DEPART         = :WORK_DEPART,
       JOB                 = :JOB,
       JOB_TYPE_CODE       = :JOB_TYPE_CODE,
       EDUCATE_DEGREE_CODE = :EDUCATE_DEGREE_CODE,
       RELIGION_CODE       = :RELIGION_CODE,
       REVENUE_LEVEL_CODE  = :REVENUE_LEVEL_CODE,
       MARRIAGE            = :MARRIAGE,
       CHARACTER_TYPE_CODE = :CHARACTER_TYPE_CODE,
       WEBUSER_ID          = :WEBUSER_ID,
       WEB_PASSWD          = :WEB_PASSWD,
       COMMUNITY_ID        = :COMMUNITY_ID,
       REMARK    =:REMARK
 WHERE CUST_ID = TO_NUMBER(:CUST_ID)
   AND PARTITION_ID = MOD(TO_NUMBER(:CUST_ID), 10000)