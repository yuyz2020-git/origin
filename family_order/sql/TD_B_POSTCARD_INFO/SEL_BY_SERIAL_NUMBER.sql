select SERIAL_NUMBER,
       PSPT_TYPE_CODE,
       PSPT_ID,
       PSPT_ADDR,
       POST_PHONE,
       POST_ADDR,
       CUST_NAME,
       STATE,
       SEND_SMS_FLAG,
       CANCEL_FLAG,
       to_char(ACCEPT_DATE,'yyyy-mm-dd hh24:mi:ss') ACCEPT_DATE,
       to_char(UPDATA_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATA_TIME,
       to_char(END_DATE,'yyyy-mm-dd hh24:mi:ss') END_DATE,
       RSRT_STR1,
       RSRT_STR2,
       RSRT_STR3,
       RSRT_STR4,
       RSRT_STR5,
       RSRT_STR6,
       RSRT_STR7,
       RSRT_STR8,
       RSRT_STR9,
       IN_MODE,
       PRODUCT_INFO,
       ORDER_NO,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       0 AS CHECKTYPE,
       PICNAMERPATH,
       SALECHANNLE

  from TD_B_POSTCARD_INFO 
  where SERIAL_NUMBER = :SERIAL_NUMBER  
  and   end_date>sysdate 
  order by ACCEPT_DATE desc
