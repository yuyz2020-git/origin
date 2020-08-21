SELECT *
  FROM UCR_CRM1.TF_B_TRADE A, UCR_CRM1.TF_B_TRADE_SALE_ACTIVE B
 WHERE A.USER_ID = :USER_ID
   AND A.TRADE_ID = B.TRADE_ID
   AND A.CANCEL_TAG = '0'
   AND A.TRADE_TYPE_CODE IN ('230', '240')
   AND B.PRODUCT_ID IN
       (SELECT B.PARA_CODE1
          FROM TD_S_COMMPARA B
         WHERE B.PARAM_ATTR = '3800'
           AND B.PARAM_CODE = 'FREE_DISCNT')