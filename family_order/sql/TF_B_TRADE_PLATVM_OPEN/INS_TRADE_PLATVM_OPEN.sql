INSERT INTO TF_B_TRADE_PLATVM_OPEN(TRADE_ID,CLIENT_ID,LOGIN_ID,PASSWORD,USER_NAME,USER_ROLE,PAY_TYPE,USER_STATE,SUB_USER_NUM,SERIAL_NUMBER,IDCARDNUM,EMAIL,LIMIT_TIME,TIME_STAMP,IS_FORBID,START_DATE,END_DATE,REMARK,USER_ID,UPDATE_STAFF_ID,UPDATE_DEPART_ID,UPDATE_TIME,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2)
VALUES(TO_NUMBER(:TRADE_ID),TO_NUMBER(:CLIENT_ID),:LOGIN_ID,:PASSWORD,:USER_NAME,TO_NUMBER(:USER_ROLE),TO_NUMBER(:PAY_TYPE),TO_NUMBER(:USER_STATE),TO_NUMBER(:SUB_USER_NUM),:SERIAL_NUMBER,:IDCARDNUM,:EMAIL,:LIMIT_TIME,TO_NUMBER(:TIME_STAMP),TO_NUMBER(:IS_FORBID),TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),:REMARK,TO_NUMBER(:USER_ID),:UPDATE_STAFF_ID,:UPDATE_DEPART_ID,TO_DATE(:UPDATE_TIME,'YYYY-MM-DD HH24:MI:SS'),:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,TO_DATE(:RSRV_DATE1,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DATE2,'YYYY-MM-DD HH24:MI:SS'))