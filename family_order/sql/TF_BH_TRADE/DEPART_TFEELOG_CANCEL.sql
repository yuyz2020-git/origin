SELECT trade_staff_id STAFF_ID,
       F_SYS_GETCODENAME('STAFF_ID',a.trade_staff_id,NULL,NULL) STAFF_NAME,
       F_SYS_GETCODENAME('DEPART_ID',A.TRADE_DEPART_ID,NULL,NULL) DEPART_NAME ,
       A.TRADE_ID,
       F_SYS_GETCODENAME('TRADE_TYPE_CODE',A.TRADE_TYPE_CODE,NULL,NULL) TRADE_TYPE,
       A.SERIAL_NUMBER,
       A.FEE_TIME,
       -(A.OPER_FEE + A.FOREGIFT)/100 TRADE_FEE ,
       -1 TRADE_NUM,
       '返销' CANCEL_TAG,
       CANCEL_STAFF_ID
  FROM TF_BH_TRADE A
 WHERE A.CANCEL_TAG IN ('2')
   AND A.FEE_STATE != '0'
   AND A.TRADE_DEPART_ID >= :START_DEPART_ID
   AND A.TRADE_DEPART_ID <= :END_DEPART_ID
   AND A.ACCEPT_DATE >= TO_DATE(:START_DATE,'YYYYMMDD')
   AND A.ACCEPT_DATE <  TO_DATE(:END_DATE,'YYYYMMDD') + 1 
   AND (A.TRADE_TYPE_CODE = :TRADE_TYPE_CODE OR :TRADE_TYPE_CODE = '0')
 UNION ALL
SELECT trade_staff_id STAFF_ID,
       F_SYS_GETCODENAME('STAFF_ID',a.trade_staff_id,NULL,NULL) STAFF_NAME,
       F_SYS_GETCODENAME('DEPART_ID',A.TRADE_DEPART_ID,NULL,NULL) DEPART_NAME ,
       A.TRADE_ID,
       F_SYS_GETCODENAME('TRADE_TYPE_CODE',A.TRADE_TYPE_CODE,NULL,NULL) TRADE_TYPE,
       A.SERIAL_NUMBER,
       A.FEE_TIME,
       -(A.OPER_FEE + A.FOREGIFT)/100 TRADE_FEE ,
       -1 TRADE_NUM,
       '返销' CANCEL_TAG,
       CANCEL_STAFF_ID
  FROM TF_B_TRADE A
 WHERE A.CANCEL_TAG IN ('2')
   AND A.FEE_STATE != '0'
   AND A.TRADE_DEPART_ID >= :START_DEPART_ID
   AND A.TRADE_DEPART_ID <= :END_DEPART_ID
   AND A.ACCEPT_DATE >= TO_DATE(:START_DATE,'YYYYMMDD')
   AND A.ACCEPT_DATE <  TO_DATE(:END_DATE,'YYYYMMDD') + 1 
   AND (A.TRADE_TYPE_CODE = :TRADE_TYPE_CODE OR :TRADE_TYPE_CODE = '0')