--IS_CACHE=Y
SELECT A.SERVICE_ID, 
       A.BIZ_TYPE_CODE,
       A.OPER_CODE,
       A.SERVICE_ID_L,
       A.SVC_STATE,
       A.SVC_TYPE,
       A.LIMIT_TYPE,
       A.STATE,
       A.RSRV_STR1,
       A.RSRV_STR2,
       A.RSRV_STR3,
       A.RSRV_STR4,
       A.RSRV_STR5,
       A.RSRV_STR6
  FROM TD_B_PLATSVC_LIMIT A
 WHERE (A.SERVICE_ID = :SERVICE_ID OR A.SERVICE_ID = '90000000')
   AND A.BIZ_TYPE_CODE = :BIZ_TYPE_CODE 
   AND (A.OPER_CODE = :OPER_CODE OR A.OPER_CODE = 'ZZ')