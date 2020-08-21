SELECT A.USER_ID,
       TO_CHAR(A.ACCEPT_TIME, 'yyyy-mm-dd hh24:mi:ss') ACCEPT_TIME,
       TO_CHAR(A.CHANNEL_ACCEPT_TIME, 'yyyy-mm-dd hh24:mi:ss') CHANNEL_ACCEPT_TIME
  FROM UCR_ACT1.TL_B_TRADELOG@DBLK_NGACTDB A
 WHERE A.CHANNEL_ID = 'BANKLK'
   AND A.STAFF_ID = 'ITFOULIK'
   AND A.EFFECT_TAG = '0'
   AND A.CANCEL_TAG = '0'
   AND A.PAY_FEE_MODE_CODE = '10'
   AND A.CHARGE_SOURCE_CODE = '3'
   AND A.CHANNEL_ACCEPT_TIME >= ADD_MONTHS(SYSDATE, -3)
   AND A.USER_ID = :USER_ID