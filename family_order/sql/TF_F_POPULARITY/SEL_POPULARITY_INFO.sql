SELECT POPULARITY_ID,
       POPULARITY_TRADE_TYPE,
       POPULARITY_TYPE,
       OFFER_CODE,
       OFFER_NAME,
       OFFER_DESCRIPTION,
       POPULARITY_DEFAULT_ICON,
       POPULARITY_ICON,
       PRIORITY,
       TO_CHAR(START_DATE, 'YYYY-MM-DD') START_DATE,
       TO_CHAR(END_DATE, 'YYYY-MM-DD') END_DATE,
       TO_CHAR(UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       REMARKS,
       PRODUCT_ID,
       CAMPN_TYPE
  FROM TF_F_POPULARITY
 WHERE 1 = 1
   AND (POPULARITY_TRADE_TYPE = :POPULARITY_TRADE_TYPE OR :POPULARITY_TRADE_TYPE IS NULL)
   AND (POPULARITY_TYPE = :POPULARITY_TYPE OR :POPULARITY_TYPE IS NULL)
   AND (OFFER_CODE = :OFFER_CODE OR :OFFER_CODE IS NULL)
   AND (OFFER_NAME LIKE '%' || :OFFER_NAME || '%' OR :OFFER_NAME IS NULL)
   AND (START_DATE >= TO_DATE(:START_DATE, 'YYYY-MM-DD HH24:MI:SS') OR :START_DATE IS NULL)
   AND (END_DATE <= TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS') OR :END_DATE IS NULL)
