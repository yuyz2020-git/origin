--IS_CACHE=N
SELECT NVL(DECODE(COUNT(1),0,0,1),0) 是否存在
  FROM TF_F_RELATION_UU UU
 WHERE UU.RELATION_TYPE_CODE =:RELATION_TYPE_CODE
   AND UU.SERIAL_NUMBER_B = :KD_SERIAL_NUMBER
   AND TRUNC(UU.END_DATE) BETWEEN ADD_MONTHS(TRUNC(SYSDATE), -3) AND TRUNC(SYSDATE)