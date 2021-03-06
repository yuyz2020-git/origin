SELECT SMS_NOTICE_ID, MOD(SMS_NOTICE_ID, 10000) PARTITION_ID, EPARCHY_CODE,
               BRAND_CODE, IN_MODE_CODE, SMS_NET_TAG, CHAN_ID, SEND_OBJECT_CODE,
               SEND_TIME_CODE, SEND_COUNT_CODE, RECV_OBJECT_TYPE, RECV_OBJECT,
               RECV_ID, SMS_TYPE_CODE, SMS_KIND_CODE, NOTICE_CONTENT_TYPE,
               SUBSTR(NOTICE_CONTENT,0,512) NOTICE_CONTENT, REFERED_COUNT, FORCE_REFER_COUNT, FORCE_OBJECT,
               FORCE_START_TIME, FORCE_END_TIME, SMS_PRIORITY, REFER_TIME,
               REFER_STAFF_ID, REFER_DEPART_ID, DEAL_TIME, DEAL_STAFFID,
               DEAL_DEPARTID, DEAL_STATE, REMARK, REVC1, REVC2, REVC3, REVC4,
               MONTH, DAY
          FROM TF_B_TRADE_SMS
         WHERE TRADE_ID = :TRADE_ID
           AND MONTH = :ACCEPT_MONTH
           AND CANCEL_TAG = :CANCEL_TAG