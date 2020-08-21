UPDATE TI_B_GRP_MEB_PLATSVC t SET t.modify_tag = '0'
         WHERE NOT EXISTS (SELECT 1 FROM TF_B_TRADE_GRP_MEB_PLATSVC_BAK b
                           WHERE trade_id=:TRADE_ID
                           AND accept_month=:ACCEPT_MONTH
                           AND t.user_id=b.user_id
                           and t.ec_user_id=b.ec_user_id
                           and t.service_id=b.service_id
                           and t.start_date=b.start_date)
         AND t.sync_sequence = to_number(:SYNC_SEQUENCE)
         AND modify_tag = '9'