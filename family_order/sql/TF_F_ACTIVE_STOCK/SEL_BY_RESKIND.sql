SELECT 
A.STAFF_ID,
A.RES_KIND_CODE,
A.CITY_CODE,
A.EPARCHY_CODE,
A.WARNNING_VALUE_U,
A.WARNNING_VALUE_D,
A.RSRV_TAG1,
A.RSRV_TAG2,
A.RSRV_STR1,
A.RSRV_STR2,
A.RSRV_STR3,
A.RSRV_STR4,
A.RSRV_NUM1,
A.RSRV_NUM2,
A.RSRV_NUM3,
A.RSRV_NUM4,
TO_CHAR(A.RSRV_DATE1,'YYYY-MM-DD HH24:MI:SS') RSRV_DATE1,
TO_CHAR(A.RSRV_DATE2,'YYYY-MM-DD HH24:MI:SS') RSRV_DATE2,
A.REMARK,
TO_CHAR(A.UPDATE_TIME,'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
A.UPDATE_STAFF_ID,
A.UPDATE_DEPART_ID
FROM TF_F_ACTIVE_STOCK A
WHERE A.RES_KIND_CODE = :RES_KIND_CODE
AND A.STAFF_ID = :STAFF_ID
AND A.CITY_CODE = :CITY_CODE
AND A.EPARCHY_CODE = :EPARCHY_CODE