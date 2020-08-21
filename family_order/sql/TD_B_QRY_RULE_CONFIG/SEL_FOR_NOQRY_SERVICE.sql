--IS_CACHE=Y
SELECT 1 FROM TD_B_QRY_CONFIG K
                           WHERE K.BUSI_TYPE = 'P'
                             AND (K.ID_TYPE = 'Z' OR K.ID_TYPE = 'S')
                             AND K.TAG = 'N'
                             AND K.ID = :SERVICE_ID
                             AND SYSDATE BETWEEN K.START_DATE AND K.END_DATE