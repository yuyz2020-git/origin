SELECT COUNT(T.ORDER_ID) VCOUNT
  FROM TL_B_WECHAT_SCORE T
 WHERE T.ACTIVITY_ID = :ACTIVITY_ID
 AND T.USER_ID = :USER_ID
 AND TO_CHAR(T.IN_TIME, 'YYYY') = TO_CHAR(SYSDATE, 'YYYY')
 