INSERT INTO TF_B_TRADE_RELATION_UU_BAK (TRADE_ID,ACCEPT_MONTH,PARTITION_ID,USER_ID_A,SERIAL_NUMBER_A,USER_ID_B,SERIAL_NUMBER_B,RELATION_TYPE_CODE,ROLE_TYPE_CODE,ROLE_CODE_A,ROLE_CODE_B,ORDERNO,SHORT_CODE,INST_ID,START_DATE,END_DATE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3)
 SELECT TO_NUMBER(:TRADE_ID),TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2)),PARTITION_ID,USER_ID_A,SERIAL_NUMBER_A,USER_ID_B,SERIAL_NUMBER_B,RELATION_TYPE_CODE,ROLE_TYPE_CODE,ROLE_CODE_A,ROLE_CODE_B,ORDERNO,SHORT_CODE,INST_ID,START_DATE,END_DATE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3
 FROM TF_F_RELATION_UU a
 WHERE USER_ID_A in ( select USER_ID_A
                      from tf_b_trade_relation t1,td_s_relation t2
                      where t1.trade_id = TO_NUMBER(:TRADE_ID)
                      and t1.accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))
                      and t1.relation_type_code = t2.relation_type_code
                      and t2.relation_kind='F') --亲情 
 AND NOT EXISTS (select 1 from tf_b_trade_relation_uu_bak c
                 where c.trade_id = TO_NUMBER(:TRADE_ID)
                 and c.accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))
                 and a.user_id_a=c.user_id_a
                 and a.user_id_b=c.user_id_b
                 and a.relation_type_code=c.relation_type_code
                 and a.start_date=c.start_date
                 )