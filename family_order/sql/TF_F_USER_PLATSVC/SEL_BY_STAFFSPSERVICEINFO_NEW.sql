--IS_CACHE=Y
SELECT D.*           
  FROM TF_M_STAFFPLAT D
 WHERE D.STAFF_ID = :STAFF_ID 
   AND D.SP_CODE = :SP_CODE  
   AND D.END_DATE > SYSDATE