UPDATE TF_B_TRADE_ATTR T SET  T.IS_NEED_PF =DECODE(T.IS_NEED_PF,'','0','1','0',T.IS_NEED_PF)  WHERE T.TRADE_ID= :TRADE_ID AND ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))