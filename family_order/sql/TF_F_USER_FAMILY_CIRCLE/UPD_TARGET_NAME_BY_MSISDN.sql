UPDATE TF_F_USER_FAMILY_CIRCLE T SET T.TARGET_NAME = :TARGET_NAME 
WHERE T.GROUP_TYPE = :GROUP_TYPE AND T.MAIN_MSISDN = :MAIN_MSISDN 
AND T.TARGET_MSISDN = :TARGET_MSISDN
