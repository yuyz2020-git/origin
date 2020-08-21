SELECT SP_CODE,OPER_CODE,BIZ_CODE PARA_CODE3 FROM TF_B_TRADE_PLATSVC
       WHERE TRADE_ID=:TRADE_ID
       AND   USER_ID= :USER_ID
       AND   BIZ_TYPE_CODE='16'
       AND   OPER_CODE IN ('06','07')
       AND   BIZ_CODE IN ('+MAILMF','+MAILBZ','+MAILVIP')