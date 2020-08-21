SELECT MEASURE_CODE,
       MATERIAL_CODE,
       COMPANY_CODE,
       NET_PRICE,
       CONTRACT_PRICE,
       AG_SETTLE_PRICE,
       WS_SETTLE_PRICE,
       TO_CHAR(VALID_START_DATE, 'YYYY-DD-MM hh24:mi:ss') VALID_START_DATE,
       TO_CHAR(VALID_END_DATE, 'YYYY-DD-MM hh24:mi:ss') VALID_END_DATE,
       TO_CHAR(TIME_STAMP, 'YYYY-DD-MM hh24:mi:ss') TIME_STAMP,
       TRANS_TYPE,
       DEVICE_MODE_CODE,
       RSRV_NUM1,
       RSRV_NUM2,
       RSRV_NUM3,
       RSRV_NUM4,
       RSRV_NUM5,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5,
       TO_CHAR(RSRV_DATE1, 'YYYY-DD-MM hh24:mi:ss') RSRV_DATE1,
       TO_CHAR(RSRV_DATE2, 'YYYY-DD-MM hh24:mi:ss') RSRV_DATE2,
       TO_CHAR(RSRV_DATE3, 'YYYY-DD-MM hh24:mi:ss') RSRV_DATE3,
       UPFLAG
  FROM TI_B_CONTRACT_MEASURE T
 WHERE T.DEVICE_MODE_CODE = :DEVICE_MODE_CODE