UPDATE ts_a_bill
   SET balance      = :BALANCE,
       late_balance = :LATE_BALANCE,
       pay_tag      = :PAY_TAG,
       late_fee     = late_fee + :LATE_FEE,
       latecal_date = to_date(:LATECAL_DATE, 'YYYY/MM/DD HH24:MI:SS')
 WHERE acct_id = :ACCT_ID
   AND partition_id = :PARTITION_ID
   AND user_id = :USER_ID
   AND bill_id = :BILL_ID
   AND integrate_item_code = :INTEGRATE_ITEM_CODE
   AND balance = :OLD_BALANCE
   AND pay_tag = :OLD_PAYTAG