SELECT count(A.TICKET_ID) PARA_CODE1,       
       '' PARA_CODE2,       
       '' PARA_CODE3,       
       '' PARA_CODE4,       
       '' PARA_CODE5,       
       '' PARA_CODE6,       
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
       '' PARAM_NAME
  FROM TF_R_TICKET A
 WHERE TICKET_ID >= :PARA_CODE1
   AND TICKET_ID <= :PARA_CODE2
   AND TAX_NO = :PARA_CODE3
   AND (:PARA_CODE4 IS NULL OR TICKET_STATE_CODE = :PARA_CODE4)
   AND (:PARA_CODE5 IS NULL OR TICKET_TYPE_CODE = :PARA_CODE5)
   AND (:PARA_CODE6 IS NULL OR STAFF_ID = :PARA_CODE6)
   AND (:PARA_CODE7 IS NULL OR AGENT_ID = :PARA_CODE7)
   AND (:PARA_CODE8 = '' OR :PARA_CODE8 IS NULL)
   AND (:PARA_CODE9 = '' OR :PARA_CODE9 IS NULL)
   AND (:PARA_CODE10 = '' OR :PARA_CODE10 IS NULL)