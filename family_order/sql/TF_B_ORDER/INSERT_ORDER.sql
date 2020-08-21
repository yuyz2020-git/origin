INSERT INTO TF_B_ORDER(ORDER_ID, ACCEPT_MONTH, APP_TYPE, BATCH_ID, BATCH_COUNT, SUCC_TOTAL, FAIL_TOTAL, ORDER_TYPE_CODE, TRADE_TYPE_CODE, PRIORITY, ORDER_STATE, NEXT_DEAL_TAG, IN_MODE_CODE, CUST_ID, CUST_NAME, PSPT_TYPE_CODE, PSPT_ID, EPARCHY_CODE, CITY_CODE, AUTH_CODE, ACTOR_NAME, ACTOR_PHONE, ACTOR_PSPT_TYPE_CODE, ACTOR_PSPT_ID, ACCEPT_DATE, TRADE_STAFF_ID, TRADE_DEPART_ID, TRADE_CITY_CODE, TRADE_EPARCHY_CODE, TERM_IP, OPER_FEE, FOREGIFT, ADVANCE_PAY, INVOICE_NO, FEE_STATE, FEE_TIME, FEE_STAFF_ID, PROCESS_TAG_SET, FINISH_DATE, EXEC_TIME, EXEC_ACTION, EXEC_RESULT, EXEC_DESC, CUST_IDEA, HQ_TAG, DECOMPOSE_RULE_ID, DISPATCH_RULE_ID, CUST_CONTACT_ID, SERV_REQ_ID, CONTRACT_ID, SOLUTION_ID, CANCEL_TAG, CANCEL_DATE, CANCEL_STAFF_ID, CANCEL_DEPART_ID, CANCEL_CITY_CODE, CANCEL_EPARCHY_CODE, UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9, RSRV_STR10) 
VALUES (to_number(:ORDER_ID) , :ACCEPT_MONTH, :APP_TYPE, to_number(:BATCH_ID) , to_number(:BATCH_COUNT) , to_number(:SUCC_TOTAL) , to_number(:FAIL_TOTAL) , :ORDER_TYPE_CODE, :TRADE_TYPE_CODE, :PRIORITY, :ORDER_STATE, :NEXT_DEAL_TAG, :IN_MODE_CODE, to_number(:CUST_ID) , :CUST_NAME, :PSPT_TYPE_CODE, :PSPT_ID, :EPARCHY_CODE, :CITY_CODE, :AUTH_CODE, :ACTOR_NAME, :ACTOR_PHONE, :ACTOR_PSPT_TYPE_CODE, :ACTOR_PSPT_ID, to_date(:ACCEPT_DATE,'yyyy-mm-dd hh24:mi:ss') , :TRADE_STAFF_ID, :TRADE_DEPART_ID, :TRADE_CITY_CODE, :TRADE_EPARCHY_CODE, :TERM_IP, to_number(:OPER_FEE) , to_number(:FOREGIFT) , to_number(:ADVANCE_PAY) , :INVOICE_NO, :FEE_STATE, to_date(:FEE_TIME,'yyyy-mm-dd hh24:mi:ss') , :FEE_STAFF_ID, :PROCESS_TAG_SET, to_date(:FINISH_DATE,'yyyy-mm-dd hh24:mi:ss') , to_date(:EXEC_TIME,'yyyy-mm-dd hh24:mi:ss') , :EXEC_ACTION, :EXEC_RESULT, :EXEC_DESC, :CUST_IDEA, :HQ_TAG, :DECOMPOSE_RULE_ID, :DISPATCH_RULE_ID, to_number(:CUST_CONTACT_ID) , :SERV_REQ_ID, :CONTRACT_ID, to_number(:SOLUTION_ID) , :CANCEL_TAG, to_date(:CANCEL_DATE,'yyyy-mm-dd hh24:mi:ss') , :CANCEL_STAFF_ID, :CANCEL_DEPART_ID, :CANCEL_CITY_CODE, :CANCEL_EPARCHY_CODE, to_date(:UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') , :UPDATE_STAFF_ID, :UPDATE_DEPART_ID, :REMARK, :RSRV_STR1, :RSRV_STR2, :RSRV_STR3, :RSRV_STR4, :RSRV_STR5, :RSRV_STR6, :RSRV_STR7, :RSRV_STR8, :RSRV_STR9, :RSRV_STR10)