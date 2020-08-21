 SELECT  count(1) as  USER_COUNT
  FROM TF_F_USER_BLACKWHITE A
 WHERE  A.EC_USER_ID = TO_NUMBER(:EC_USER_ID)
   AND A.START_DATE < SYSDATE
   AND A.END_DATE > SYSDATE