select DISCNT_CODE ELEMENT_ID,
       MODIFY_TAG,
       'D' ELEMENT_TYPE_CODE,
       :START_DATE START_DATE,
       :END_DATE END_DATE
  from TF_B_TRADE_DISCNT
 where TRADE_ID = TO_NUMBER(:TRADE_ID)
   and ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
   and MODIFY_TAG = :MODIFY_TAG