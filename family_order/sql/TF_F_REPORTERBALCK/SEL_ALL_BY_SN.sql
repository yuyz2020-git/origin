SELECT A.*,DECODE(IS_BLACK, '1', '黑名单', '白名单') BLACK_TYPE
  FROM TF_F_REPORTERBALCK A
 WHERE 1 = 1
   AND SERIAL_NUMBER = :SERIAL_NUMBER