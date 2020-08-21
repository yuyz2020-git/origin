SELECT T.CHNL_CODE DEPART_CODE,
       NVL(DECODE(T.CHNL_NAME, null, '未知渠道', T.CHNL_NAME), ' ') CUST_NAME,
       NVL(T.CHNL_NAME, ' ') PAY_NAME,
       T.CHNL_ID DEPART_ID
  FROM TF_CHL_CHANNEL T, CHNL_ACCESS_PHONE P,TF_F_USER F
 WHERE T.CHNL_ID = P.CHANNEL_ID
   AND T.STATE = '0'
   AND P.STATE = '0'
   AND P.UPDATE_STATE = '1'
   AND P.PHONE_NBR = F.USER_ID
   AND F.REMOVE_TAG = '0'
   AND F.SERIAL_NUMBER = :P_SERIAL_NUMBER
   AND P.TRADE_TYPE = :P_TRADE_TYPE
   AND ROWNUM < 2