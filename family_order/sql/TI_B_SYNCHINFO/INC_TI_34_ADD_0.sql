UPDATE TI_B_RELATION_AA A
   SET A.MODIFY_TAG = '0'
 WHERE NOT EXISTS (SELECT 1
          FROM TF_B_TRADE_RELATION_AA_BAK B
         WHERE B.TRADE_ID = :TRADE_ID
           AND B.ACCEPT_MONTH = :ACCEPT_MONTH)
   AND A.SYNC_SEQUENCE = TO_NUMBER(:SYNC_SEQUENCE)
   AND MODIFY_TAG = '9'