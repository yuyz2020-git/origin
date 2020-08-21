--IS_CACHE=Y
SELECT PARA_CODE1,
       PARA_CODE2,
       PARA_CODE3,
       PARA_CODE4,
       PARA_CODE5,
       PARA_CODE6,
       PARA_CODE7,
       PARA_CODE8,
       PARA_CODE9,
       PARA_CODE10,
       '' PARA_CODE11,
       '' PARA_CODE12,
       '' PARA_CODE13,
       '' PARA_CODE14,
       '' PARA_CODE15,
       '' PARA_CODE16,
       '' PARA_CODE17,
       '' PARA_CODE18,
       '' PARA_CODE19,
       '' PARA_CODE20,
       '' PARA_CODE21,
       '' PARA_CODE22,
       '' PARA_CODE23,
       '' PARA_CODE24,
       '' PARA_CODE25,
       '' PARA_CODE26,
       '' PARA_CODE27,
       '' PARA_CODE28,
       '' PARA_CODE29,
       '' PARA_CODE30,
       '' START_DATE,
       '' END_DATE,
       '' EPARCHY_CODE,
       '' REMARK,
       '' UPDATE_STAFF_ID,
       '' UPDATE_DEPART_ID,
       '' UPDATE_TIME,
       '' SUBSYS_CODE,
       0 PARAM_ATTR,
       '' PARAM_CODE,
       '' PARAM_NAME
  FROM (SELECT K.ID PARA_CODE1,
               K.KEY PARA_CODE2,
               K.SERV_ORDER PARA_CODE3,
               D.SERV_ID PARA_CODE4,
               D.SERV_NAME PARA_CODE5,
               D.SERV_DESC PARA_CODE6,
               '' PARA_CODE7,
               '' PARA_CODE8,
               '' PARA_CODE9,
               '' PARA_CODE10,
               '' PARA_CODE11,
               '' PARA_CODE12,
               '' PARA_CODE13,
               '' PARA_CODE14,
               '' PARA_CODE15,
               '' PARA_CODE16,
               '' PARA_CODE17,
               '' PARA_CODE18,
               '' PARA_CODE19,
               '' PARA_CODE20,
               '' PARA_CODE21,
               '' PARA_CODE22,
               '' PARA_CODE23,
               '' PARA_CODE24,
               '' PARA_CODE25,
               '' PARA_CODE26,
               '' PARA_CODE27,
               '' PARA_CODE28,
               '' PARA_CODE29,
               '' PARA_CODE30,
               '' START_DATE,
               '' END_DATE,
               '' EPARCHY_CODE,
               '' REMARK,
               '' UPDATE_STAFF_ID,
               '' UPDATE_DEPART_ID,
               '' UPDATE_TIME,
               '' SUBSYS_CODE,
               0 PARAM_ATTR,
               '' PARAM_CODE,
               '' PARAM_NAME,
               ABS(LENGTH(K.KEY) - LENGTH(:PARA_CODE2)) DIFF_LEN,
               SIGN(LENGTH(K.KEY) - LENGTH(:PARA_CODE2)) SIGN_DIFF_LEN
          FROM TD_M_KEYWORD K, TD_M_DESCRIPTION D
         WHERE (INSTR(:PARA_CODE2, K.KEY) > 0 OR INSTR(K.KEY, :PARA_CODE2) > 0)
           AND K.SERV_ID = D.SERV_ID
           AND (:PARA_CODE1 = '' OR :PARA_CODE1 IS NULL)
           AND (:PARA_CODE3 = '' OR :PARA_CODE3 IS NULL)
           AND (:PARA_CODE4 = '' OR :PARA_CODE4 IS NULL)
           AND (:PARA_CODE5 = '' OR :PARA_CODE5 IS NULL)
           AND (:PARA_CODE6 = '' OR :PARA_CODE6 IS NULL)
           AND (:PARA_CODE7 = '' OR :PARA_CODE7 IS NULL)
           AND (:PARA_CODE8 = '' OR :PARA_CODE8 IS NULL)
           AND (:PARA_CODE9 = '' OR :PARA_CODE9 IS NULL)
           AND (:PARA_CODE10 = '' OR :PARA_CODE10 IS NULL)        
         ORDER BY DIFF_LEN ASC, SIGN_DIFF_LEN DESC, PARA_CODE3 DESC)
 WHERE ROWNUM < 2