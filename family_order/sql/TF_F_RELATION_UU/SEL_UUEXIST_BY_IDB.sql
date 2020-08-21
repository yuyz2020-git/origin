SELECT COUNT(1) RECORDCOUNT
  FROM TF_F_RELATION_UU T
 WHERE T.PARTITION_ID=MOD(TO_NUMBER(:USER_ID_B),10000)
   AND T.USER_ID_B = :USER_ID_B
   AND T.RELATION_TYPE_CODE = '20'
   AND TO_CHAR(T.END_DATE, 'mm') IN
       (TO_CHAR(ADD_MONTHS(SYSDATE, -1), 'mm'),
        TO_CHAR(ADD_MONTHS(SYSDATE, -2), 'mm'),
        TO_CHAR(ADD_MONTHS(SYSDATE, -3), 'mm'))
   AND ROWNUM < 2