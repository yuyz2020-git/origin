--IS_CACHE=Y
SELECT A.DISCNT_CODE,
       DECODE(A.DISCNT_TYPE_CODE, '', '-1', A.DISCNT_TYPE_CODE) DISCNT_TYPE_CODE
  FROM TD_B_DTYPE_DISCNT A
 WHERE A.DISCNT_CODE = :DISCNT_CODE
   AND A.DISCNT_TYPE_CODE = :DISCNT_TYPE_CODE
   AND SYSDATE BETWEEN A.START_DATE AND A.END_DATE