INSERT INTO TF_B_TRADE_USER(TRADE_ID, ACCEPT_MONTH, USER_ID, CUST_ID, USECUST_ID, BRAND_CODE, PRODUCT_ID, EPARCHY_CODE, CITY_CODE, CITY_CODE_A, USER_PASSWD, USER_DIFF_CODE, USER_TYPE_CODE, USER_TAG_SET, USER_STATE_CODESET, NET_TYPE_CODE, SERIAL_NUMBER, SCORE_VALUE, CONTRACT_ID, CREDIT_CLASS, BASIC_CREDIT_VALUE, CREDIT_VALUE, CREDIT_CONTROL_ID, ACCT_TAG, PREPAY_TAG, MPUTE_MONTH_FEE, MPUTE_DATE, FIRST_CALL_TIME, LAST_STOP_TIME, CHANGEUSER_DATE, IN_NET_MODE, IN_DATE, IN_STAFF_ID, IN_DEPART_ID, OPEN_MODE, OPEN_DATE, OPEN_STAFF_ID, OPEN_DEPART_ID, DEVELOP_STAFF_ID, DEVELOP_DATE, DEVELOP_DEPART_ID, DEVELOP_CITY_CODE, DEVELOP_EPARCHY_CODE, DEVELOP_NO, ASSURE_CUST_ID, ASSURE_TYPE_CODE, ASSURE_DATE, REMOVE_TAG, PRE_DESTROY_TIME, DESTROY_TIME, REMOVE_EPARCHY_CODE, REMOVE_CITY_CODE, REMOVE_DEPART_ID, REMOVE_REASON_CODE, MODIFY_TAG, UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, RSRV_NUM4, RSRV_NUM5, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9, RSRV_STR10, RSRV_DATE1, RSRV_DATE2, RSRV_DATE3, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3) 
VALUES (to_number(:TRADE_ID) , :ACCEPT_MONTH, to_number(:USER_ID) , to_number(:CUST_ID) , to_number(:USECUST_ID) , :BRAND_CODE, :PRODUCT_ID, :EPARCHY_CODE, :CITY_CODE, :CITY_CODE_A, :USER_PASSWD, :USER_DIFF_CODE, :USER_TYPE_CODE, :USER_TAG_SET, :USER_STATE_CODESET, :NET_TYPE_CODE, :SERIAL_NUMBER, to_number(:SCORE_VALUE) , :CONTRACT_ID, :CREDIT_CLASS, to_number(:BASIC_CREDIT_VALUE) , to_number(:CREDIT_VALUE) , :CREDIT_CONTROL_ID, :ACCT_TAG, :PREPAY_TAG, :MPUTE_MONTH_FEE, to_date(:MPUTE_DATE,'yyyy-mm-dd hh24:mi:ss') , to_date(:FIRST_CALL_TIME,'yyyy-mm-dd hh24:mi:ss') , to_date(:LAST_STOP_TIME,'yyyy-mm-dd hh24:mi:ss') , to_date(:CHANGEUSER_DATE,'yyyy-mm-dd hh24:mi:ss') , :IN_NET_MODE, to_date(:IN_DATE,'yyyy-mm-dd hh24:mi:ss') , :IN_STAFF_ID, :IN_DEPART_ID, :OPEN_MODE, to_date(:OPEN_DATE,'yyyy-mm-dd hh24:mi:ss') , :OPEN_STAFF_ID, :OPEN_DEPART_ID, :DEVELOP_STAFF_ID, to_date(:DEVELOP_DATE,'yyyy-mm-dd hh24:mi:ss') , :DEVELOP_DEPART_ID, :DEVELOP_CITY_CODE, :DEVELOP_EPARCHY_CODE, :DEVELOP_NO, to_number(:ASSURE_CUST_ID) , :ASSURE_TYPE_CODE, to_date(:ASSURE_DATE,'yyyy-mm-dd hh24:mi:ss') , :REMOVE_TAG, to_date(:PRE_DESTROY_TIME,'yyyy-mm-dd hh24:mi:ss') , to_date(:DESTROY_TIME,'yyyy-mm-dd hh24:mi:ss') , :REMOVE_EPARCHY_CODE, :REMOVE_CITY_CODE, :REMOVE_DEPART_ID, :REMOVE_REASON_CODE, :MODIFY_TAG, to_date(:UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') , :UPDATE_STAFF_ID, :UPDATE_DEPART_ID, :REMARK, :RSRV_NUM1, :RSRV_NUM2, :RSRV_NUM3, to_number(:RSRV_NUM4) , to_number(:RSRV_NUM5) , :RSRV_STR1, :RSRV_STR2, :RSRV_STR3, :RSRV_STR4, :RSRV_STR5, :RSRV_STR6, :RSRV_STR7, :RSRV_STR8, :RSRV_STR9, :RSRV_STR10, to_date(:RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') , to_date(:RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') , to_date(:RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') , :RSRV_TAG1, :RSRV_TAG2, :RSRV_TAG3)