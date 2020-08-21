SELECT a.USER_ID,
a.SERIAL_NUMBER,
a.TRADE_ID,
a.OCCUPY_TIME,
a.FLAG,
a.TRADE_DEPART_ID,
a.TRADE_STAFF_ID,
a.REMARK,
a.RSRV_STR1,
a.RSRV_STR2,
a.RSRV_STR3,
a.RSRV_NUM1,
a.RSRV_NUM2,
a.RSRV_NUM3,
a.RSRV_DATE1,
a.RSRV_DATE2,
a.RSRV_DATE3
  FROM tf_f_user_notrollbacklist a
WHERE 1 = 1
    AND a.SERIAL_NUMBER = :SERIAL_NUMBER
    AND a.FLAG = :FLAG
    AND a.OCCUPY_TIME = :OCCUPY_TIME
    AND a.TRADE_ID = :TRADE_ID