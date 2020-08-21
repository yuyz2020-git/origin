INSERT INTO TF_B_TRADE_CUSTOMER(TRADE_ID, ACCEPT_MONTH, CUST_ID, CUST_NAME, SIMPLE_SPELL, CUST_TYPE, CUST_KIND, CUST_STATE, PSPT_TYPE_CODE, PSPT_ID, OPEN_LIMIT, EPARCHY_CODE, CITY_CODE, IS_REAL_NAME, CITY_CODE_A, CUST_PASSWD, SCORE_VALUE, CREDIT_CLASS, BASIC_CREDIT_VALUE, CREDIT_VALUE, DEVELOP_STAFF_ID, DEVELOP_DEPART_ID, IN_DATE, IN_STAFF_ID, IN_DEPART_ID, REMOVE_TAG, REMOVE_DATE, REMOVE_STAFF_ID, REMOVE_CHANGE, MODIFY_TAG, UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, RSRV_NUM4, RSRV_NUM5, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9, RSRV_STR10, RSRV_DATE1, RSRV_DATE2, RSRV_DATE3, RSRV_DATE4, RSRV_DATE5, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3, RSRV_TAG4, RSRV_TAG5) 
VALUES (to_number(:TRADE_ID) , :ACCEPT_MONTH, to_number(:CUST_ID) , :CUST_NAME, :SIMPLE_SPELL, :CUST_TYPE, :CUST_KIND, :CUST_STATE, :PSPT_TYPE_CODE, :PSPT_ID, :OPEN_LIMIT, :EPARCHY_CODE, :CITY_CODE, :IS_REAL_NAME, :CITY_CODE_A, :CUST_PASSWD, to_number(:SCORE_VALUE) , :CREDIT_CLASS, to_number(:BASIC_CREDIT_VALUE) , to_number(:CREDIT_VALUE) , :DEVELOP_STAFF_ID, :DEVELOP_DEPART_ID, to_date(:IN_DATE,'yyyy-mm-dd hh24:mi:ss') , :IN_STAFF_ID, :IN_DEPART_ID, :REMOVE_TAG, to_date(:REMOVE_DATE,'yyyy-mm-dd hh24:mi:ss') , :REMOVE_STAFF_ID, :REMOVE_CHANGE, :MODIFY_TAG, to_date(:UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') , :UPDATE_STAFF_ID, :UPDATE_DEPART_ID, :REMARK, :RSRV_NUM1, :RSRV_NUM2, :RSRV_NUM3, to_number(:RSRV_NUM4) , to_number(:RSRV_NUM5) , :RSRV_STR1, :RSRV_STR2, :RSRV_STR3, :RSRV_STR4, :RSRV_STR5, :RSRV_STR6, :RSRV_STR7, :RSRV_STR8, :RSRV_STR9, :RSRV_STR10, to_date(:RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') , to_date(:RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') , to_date(:RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') , to_date(:RSRV_DATE4,'yyyy-mm-dd hh24:mi:ss') , to_date(:RSRV_DATE5,'yyyy-mm-dd hh24:mi:ss') , :RSRV_TAG1, :RSRV_TAG2, :RSRV_TAG3, :RSRV_TAG4, :RSRV_TAG5)