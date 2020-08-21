SELECT to_char(START_TIME,'yyyy-mm-dd hh24:mi:ss') START_TIME,to_char(EXCESS_TIME,'yyyy-mm-dd hh24:mi:ss') EXCESS_TIME,MSISDN,OTHER_PARTY,REASON_CODE,EXCESS_COUNT,PREVALUE1,PREVALUE2,PREVALUE3,PREVALUE4,SMS_CONTENT,SMS_TYPE,INFRACT_LEVEL,BLACK_FLAG,DEAL_TAG,RESULT_CODE,RESULT_INFO,to_char(USER_ID) USER_ID,to_char(DEAL_TIME,'yyyy-mm-dd hh24:mi:ss') DEAL_TIME,to_char(FINISH_TIME,'yyyy-mm-dd hh24:mi:ss') FINISH_TIME,to_char(TRADE_ID) TRADE_ID,RSRV_STR1,RSRV_STR2,RSRV_STR3,ACCEPT_MONTH
  FROM TI_BI_MO_MON
 WHERE (MSISDN = :MSISDN OR :MSISDN IS NULL)
   AND EXCESS_TIME >= TO_DATE(:START_TIME,'yyyy-mm-dd hh24:mi:ss')
   AND EXCESS_TIME <= TO_DATE(:END_TIME,'yyyy-mm-dd hh24:mi:ss')
   AND sms_type=:SMS_TYPE
   AND REASON_CODE = :REASON_CODE
   AND RESULT_CODE = to_number(:RESULT_CODE)
   AND DEAL_TAG = :DEAL_TAG