--IS_CACHE=Y
SELECT SUBSYS_CODE,
         PARAM_ATTR,
         PARAM_CODE,
         PARAM_NAME,
         PARA_CODE1,
         PARA_CODE2,
         PARA_CODE3,
         PARA_CODE4,
         PARA_CODE5,
         PARA_CODE6,
         PARA_CODE7,
         PARA_CODE8,
         PARA_CODE9,
         PARA_CODE10,
         PARA_CODE11,
         PARA_CODE12,
         PARA_CODE13,
         PARA_CODE14,
         PARA_CODE15,
         PARA_CODE16,
         PARA_CODE17,
         PARA_CODE18,
         PARA_CODE19,
         PARA_CODE20,
         PARA_CODE21,
         PARA_CODE22,
         PARA_CODE23,
         PARA_CODE24,
         PARA_CODE25,
         EPARCHY_CODE,
         REMARK,
         UPDATE_STAFF_ID,
         UPDATE_DEPART_ID
    FROM TD_S_COMMPARA
   WHERE SUBSYS_CODE = :SUBSYS_CODE 
        AND PARAM_ATTR = :PARAM_ATTR 
        AND PARAM_CODE in (:PARAM_CODE)
        AND SYSDATE BETWEEN START_DATE AND  END_DATE 
        AND  EPARCHY_CODE = 'ZZZZ'