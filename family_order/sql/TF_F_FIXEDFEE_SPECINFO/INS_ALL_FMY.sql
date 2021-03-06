INSERT INTO TF_F_FIXEDFEE_SPECINFO
  (USER_ID,
   USER_MODE,
   RECV_AREA_TYPE,
   RECV_USER_ID,
   START_ACYC_ID,
   END_ACYC_ID,
   ACT_MODE,
   SERVICE_ID,
   FEE_VALUE1,
   FEE_VALUE2,
   FEE_VALUE3,
   FEE_VALUE4,
   FEE_VALUE5,
   UPDATE_TIME,
   UPDATE_DEPART_ID,
   UPDATE_STAFF_ID,
   TRADE_ID,
   MODIFY_TAG)
VALUES
  (TO_NUMBER(:USER_ID),
   :USER_MODE,
   :RECV_AREA_TYPE,
   TO_NUMBER(:RECV_USER_ID),
   :START_ACYC_ID,
   :END_ACYC_ID,
   :ACT_MODE,
   :SERVICE_ID,
   TO_NUMBER(:FEE_VALUE1),
   TO_NUMBER(:FEE_VALUE2),
   TO_NUMBER(:FEE_VALUE3),
   TO_NUMBER(:FEE_VALUE4),
   TO_NUMBER(:FEE_VALUE5),
   SYSDATE,
   :UPDATE_DEPART_ID,
   :UPDATE_STAFF_ID,
   TO_NUMBER(:TRADE_ID),
   :MODIFY_TAG)