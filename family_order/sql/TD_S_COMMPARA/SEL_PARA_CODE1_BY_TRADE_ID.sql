SELECT PARA_CODE1
  FROM TD_S_COMMPARA
 WHERE PARAM_ATTR = TO_NUMBER(:PARAM_ATTR)
   AND SUBSYS_CODE = :SUBSYS_CODE
   AND SYSDATE BETWEEN START_DATE AND END_DATE
   AND PARAM_CODE IN
       (SELECT SERVICE_ID
          FROM TF_B_TRADE_SVC
         WHERE TRADE_ID = TO_NUMBER(:TRADE_ID)
           AND ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
           AND MODIFY_TAG = :MODIFY_TAG
           AND MAIN_TAG = :MAIN_TAG)