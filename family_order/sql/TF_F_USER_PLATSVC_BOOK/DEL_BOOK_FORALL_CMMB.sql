DELETE TF_F_USER_PLATSVC_BOOK
 WHERE USER_ID = :USER_ID
   AND BOOK_STATE = :BOOK_STATE
   AND BIZ_TYPE_CODE='53'
   AND START_DATE > SYSDATE