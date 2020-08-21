SELECT POPULARITY_ID,
       POPULARITY_TRADE_TYPE,
       POPULARITY_TYPE,
       OFFER_CODE,
       OFFER_NAME,
       OFFER_DESCRIPTION,
       POPULARITY_DEFAULT_ICON,
       POPULARITY_ICON,
       PRIORITY,
       TO_CHAR(START_DATE, 'YYYY-MM-DD HH24:MI:SS') START_DATE,
       TO_CHAR(END_DATE, 'YYYY-MM-DD HH24:MI:SS') END_DATE,
       TO_CHAR(UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       REMARKS,
       PRODUCT_ID,
       CAMPN_TYPE,
       MENU_ID
  FROM TF_F_POPULARITY
 WHERE 1 = 1
   AND POPULARITY_TRADE_TYPE = :POPULARITY_TRADE_TYPE
   AND POPULARITY_TYPE = :POPULARITY_TYPE
   AND PRIORITY = :PRIORITY
   AND UPDATE_TIME != TO_DATE(:UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS')
