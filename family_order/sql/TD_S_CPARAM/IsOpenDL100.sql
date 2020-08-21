SELECT COUNT(1) recordcount
  FROM tf_f_relation_uu uu
 WHERE UU.USER_ID_B = TO_NUMBER(:USER_ID)
   AND UU.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   and uu.RELATION_TYPE_CODE in('F2','F3','F4')
   AND end_date + 0 > SYSDATE
   AND ROWNUM < 2