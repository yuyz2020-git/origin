DELETE TF_F_USER_PLATSVC A
 WHERE PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND USER_ID = TO_NUMBER(:USER_ID)
   AND BIZ_STATE_CODE IN ('A', 'N', 'E')
   AND ORG_DOMAIN = :ORG_DOMAIN
   AND START_DATE > LAST_DAY(SYSDATE)
   AND EXISTS (SELECT 1
          FROM TD_B_PLATSVC B
         WHERE A.SERVICE_ID = B.SERVICE_ID
           AND B.SERV_TYPE = '1')