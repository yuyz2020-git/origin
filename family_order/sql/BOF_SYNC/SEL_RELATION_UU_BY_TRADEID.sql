SELECT DISTINCT USER_ID_B
          FROM TF_B_TRADE_RELATION B
         WHERE B.TRADE_ID = :TRADE_ID
           AND B.ACCEPT_MONTH = :ACCEPT_MONTH