INSERT INTO TI_B_TRANS_PHONE (SYNC_SEQUENCE,MODIFY_TAG,TRADE_ID,PHONE_CODE_A,PHONE_CODE_B,START_DATE,END_DATE,UPDATE_TIME,SYNC_DAY)
 SELECT :SYNC_SEQUENCE,:MODIFY_TAG,:TRADE_ID,PHONE_CODE_A,PHONE_CODE_B,START_DATE,END_DATE,UPDATE_TIME,:SYNC_DAY
 FROM TF_F_TRANS_PHONE
 WHERE PHONE_CODE_A=:PHONE_CODE_A