SELECT * FROM  TF_F_PLATVM_DEVICEINFO
WHERE ID = :ID 
  AND SYSDATE BETWEEN START_DATE AND END_DATE