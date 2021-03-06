SELECT T.RSRV_STR1 AS SERIAL_NUMBER,T.RSRV_VALUE,T.RSRV_STR2,
     T.INST_ID,T.PARTITION_ID,T.UPDATE_TIME
    FROM  TF_F_USER_OTHER T 
       WHERE T.RSRV_VALUE_CODE='TEST_CARD_USER'
       AND T.RSRV_STR1 = :SERIAL_NUMBER
       AND T.RSRV_VALUE = :RSRV_VALUE
       AND T.RSRV_STR1 LIKE '%'||:NUMBER_SEGMENT||'%'
       ORDER BY  T.UPDATE_TIME  DESC