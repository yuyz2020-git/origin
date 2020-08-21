UPDATE tf_a_consigninfolog
   SET MCONSIGN_ID=TO_NUMBER(:MCONSIGN_ID) ,
    charge_id=TO_NUMBER(:CHARGE_ID) ,
 ALL_MONEY = TO_NUMBER(:ALL_MONEY) ,
ALL_NEW_MONEY = TO_NUMBER(:ALL_NEW_MONEY),
COMMIT_TAG='1' 
 WHERE acct_id=TO_NUMBER(:ACCT_ID)
   AND acyc_id=:ACYC_ID
   AND recv_acyc_id=:RECV_ACYC_ID
   AND commit_tag='0'