INSERT INTO TF_M_STAFFROLERIGHT  (LOG_ID,   STAFF_ID,   RIGHT_CODE,   ROLE_CODE,   RIGHT_ATTR,   OPER_TYPE,   OPER_STAFF_ID,   OPER_DEPART_ID,   OPER_DATE,   DAY,   RIGHT_CLASS,   OPER_SPECIAL,   EXTEND_VALUE1,   EXTEND_VALUE2,   RSVALUE1,   RSVALUE2,   USE_TAG,   SEND_SMS_TAG,   TIMES,   START_DATE,   END_DATE,   RSRV_STR1,   RSRV_STR2,   RSRV_STR3,   RSRV_STR4,   RSRV_STR5,   REMARK)  values (:LOG_ID,         :STAFF_ID,         :RIGHT_CODE,         :ROLE_CODE,         :RIGHT_ATTR,         :OPER_TYPE,         :OPER_STAFF_ID,         :OPER_DEPART_ID,         to_date(:OPER_DATE,'YYYY-MM-DD HH24:MI:SS'),         TO_CHAR(SYSDATE,'DD'),         :RIGHT_CLASS,         :OPER_SPECIAL,         :EXTEND_VALUE1,         :EXTEND_VALUE2,         :RSVALUE1,         :RSVALUE2,         :USE_TAG,         '1',         :TIMES,         to_date(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),         to_date(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),         :RSRV_STR1,         :RSRV_STR2,         :RSRV_STR3,         :RSRV_STR4,         :RSRV_STR5,         :REMARK )