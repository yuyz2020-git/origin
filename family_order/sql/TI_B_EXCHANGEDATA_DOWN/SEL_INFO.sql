SELECT RECORD_ID, OPR_NUMB, MOBILE_NO, RETURN_IMEI, SOLD_IMEI, MATERIAL_CODE,
       TO_CHAR(EX_ACTIVATE_TIME, 'yyyy-mm-dd hh:mi:ss') ACTIVATE_TIME, DEAL_FLAG,
       UPDATE_STAFF_ID, UPDATE_DEPART_ID,
       TO_CHAR(UPDATE_TIME, 'yyyy-mm-dd hh:mi:ss') UPDATE_TIME, REMARK, RSRV_STR1,
       RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_FLAG1, RSRV_FLAG2, RSRV_FLAG3,
       RSRV_FLAG4, RSRV_DATE1, RSRV_DATE2, RSRV_DATE3, RSRV_DATE4, '2' OPER_TYPE
  FROM TI_B_EXCHANGEDATA_DOWN
 WHERE 1 = 1
   AND OPR_NUMB = :OPR_NUMB
   AND MOBILE_NO = :MOBILE_NO
   AND DEAL_FLAG = :DEAL_FLAG
   AND TO_CHAR(EX_ACTIVATE_TIME, 'yyyy-mm-dd') = TO_CHAR(:ACTIVATE_TIME, 'yyyy-mm-dd')