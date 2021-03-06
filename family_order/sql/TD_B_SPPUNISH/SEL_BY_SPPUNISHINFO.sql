--IS_CACHE=Y
SELECT A.TRADE_ID,
       A.PROV_CODE,
       A.PUNISH_ID,
       A.SP_CODE,
       A.OPERATOR_CODE,
       A.PUNISH_TYPE,
       A.BEGIN_TIME,
       A.END_TIME,
       A.IS_ALL_SP,
       A.RSP_CODE,
       A.FILE_NAME,
       A.INSERT_TIME
  FROM TD_B_SPPUNISH A
 WHERE (:SP_CODE IS NULL OR A.SP_CODE = :SP_CODE)
   AND A.OPERATOR_CODE = :BIZ_CODE
   AND SYSDATE BETWEEN A.BEGIN_TIME AND A.END_TIME