SELECT to_char(A.TRADE_ID) TRADE_ID, to_char(A.USER_ID) USER_ID, A.FEE_MODE, A.FEE_TYPE_CODE,B.FEEITEM_NAME, to_char(A.BUSI_FEE) BUSI_FEE, to_char(A.SALE_PRICE) SALE_PRICE, to_char(A.DISCOUNT) DISCOUNT, A.TYPE, RATE, to_char(A.FEE1) FEE1, to_char(A.FEE2) FEE2, A.COUNT, A.UNIT, to_char(A.SCORE_VALUE) SCORE_VALUE 
FROM TF_B_TRADEFEE_TAX A,TD_B_FEEITEM B
WHERE A.TRADE_ID = :TRADE_ID
AND  A.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))
AND A.FEE_TYPE_CODE=B.FEEITEM_CODE
AND A.FEE_MODE=:FEE_MODE