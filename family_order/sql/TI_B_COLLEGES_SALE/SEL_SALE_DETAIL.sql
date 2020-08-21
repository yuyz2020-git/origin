select t.ORDER_ID, TO_CHAR(t.ACCEPT_DATE, 'YYYYMMDD') ACCEPT_DATE, t.ORDER_TYPE, t.CUST_NAME, t.PSPT_ID, 
rtrim(t.SOURCE_PROVINCE_ID) SOURCE_PROVINCE_ID, t.SOURCE_CITY_CODE, rtrim(t.DEST_PROVINCE_ID) DEST_PROVINCE_ID, t.DEST_CITY_CODE, 
t.COLLEGE_NAME, t.OLD_SERIAL_NUMBER, t.SERIAL_NUMBER, t.PHONE_STATUS, t.OPEN_DISCNT, 
t.ACTION_DATE, t.ORDER_ADDRESS, t.SENDEE, t.CONTACT_PHONE, t.ZIP_CODE, t.TRADE_STAFF_NAME, 
t.TRADE_STAFF_ID, t.TRADE_STAFF_PHONE, t.COUNT, t.GIFT_CODE1, t.GIFT_CODE2, t.GIFT_CODE3, 
t.CONTRACT_DISCNT, t.CONTRACT_STATUS, t.CONTRACT_IMEI, nvl(t.ORDER_STATUS,'9') ORDER_STATUS, t.UPDATE_TIME, t.TRADE_ID, 
t.FACE_PHOTO, t.BACK_PHOTO, t.GROUP_PHOTO,nvl(t.INPUT_STAFF_ID,'zzzz') INPUT_STAFF_ID,t.RSRV_STR1,t.RSRV_STR2,t.RSRV_STR3,t.RSRV_STR4 
from TI_B_COLLEGES_SALE t 
where 1=1 
AND t.SERIAL_NUMBER=:SERIAL_NUMBER 
AND t.PSPT_ID=:PSPT_ID 
AND t.ORDER_TYPE=:ORDER_TYPE 
AND t.ORDER_ID=:ORDER_ID 
AND nvl(t.ORDER_STATUS,'9')=:ORDER_STATUS 
AND t.ACCEPT_DATE>=TO_DATE(:START_DATE,'yyyy-MM-dd HH24:MI:SS')
AND t.ACCEPT_DATE<TO_DATE(:END_DATE,'yyyy-MM-dd HH24:MI:SS') + 1