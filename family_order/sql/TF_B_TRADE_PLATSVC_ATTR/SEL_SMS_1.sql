SELECT INFO_CODE, INFO_VALUE
  FROM TF_B_TRADE_PLATSVC_ATTR A
 WHERE A.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
   AND A.TRADE_ID = TO_NUMBER(:TRADE_ID)
   AND A.USER_ID = :USER_ID
   AND A.SERVICE_ID = :SERVICE_ID
   AND A.INFO_CODE = :INFO_CODE