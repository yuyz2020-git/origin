UPDATE TF_F_USER_PLATSVC A
   SET A.END_DATE         = TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS') -
                            1 / 24 / 3600,
       REMARK   = '总开关关须终止相关订购关系',                     
       A.UPDATE_TIME      = SYSDATE,
       A.UPDATE_STAFF_ID  = :UPDATE_STAFF_ID,
       A.UPDATE_DEPART_ID = :UPDATE_DEPART_ID
   WHERE PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
     AND USER_ID = TO_NUMBER(:USER_ID)
      AND BIZ_STATE_CODE IN ('A','N')
     AND BIZ_TYPE_CODE IN
         (SELECT PARAM_CODE
            FROM TD_S_COMMPARA
           WHERE PARAM_ATTR = 3
             AND PARA_CODE1 = 'DSMP'
             AND EPARCHY_CODE = 'ZZZZ'
             AND SYSDATE BETWEEN START_DATE AND END_DATE)
     AND SYSDATE BETWEEN START_DATE AND END_DATE
     AND SP_CODE NOT LIKE 'SW%'
     AND EXISTS (SELECT 1
            FROM TD_B_PLATSVC B
           WHERE A.SERVICE_ID = B.SERVICE_ID
             AND B.SERV_TYPE = '1')