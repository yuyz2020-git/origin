UPDATE TI_B_CUSTOMER t SET t.modify_tag = '2'
        WHERE EXISTS (SELECT 1 FROM (SELECT PARTITION_ID,CUST_ID,CUST_NAME,SIMPLE_SPELL,CUST_TYPE,CUST_KIND,CUST_STATE,PSPT_TYPE_CODE,PSPT_ID,OPEN_LIMIT,EPARCHY_CODE,CITY_CODE,CUST_PASSWD,SCORE_VALUE,CREDIT_CLASS,BASIC_CREDIT_VALUE,CREDIT_VALUE,DEVELOP_STAFF_ID,DEVELOP_DEPART_ID,IN_DATE,IN_STAFF_ID,IN_DEPART_ID,REMOVE_TAG,REMOVE_DATE,REMOVE_STAFF_ID,REMOVE_CHANGE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8,RSRV_STR9,RSRV_STR10,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_DATE4,RSRV_DATE5,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3,RSRV_TAG4,RSRV_TAG5
                               FROM TI_B_CUSTOMER
                               WHERE sync_sequence = to_number(:SYNC_SEQUENCE)
                               AND modify_tag='9'
                             MINUS
                             SELECT PARTITION_ID,CUST_ID,CUST_NAME,SIMPLE_SPELL,CUST_TYPE,CUST_KIND,CUST_STATE,PSPT_TYPE_CODE,PSPT_ID,OPEN_LIMIT,EPARCHY_CODE,CITY_CODE,CUST_PASSWD,SCORE_VALUE,CREDIT_CLASS,BASIC_CREDIT_VALUE,CREDIT_VALUE,DEVELOP_STAFF_ID,DEVELOP_DEPART_ID,IN_DATE,IN_STAFF_ID,IN_DEPART_ID,REMOVE_TAG,REMOVE_DATE,REMOVE_STAFF_ID,REMOVE_CHANGE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8,RSRV_STR9,RSRV_STR10,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_DATE4,RSRV_DATE5,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3,RSRV_TAG4,RSRV_TAG5
                               FROM TF_B_TRADE_CUSTOMER_BAK
                               WHERE trade_id=:TRADE_ID
                               AND accept_month=:ACCEPT_MONTH ) b
               WHERE b.cust_id = t.cust_id)
       AND sync_sequence = to_number(:SYNC_SEQUENCE)
       AND modify_tag = '9'