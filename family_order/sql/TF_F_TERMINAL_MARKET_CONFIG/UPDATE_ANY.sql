UPDATE TF_F_TERMINAL_MARKET_CONFIG SET 
TERMINAL_IN_PRICE = :TERMINAL_IN_PRICE,
TERMINAL_SAL_PRICE = :TERMINAL_SAL_PRICE,
BARE_SAL_PRICE = :BARE_SAL_PRICE,
SENT_PHONE_BILL = :SENT_PHONE_BILL,
GIFT_ITEMS = :GIFT_ITEMS,
RETURN_BILL = :RETURN_BILL,
ACTIV_DATE = TO_DATE(:ACTIV_DATE,'yyyy-MM-dd'),
RETURN_DATE = TO_DATE(:RETURN_DATE,'yyyy-MM-dd'),
TOTAL = :TOTAL,
SENT_GIFT = :SENT_GIFT,
APPOINT_AMOUNT = :APPOINT_AMOUNT,
SUBSIDY = :SUBSIDY
WHERE 1=1
AND ACTIV_ID = :ACTIV_ID