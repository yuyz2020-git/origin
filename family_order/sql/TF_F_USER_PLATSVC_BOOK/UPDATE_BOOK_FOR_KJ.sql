UPDATE TF_F_USER_PLATSVC_BOOK
   SET BIZ_STATE_CODE = 'A', OPER_CODE = '05'
 WHERE USER_ID = :USER_ID
   AND START_DATE > SYSDATE
   AND BIZ_STATE_CODE = 'N'
   AND BIZ_TYPE_CODE = '53'
   AND OPER_CODE = '04'