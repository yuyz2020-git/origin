SELECT TO_CHAR(TRADE_ID) TRADE_ID,
			 TO_CHAR(BPM_ID) BPM_ID,
			 TRADE_TYPE_CODE,
			 IN_MODE_CODE,
			 PRIORITY,
			 SUBSCRIBE_STATE,
			 NEXT_DEAL_TAG,
			 PRODUCT_ID,
			 BRAND_CODE,
			 TO_CHAR(USER_ID) USER_ID,
			 TO_CHAR(CUST_ID) CUST_ID,
			 TO_CHAR(ACCT_ID) ACCT_ID,
			 SERIAL_NUMBER,
			 CUST_NAME,
			 TO_CHAR(ACCEPT_DATE, 'yyyy-mm-dd hh24:mi:ss') ACCEPT_DATE,
			 ACCEPT_MONTH,
			 TRADE_STAFF_ID,
			 TRADE_DEPART_ID,
			 TRADE_CITY_CODE,
			 TRADE_EPARCHY_CODE,
			 TERM_IP,
			 EPARCHY_CODE,
			 CITY_CODE,
			 OLCOM_TAG,
			 TO_CHAR(EXEC_TIME, 'yyyy-mm-dd hh24:mi:ss') EXEC_TIME,
			 TO_CHAR(FINISH_DATE, 'yyyy-mm-dd hh24:mi:ss') FINISH_DATE,
			 TO_CHAR(OPER_FEE) OPER_FEE,
			 TO_CHAR(FOREGIFT) FOREGIFT,
			 TO_CHAR(ADVANCE_PAY) ADVANCE_PAY,
			 INVOICE_NO,
			 FEE_STATE,
			 TO_CHAR(FEE_TIME, 'yyyy-mm-dd hh24:mi:ss') FEE_TIME,
			 FEE_STAFF_ID,
			 CANCEL_TAG,
			 TO_CHAR(CANCEL_DATE, 'yyyy-mm-dd hh24:mi:ss') CANCEL_DATE,
			 CANCEL_STAFF_ID,
			 CANCEL_DEPART_ID,
			 CANCEL_CITY_CODE,
			 CANCEL_EPARCHY_CODE,
			 PROCESS_TAG_SET,
			 RSRV_STR1,
			 RSRV_STR2,
			 RSRV_STR3,
			 RSRV_STR4,
			 RSRV_STR5,
			 RSRV_STR6,
			 RSRV_STR7,
			 RSRV_STR8,
			 RSRV_STR9,
			 RSRV_STR10,
			 REMARK
	FROM TF_BH_TRADE A
 WHERE NOT EXISTS (SELECT 1
          FROM TD_S_COMMPARA B
         WHERE B.PARAM_CODE = A.TRADE_TYPE_CODE
           AND B.SUBSYS_CODE = 'CSM'
           AND B.PARAM_ATTR = 719
           AND B.END_DATE > SYSDATE)
         AND (TRADE_TYPE_CODE=:TRADE_TYPE_CODE OR :TRADE_TYPE_CODE='-1')
   AND A.USER_ID = TO_NUMBER(:USER_ID)
   AND (A.ACCEPT_DATE+0 >=TRUNC(TO_DATE(:START_DATE, 'YYYY-MM-DD HH24:MI:SS')) OR :START_DATE IS NULL)
   AND (A.ACCEPT_DATE+0 < TRUNC(TO_DATE(:FINISH_DATE, 'YYYY-MM-DD HH24:MI:SS')) + 1 OR :FINISH_DATE IS NULL)
 ORDER BY A.ACCEPT_DATE DESC