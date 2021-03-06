INSERT INTO tf_f_user_svc(PARTITION_ID,USER_ID,USER_ID_A,PRODUCT_ID,PACKAGE_ID,SERVICE_ID,MAIN_TAG,INST_ID,CAMPN_ID,START_DATE,END_DATE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3)
select TO_NUMBER(:PARTITION_ID),a.USER_ID,a.USER_ID_A,c.PRODUCT_ID,a.PACKAGE_ID,a.SERVICE_ID,b.MAIN_TAG,a.INST_ID,a.CAMPN_ID,a.START_DATE,a.END_DATE,sysdate,a.UPDATE_STAFF_ID,a.UPDATE_DEPART_ID,a.REMARK,a.RSRV_NUM1,a.RSRV_NUM2,a.RSRV_NUM3,a.RSRV_NUM4,a.RSRV_NUM5,a.RSRV_STR1,a.RSRV_STR2,a.RSRV_STR3,a.RSRV_STR4,a.RSRV_STR5,a.RSRV_DATE1,a.RSRV_DATE2,a.RSRV_DATE3,a.RSRV_TAG1,a.RSRV_TAG2,a.RSRV_TAG3
 from tf_b_trade_svc a,td_b_package_element b,td_b_product_package c
 where a.service_id = b.element_id
 and b.PACKAGE_ID=c.PACKAGE_ID
 and c.product_id=:PRODUCT_ID 
 and sysdate between b.start_date and b.end_date
 and a.modify_tag = '0'
 and a.user_id = to_number(:USER_ID)
 and a.trade_id = to_number(:TRADE_ID)