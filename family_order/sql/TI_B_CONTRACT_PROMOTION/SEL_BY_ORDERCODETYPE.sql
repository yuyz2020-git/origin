select 
OPR_NUMB,                  
   to_char(VERIFY_TIME,'yyyy-MM-dd hh24:mi:ss') VERIFY_TIME, 
   ORDER_CODE,               
   CONTRACT_TYPE,                    
   to_char(CONTRACT_START_DATE,'yyyy-MM-dd hh24:mi:ss') CONTRACT_START_DATE,                           
   COMPANY_CODE,                     
   SHOP_CODE,                  
   SALES_PERSON_ID,
   SERIAL_NUMBER,
   MATERIAL_CODE,                  
   IMEI ,                   
   COMPENSATE_FEE,                      
   DEPOSIT_FEE,
   CONTRACT_ID,                  
   GRADE_LOW_LIMIT,                     
   PROMISE_DURATION,                      
   RESOURCE_CODE,
   TRADE_ID ,                       
   IS_VERIFY_SUCCESS,
    to_char(RSRV_DATE1,'yyyy-MM-dd hh24:mi:ss') RSRV_DATE1,
   to_char(RSRV_DATE2,'yyyy-MM-dd hh24:mi:ss') RSRV_DATE2,
   STATUS ,
   RSRV_TAG2 ,
   REMARK,
   RSRT_TAG1,
   RSRT_TAG2,
   RSRT_STR1,
   RSRT_STR2,
   RSRT_STR3,
   RSRT_STR4,
   RSRT_STR6,
   RSRT_STR7,
   ORDER_TYPE_CODE,
   RSRT_STR5 from TI_B_CONTRACT_PROMOTION
   where OPR_NUMB= :OPR_NUMB 
   and TRADE_ID= :TRADE_ID
   and ORDER_TYPE_CODE=:ORDER_TYPE_CODE
   and (STATUS='0' or STATUS='2')