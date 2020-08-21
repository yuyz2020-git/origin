UPDATE TF_B_TRADE_RECEIPT
   SET RECEIPT_INFO1 = :RECEIPT_INFO1, RECEIPT_INFO2 = :RECEIPT_INFO2,
       RECEIPT_INFO3 = :RECEIPT_INFO3, RECEIPT_INFO4 = :RECEIPT_INFO4,
       RECEIPT_INFO5 = :RECEIPT_INFO5, VERIFY_STAFF_ID = :ERIFY_STAFF_ID,
       VERIFY_DEPART_ID = :ERIFY_DEPART_ID, VERIFY_TIME = SYSDATE,
       VERIFY_STATUE = :ERIFY_STATUE,
       VERIFY_SUGGESTION = :ERIFY_SUGGESTION
 WHERE TRADE_TYPE_CODE = :OLD_TRADE_TYPE_CODE
   AND BRAND_CODE = :OLD_BRAND_CODE
   AND PRODUCT_ID = :OLD_PRODUCT_ID
   AND TRADE_ATTR = :OLD_TRADE_ATTR
   AND START_DATE = TO_DATE(:OLD_START_DATE, 'YYYY-MM-DD HH24:MI:SS')
   AND (EPARCHY_CODE = :OLD_EPARCHY_CODE)