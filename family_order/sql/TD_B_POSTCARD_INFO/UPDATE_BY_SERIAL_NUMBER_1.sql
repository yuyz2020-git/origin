UPDATE TD_B_POSTCARD_INFO 
   SET 
   AUDITTRANSACTIONID= :AUDITTRANSACTIONID
   ,BUSITYPE= :BUSITYPE
   ,AUDITSTATUS= :AUDITSTATUS
   ,AUDITMESSAGE= :AUDITMESSAGE
   ,KEEPPARAM= :KEEPPARAM
   ,RESERMARK= :RESERMARK

 WHERE SERIAL_NUMBER = :SERIAL_NUMBER
   AND PSPT_ID= :PSPT_ID