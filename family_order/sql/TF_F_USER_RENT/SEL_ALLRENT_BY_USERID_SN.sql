SELECT TO_CHAR(USER_ID) USER_ID,
       RENT_TYPE_CODE,
       SERIAL_NUMBER,
       SIM_CARD_NO,
       IMSI,
       RENT_SIM_CARD,
       RENT_IMSI,
       RENT_DEVICE_NO,
       RENT_IMEI,
       RENT_SERIAL_NUMBER,
       NATIONALITY_AREACODE,
       TO_CHAR(START_DATE, 'YYYY-MM-DD HH24:MI:HH') START_DATE,
       TO_CHAR(END_DATE, 'YYYY-MM-DD HH24:MI:HH') END_DATE,
       RENT_TAG,
       OPEN_STAFF_ID,
       OPEN_DEPART_ID,
       TO_CHAR(RSRV_NUM1) RSRV_NUM1,
       TO_CHAR(RSRV_NUM2) RSRV_NUM2,
       TO_CHAR(RSRV_NUM3) RSRV_NUM3,
       TO_CHAR(RSRV_NUM4) RSRV_NUM4,
       TO_CHAR(RSRV_NUM5) RSRV_NUM5,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5,
       TO_CHAR(RSRV_DATE1, 'YYYY-MM-DD HH24:MI:HH') RSRV_DATE1,
       TO_CHAR(RSRV_DATE2, 'YYYY-MM-DD HH24:MI:HH') RSRV_DATE2,
       TO_CHAR(RSRV_DATE3, 'YYYY-MM-DD HH24:MI:HH') RSRV_DATE3,
       INST_ID
  FROM TF_F_USER_RENT
 WHERE USER_ID = :USER_ID
   AND PARTITION_ID = TO_NUMBER(MOD(:USER_ID, 10000))
   AND RENT_SERIAL_NUMBER = :RENT_SERIAL_NUMBER
   AND END_DATE >= SYSDATE
