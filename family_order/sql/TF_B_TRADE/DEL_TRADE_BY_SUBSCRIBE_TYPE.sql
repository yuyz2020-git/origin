DELETE TF_B_TRADE T WHERE T.SUBSCRIBE_TYPE = '600' AND T.ACCEPT_DATE BETWEEN TRUNC(SYSDATE-1) AND TRUNC(SYSDATE)