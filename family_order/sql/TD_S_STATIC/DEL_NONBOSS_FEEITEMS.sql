UPDATE TD_S_STATIC S SET S.VALID_FLAG = '1'
   WHERE TYPE_ID = 'PAY_ITEM_NAME'
   AND DATA_ID = :VDATA_ID