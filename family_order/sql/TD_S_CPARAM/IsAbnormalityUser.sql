SELECT A.USER_ID
FROM TF_F_USER A
WHERE A.REMOVE_TAG = 0
AND A.USER_ID = TO_NUMBER(:USER_ID)
AND A.USER_STATE_CODESET IN ('1','3','4','5','6','7','8','9','A','B','C','D','E','F','G','R','I','S')