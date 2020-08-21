SELECT RECORD_ID, OPR_NUMB, MOBILE_NO, IMEI, PROVINCE_CODE, MATERIAL_CODE,
       CARD_NO, PACKAGE_CODE,
       TO_CHAR(ACTIVATE_TIME, 'yyyy-mm-dd hh:mi:ss') ACTIVATE_TIME,
       DEAL_FLAG, UPDATE_STAFF_ID, UPDATE_DEPART_ID,
       TO_CHAR(UPDATE_TIME, 'yyyy-mm-dd hh:mi:ss') UPDATE_TIME, REMARK,
       RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_FLAG1, RSRV_FLAG2,
       RSRV_FLAG3, RSRV_FLAG4,
       TO_CHAR(RSRV_DATE1, 'yyyy-mm-dd hh:mi:ss') RSRV_DATE1,
       TO_CHAR(RSRV_DATE2, 'yyyy-mm-dd hh:mi:ss') RSRV_DATE2,
       TO_CHAR(RSRV_DATE3, 'yyyy-mm-dd hh:mi:ss') RSRV_DATE3,
       TO_CHAR(RSRV_DATE4, 'yyyy-mm-dd hh:mi:ss') RSRV_DATE4
  FROM TI_B_USRPRESENTFEE_DOWN
 WHERE OPR_NUMB = :OPR_NUMB
   AND DEAL_FLAG NOT IN (:DEAL_FLAG1, :DEAL_FLAG2, :DEAL_FLAG3)