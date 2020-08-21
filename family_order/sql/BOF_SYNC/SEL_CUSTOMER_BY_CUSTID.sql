SELECT DISTINCT :SYNC_SEQUENCE SYNC_SEQUENCE, :SYNC_DAY SYNC_DAY, '8' MODIFY_TAG, 
			:TRADE_ID, B.PARTITION_ID, B.CUST_ID, B.CUST_NAME, B.SIMPLE_SPELL,
			B.CUST_TYPE, B.CUST_KIND, B.CUST_STATE, B.PSPT_TYPE_CODE,
			B.PSPT_ID, B.OPEN_LIMIT, B.EPARCHY_CODE, B.CITY_CODE,
			B.IS_REAL_NAME, B.CITY_CODE_A, B.CUST_PASSWD,
			B.SCORE_VALUE, B.CREDIT_CLASS, B.BASIC_CREDIT_VALUE,
			B.CREDIT_VALUE, B.DEVELOP_STAFF_ID, B.DEVELOP_DEPART_ID,
			B.IN_DATE, B.IN_STAFF_ID, B.IN_DEPART_ID, B.REMOVE_TAG,
			B.REMOVE_DATE, B.REMOVE_STAFF_ID, B.REMOVE_CHANGE,
			B.UPDATE_TIME, B.UPDATE_STAFF_ID, B.UPDATE_DEPART_ID,
			B.REMARK, B.RSRV_NUM1, B.RSRV_NUM2, B.RSRV_NUM3,
			B.RSRV_NUM4, B.RSRV_NUM5, B.RSRV_STR1, B.RSRV_STR2,
			B.RSRV_STR3, B.RSRV_STR4, B.RSRV_STR5, B.RSRV_STR6,
			B.RSRV_STR7, B.RSRV_STR8, B.RSRV_STR9, B.RSRV_STR10,
			B.RSRV_DATE1, B.RSRV_DATE2, B.RSRV_DATE3, B.RSRV_DATE4,
			B.RSRV_DATE5, B.RSRV_TAG1, B.RSRV_TAG2, B.RSRV_TAG3,
			B.RSRV_TAG4, B.RSRV_TAG5
  FROM TF_F_CUSTOMER B
 WHERE B.CUST_ID = :CUST_ID
   AND B.PARTITION_ID = MOD(:CUST_ID, 10000)