select '' SUBSYS_CODE, 0 PARAM_ATTR, '' PARAM_CODE, '' PARAM_NAME, 
to_char(COUNT(*)) PARA_CODE1,'' PARA_CODE2,'' PARA_CODE3,
'' PARA_CODE4,'' PARA_CODE5,
'' para_code6,'' PARA_CODE7,
'' para_code8, '' PARA_CODE9 , '' PARA_CODE10 , 
'' PARA_CODE11 , '' PARA_CODE12 , '' PARA_CODE13 , '' PARA_CODE14 , 
'' PARA_CODE15 , '' PARA_CODE16 , '' PARA_CODE17 , '' PARA_CODE18 , 
'' PARA_CODE19 , '' PARA_CODE20 , '' PARA_CODE21 , '' PARA_CODE22 , 
'' PARA_CODE23 , '' PARA_CODE24 , '' PARA_CODE25 , '' PARA_CODE26 , 
'' PARA_CODE27 , '' PARA_CODE28 , '' PARA_CODE29 , '' PARA_CODE30 , 
'' START_DATE , '' END_DATE , '' EPARCHY_CODE , '' REMARK , 
'' UPDATE_STAFF_ID , '' UPDATE_DEPART_ID , '' UPDATE_TIME
FROM tf_f_vpmn_grpout a
WHERE a.user_id=:PARA_CODE1
AND a.end_date > SYSDATE
AND (:PARA_CODE2 = '' OR :PARA_CODE2 IS NULL)
AND (:PARA_CODE3 = '' OR :PARA_CODE3 IS NULL)
AND (:PARA_CODE4 = '' OR :PARA_CODE4 IS NULL)
AND (:PARA_CODE5 = '' OR :PARA_CODE5 IS NULL)
AND (:PARA_CODE6 = '' OR :PARA_CODE6 IS NULL)
AND (:PARA_CODE7 = '' OR :PARA_CODE7 IS NULL)
AND (:PARA_CODE8 = '' OR :PARA_CODE8 IS NULL)
AND (:PARA_CODE9 = '' OR :PARA_CODE9 IS NULL)
AND (:PARA_CODE10 = '' OR :PARA_CODE10 IS NULL)