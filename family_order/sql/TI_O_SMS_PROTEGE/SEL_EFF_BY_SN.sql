SELECT RECV_ID,CHANNEL_ID,SERIAL_NO,PROV_ID,ACCESS_NO,EXPIRE_DATE,ACCEPT_TIME,CREATE_STAFF_ID,TO_CHAR(UPDATE_TIME,'YYYYMMDDHH24MISS') UPDATE_TIME,STATUS,'' REMARK FROM TI_O_SMS_PROTEGE T WHERE  ACCESS_NO=:ACCESS_NO ORDER BY ACCEPT_TIME DESC