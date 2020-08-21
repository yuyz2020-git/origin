SELECT B.RULE_ID,
       B.GOODS_NAME RULE_NAME,
       SUM(B.ACTION_COUNT) ACTION_COUNT,
       SUM(B.VALUE_CHANGED) VALUE_CHANGED_SUB
  FROM (SELECT TRADE_ID, TRADE_DEPART_ID
          FROM TF_BH_TRADE
         WHERE TRADE_TYPE_CODE = '330'
           AND CANCEL_TAG = '0'
           AND TRADE_CITY_CODE = :TRADE_CITY_CODE
           AND TRADE_EPARCHY_CODE = :EPARCHY_CODE
           AND ACCEPT_DATE BETWEEN TO_DATE(:ACCEPT_START, 'YYYY-MM-DD') AND
               TO_DATE(:ACCEPT_END, 'YYYY-MM-DD') + 1
        UNION ALL
        SELECT TRADE_ID, TRADE_DEPART_ID
          FROM TF_B_TRADE
         WHERE TRADE_TYPE_CODE = '330'
           AND CANCEL_TAG = '0'
           AND TRADE_CITY_CODE = :TRADE_CITY_CODE
           AND TRADE_EPARCHY_CODE = :EPARCHY_CODE
           AND ACCEPT_DATE BETWEEN TO_DATE(:ACCEPT_START, 'YYYY-MM-DD') AND
             TO_DATE(:ACCEPT_END, 'YYYY-MM-DD') + 1) A,
       TF_B_TRADE_SCORE B,
       TD_M_DEPART D,
       TD_M_DEPARTKIND E
 WHERE B.TRADE_ID = A.TRADE_ID
   AND A.TRADE_DEPART_ID = D.DEPART_ID
   AND D.DEPART_KIND_CODE = E.DEPART_KIND_CODE(+)
   AND B.RULE_ID = :RULE_ID
   AND E.DEPART_KIND_CODE = :DEPART_KIND_CODE
   AND E.EPARCHY_CODE = :EPARCHY_CODE
 GROUP BY B.RULE_ID,B.GOODS_NAME