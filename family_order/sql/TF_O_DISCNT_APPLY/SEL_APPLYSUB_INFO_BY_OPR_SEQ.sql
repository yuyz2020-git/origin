SELECT OPR_SEQ,
       PROD_ID,
       PROD_TYPE,
       TRIM(TO_CHAR(DISCNT_RATE,'999990.00')) BOTTOM_PRICE,
       CARD_BIND MACHINE_CARD_BIND,
       UPDATE_TIME,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_DATE1,
       RSRV_TAG1
  FROM TF_O_DISCNT_APPLY_SUB
 WHERE OPR_SEQ = :OPR_SEQ
