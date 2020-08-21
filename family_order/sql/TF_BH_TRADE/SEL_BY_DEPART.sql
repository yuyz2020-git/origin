SELECT A.FEE_STAFF_ID STAFF_ID, 
       A.TRADE_DEPART_ID DEPART_ID,
       A.TRADE_ID ,
       A.TRADE_TYPE_CODE ,
       A.SERIAL_NUMBER ,
       A.FEE_TIME ,
       A.OPER_FEE + A.FOREGIFT + A.ADVANCE_PAY TRADE_FEE,
       1 TRADE_NUM,
       '正常' CANCEL_TAG,
       NULL CANCEL_STAFF_ID
  FROM TF_BH_TRADE A
 WHERE A.CANCEL_TAG = '0'
   AND A.FEE_STATE != '0'
   AND A.FEE_TIME >= TO_DATE(:START_DATE,'YYYYMMDD')
   AND A.FEE_TIME <  TO_DATE(:END_DATE,'YYYYMMDD') + 1
   AND A.TRADE_DEPART_ID >= :START_DEPART_ID
   AND A.TRADE_DEPART_ID <= :END_DEPART_ID