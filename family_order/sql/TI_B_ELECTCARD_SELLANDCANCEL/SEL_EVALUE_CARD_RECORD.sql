SELECT TRANSACTIONID,
       IDVALUE,
       CHANNEL_TYPE,
       CARD_NO,
       CARD_MONEY,
       CARD_EXPIREDDATE ACTIVE_DAYS,
       CARD_STATE  CARD_STATEFLAG,
       CARD_TYPE,
       CRAD_BUSIPROP CARD_BUSIPROP,
       ACTION_TIME,
       BUY_COUNT,
	   EMAIL
  FROM TI_B_ELECTCARD_SELLANDCANCEL T
     WHERE CHANGE_TYPE = '0'
	  --AND CHANNEL_TYPE = :CHANNEL_TYPE
	  AND IDVALUE =:IDVALUE 
	  AND ACTION_TIME BETWEEN  SYSDATE-30 AND SYSDATE 
	  AND NOT EXISTS (SELECT 1
          FROM TI_B_ELECTCARD_SELLANDCANCEL C
         WHERE C.CHANGE_TYPE = '1'
           AND (C.RESELL_CARD_NO = T.CARD_NO  OR C.RESELL_TRANSACTIONID = T.TRANSACTIONID )) 
