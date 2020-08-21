SELECT  TASK_ID,   T.BASS_FLOW_ID ,   RESULT_CODE ,   EP_SN  ,   START_TIME ,   END_TIME ,   STATUS ,   TOTAL ,   SUCCESS ,   ACKFILE ,   BAT_FILE ,   EPARCHY_CODE ,   UPDATE_TIME ,   UPDATE_STAFF_ID ,   UPDATE_DEPART_ID ,   REMARK  ,   RSRV_STR1,   RSRV_STR2,   RSRV_STR3,   RSRV_STR4,   RSRV_STR5,   RSRV_TAG1,   RSRV_TAG2,   RSRV_TAG3    FROM   TI_O_PCC_TASK T  ,  ( SELECT  B.BASS_FLOW_ID FROM  TI_O_PCC_SUBSCRIBER  B  WHERE B.IN_DATE >= to_date(:IN_DATE,'YYYY-MM-DD HH24:MI:SS')   AND  (:BASS_FLOW_ID IS NULL  OR  B.BASS_FLOW_ID=:BASS_FLOW_ID )  AND  (:USR_IDENTIFIER IS NULL  OR  B.USR_IDENTIFIER=:USR_IDENTIFIER)  )  C where C.bass_flow_id= T.bass_flow_id and t.rsrv_tag2=:SYSTEM_TYPE