SELECT *  FROM TF_B_TRADE_DISCNT_BAK A
 WHERE A.TRADE_ID = :TRADE_ID
   AND A.RELATION_TYPE_CODE IN
       (SELECT B.RELATION_TYPE_CODE
          FROM TD_S_RELATION B
         WHERE B.RELATION_KIND = 'F')