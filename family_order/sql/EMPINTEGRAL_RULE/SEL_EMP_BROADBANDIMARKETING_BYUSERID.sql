--IS_CACHE=N
SELECT DEPART_KIND_CODE 部门类型, ACCEPT_DATE 受理月份, TRADE_DEPART_ID 受理部门, TRADE_ID 台账标识,PRODUCT_ID 产品标识
FROM (SELECT E.DEPART_KIND_CODE,
      TO_CHAR(A.ACCEPT_DATE, 'YYYYMM') ACCEPT_DATE,
      A.TRADE_DEPART_ID,B.PRODUCT_ID,A.TRADE_ID
 FROM UCR_CRM1.TF_BH_TRADE            A,
      UCR_CRM1.TF_B_TRADE_SALE_ACTIVE B,
      TD_M_DEPART            E
WHERE A.USER_ID = TO_NUMBER(:USER_ID)
  AND B.USER_ID = TO_NUMBER(:USER_ID)
  AND A.TRADE_TYPE_CODE = 240
  AND A.CANCEL_TAG = '0'
  AND A.TRADE_ID = B.TRADE_ID
  AND B.PACKAGE_ID IN
      (SELECT C.PARA_CODE1
         FROM TD_S_COMMPARA C
        WHERE C.PARAM_ATTR = 66
          AND C.PARAM_NAME = '宽带1+营销活动'
          AND C.END_DATE > SYSDATE)
  AND TRUNC(A.ACCEPT_DATE) BETWEEN TRUNC(SYSDATE - 3) AND TRUNC(SYSDATE)
  AND B.PRODUCT_ID IN (69908001, 69908015)
  AND B.END_DATE > SYSDATE
  AND B.MODIFY_TAG = '0'
  AND A.TRADE_DEPART_ID = E.DEPART_ID
  AND ROWNUM < 2
UNION
SELECT E.DEPART_KIND_CODE,
      TO_CHAR(A.ACCEPT_DATE, 'YYYYMM') ACCEPT_DATE,
      A.TRADE_DEPART_ID,B.PRODUCT_ID,A.TRADE_ID
 FROM UCR_CRM1.TF_BH_TRADE                A,
      UCR_CRM1.TF_B_TRADE_SALEACTIVE_BOOK B,
      TD_M_DEPART                E
WHERE A.USER_ID = TO_NUMBER(:USER_ID)
  AND B.USER_ID = TO_NUMBER(:USER_ID)
  AND A.TRADE_TYPE_CODE = 230
  AND A.CANCEL_TAG = '0'
  AND A.TRADE_ID = B.TRADE_ID
  AND B.PACKAGE_ID IN
      (SELECT C.PARA_CODE1
         FROM TD_S_COMMPARA C
        WHERE C.PARAM_ATTR = 66
          AND C.PARAM_NAME = '宽带1+营销活动'
          AND C.END_DATE > SYSDATE)
  AND TRUNC(A.ACCEPT_DATE) BETWEEN TRUNC(SYSDATE - 3) AND TRUNC(SYSDATE) 
  AND B.PRODUCT_ID IN (69908001, 69908015)
  AND B.END_DATE > SYSDATE
  AND B.MODIFY_TAG = '0'
  AND A.TRADE_DEPART_ID = E.DEPART_ID
  AND ROWNUM < 2) TRADE
WHERE ROWNUM < 2