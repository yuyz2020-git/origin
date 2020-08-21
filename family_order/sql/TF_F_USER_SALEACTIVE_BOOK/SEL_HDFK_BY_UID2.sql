select S.USER_ID, S.PRODUCT_ID, S.PACKAGE_ID, S.CAMPN_TYPE, S.ACCEPT_TRADE_ID
  from TF_F_USER_SALEACTIVE_BOOK S
 where S.USER_ID = :USER_ID
   and S.PARTITION_ID = mod(TO_NUMBER(:USER_ID), 10000)
   and S.DEAL_STATE_CODE = '0'
   AND S.BOOK_TYPE='1'