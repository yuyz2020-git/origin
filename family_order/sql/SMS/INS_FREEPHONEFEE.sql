INSERT INTO TF_B_FREEPHONEFEE (
  ACTIVITY_NUMBER,
  ACCEPT_MONTH,
  USER_ID,
  PARTITION_ID,
  SERIAL_NUMBER,
  CITY_CODE,
  MONEY,
  ACCEPT_DATE,
  PRIZE_TYPE_CODE,
  EXEC_FLAG,
  EXEC_TIME,
  RANDOM_NUM,
  RADIX,
  PRIZE_ODDS_1,
  PRIZE_ODDS_2,
  PRIZE_ODDS_3,
  PRIZE_ODDS_4,
  PRIZE_ODDS_5,
  PRIZE_ODDS_6,
  REMARK,
  REVC1,
  REVC2,
  REVC3,
  REVC4,
  REVC5
) VALUES (    
  :ACTIVITY_NUMBER,
  :ACCEPT_MONTH,
  :USER_ID,
  MOD(TO_NUMBER(:USER_ID),10000),
  :SERIAL_NUMBER,
  :CITY_CODE,
  :MONEY,
  TO_DATE(:ACCEPT_DATE, 'yyyy-mm-dd hh24:mi:ss'),
  :PRIZE_TYPE_CODE,
  :EXEC_FLAG,
  TO_DATE(:EXEC_TIME, 'yyyy-mm-dd hh24:mi:ss'),
  :RANDOM_NUM,
  :RADIX,
  :PRIZE_ODDS_1,
  :PRIZE_ODDS_2,
  :PRIZE_ODDS_3,
  :PRIZE_ODDS_4,
  :PRIZE_ODDS_5,
  :PRIZE_ODDS_6,
  :REMARK,  
  :REVC1,
  :REVC2,
  :REVC3,
  :REVC4,
  :REVC5
)
