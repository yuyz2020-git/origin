UPDATE TF_F_USER_PLATSVC
   SET END_DATE = TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS') -
                  1 / 24 / 3600,
       REMARK   = :REMARK
 WHERE PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND USER_ID = TO_NUMBER(:USER_ID)
   AND BIZ_TYPE_CODE IN
       (SELECT PARAM_CODE
          FROM TD_S_COMMPARA
         WHERE PARAM_ATTR = 3
           AND PARA_CODE1 = 'DSMP'
           AND EPARCHY_CODE = 'ZZZZ'
           AND SYSDATE BETWEEN START_DATE AND END_DATE)
   AND TO_DATE(:ACCEPT_DATE, 'YYYY-MM-DD HH24:MI:SS') BETWEEN START_DATE AND
       END_DATE
   AND SP_CODE NOT LIKE 'SW%'