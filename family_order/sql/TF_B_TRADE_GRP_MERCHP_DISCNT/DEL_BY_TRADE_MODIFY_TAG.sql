delete from TF_B_TRADE_GRP_MERCHP_DISCNT b 
  where b.trade_id=TO_NUMBER(:TRADE_ID)
  and  b.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))
  and b.modify_tag=:MODIFY_TAG