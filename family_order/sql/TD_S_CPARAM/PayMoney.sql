--IS_CACHE=Y
SELECT 'PayMoney' KEY, PAY_MONEY_CODE VALUE1, '-1' VALUE2, PAY_MONEY VRESULT
  FROM td_s_paymoney
 WHERE 'PayMoney' = :KEY