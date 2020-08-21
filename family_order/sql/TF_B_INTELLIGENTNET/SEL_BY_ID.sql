SELECT A.TRADE_ID,
       A.ORDER_ID,
       A.OPER_NUMB,
       A.BIZ_TYPE,
       A.CUSTOMER_NAME,
       A.ACCESS_NUM,
       A.CITY,
       A.CITY_CODE,
       A.COUNTRY,
       A.COUNTRY_CODE,
       A.DISTRICT_ADDR,
       A.RESIDENTIAL_ZONE,
       A.RESERVE_DATE,
       A.HOUSE_TYPE,
       A.HOUSE_TYPE_CODE,
       A.AREA_SIZE,
       A.IS_LINE,
       A.IS_INFORPOINT,
       A.RECOMMEND_NUM,
       A.CHANNAL,
       A.MAIN_USES,
       A.APP_PHONE,
       A.WBAND_ACCOUNT,
       A.SP_ID,
       A.BIZ_CODE,
       A.CAMPAIGN_ID,
       A.BIZ_VERSION,
       A.NEW_LIST_NO,
       A.CREATE_TIME,
	A.SERIAL_NUMBER,
       A.EPARCHY_CODE
  FROM TF_B_INTELLIGENTNET A, TF_BH_TRADE B
 WHERE A.NEW_LIST_NO = :NEW_LIST_NO
   AND A.TRADE_ID = B.TRADE_ID
   AND B.CANCEL_TAG = '0'    
   AND B.ACCEPT_MONTH =  TO_NUMBER(SUBSTR(A.TRADE_ID,5,2))