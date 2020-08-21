INSERT INTO TI_B_USER_OCS
        (SYNC_SEQUENCE, MODIFY_TAG, TRADE_ID, PARTITION_ID, USER_ID, USER_TYPE_CODE,
         MONITOR_TYPE, SERIAL_NUMBER, EPARCHY_CODE, START_DATE, END_DATE, UPDATE_TIME,
         UPDATE_STAFF_ID, UPDATE_DEPART_ID,CITY_CODE)
        SELECT :SYNC_SEQUENCE,
               DECODE(A.MODIFY_TAG, '0', '0', '1', '2', '2', '2', '2', 'U', '2'), A.TRADE_ID,
               MOD(A.USER_ID, 10000), A.USER_ID, A.USER_TYPE_CODE, A.MONITOR_TYPE, A.SERIAL_NUMBER,
               A.EPARCHY_CODE,  A.START_DATE, A.END_DATE, A.UPDATE_TIME, A.UPDATE_STAFF_ID,
               A.UPDATE_DEPART_ID,:CITY_CODE
               
          FROM TF_B_TRADE_OCS A
         WHERE A.TRADE_ID = :TRADE_ID