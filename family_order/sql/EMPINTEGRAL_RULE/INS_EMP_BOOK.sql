--IS_CACHE=N
INSERT INTO CHNL_CU_BOOK_PARALLEL
  (CUMU_ACYC,
   CUMU_ID,
   VERSION_ID,
   DEPOSIT_CODE,
   OLD_SCORE,
   CAL_SCORE,
   USE_SCORE,
   GIFT_SCORE,
   TOTAL_SCORE,
   CHANGE_SCORE,
   LAST_SCORE,
   PRE_CHAR1,
   PRE_CHAR2,
   PRE_NUM1,
   PRE_NUM2)
  SELECT to_char(sysdate,'YYYYMM'),
         :CUMU_ID,
         0,
         0,
         0,
         0,
         0,
         0,
         0,
         0,
         0,
         null,
         null,
         null,
         null
    FROM DUAL