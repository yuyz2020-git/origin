INSERT INTO TF_B_TRADE_SVC(TRADE_ID,ACCEPT_MONTH,USER_ID,USER_ID_A,SERVICE_ID,MAIN_TAG,PRODUCT_ID,PACKAGE_ID,INST_ID,START_DATE,END_DATE,MODIFY_TAG,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3)
SELECT TO_NUMBER(:TRADE_ID),TO_NUMBER(SUBSTR(:TRADE_ID,5,2)),USER_ID,USER_ID_A,SERVICE_ID,MAIN_TAG,PRODUCT_ID,PACKAGE_ID,INST_ID,START_DATE,TO_DATE(:ACCEPT_DATE,'YYYY-MM-DD HH24:MI:SS'),'1',TO_DATE(:UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss'),:UPDATE_STAFF_ID,:UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3
from TF_F_USER_SVC s  where 
s.USER_ID = TO_NUMBER(:USER_ID)
AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID),10000)
 AND END_DATE > SYSDATE
 AND END_DATE > START_DATE
AND s.product_id in (SELECT PRODUCT_ID FROM TD_B_PRODUCT T WHERE T.PRODUCT_MODE='12' AND T.PRODUCT_ID != '800001'  AND T.product_id NOT IN (SELECT a.product_id_b from TD_B_PRODUCT_MEB A,td_b_attr_biz b WHERE A.PRODUCT_ID = b.attr_code AND b.id='1' AND b.attr_obj='PRO' ))
AND NOT EXISTS (SELECT 1 FROM TF_B_TRADE_SVC
                    WHERE TRADE_ID = TO_NUMBER(:TRADE_ID)
                      AND ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))
                      AND USER_ID = s.USER_ID
                      AND SERVICE_ID = s.SERVICE_ID)