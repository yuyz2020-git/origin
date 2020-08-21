--IS_CACHE=Y
select /*+INDEX(a PK_TD_B_SMS_PARA)*/a.TRADE_TYPE_CODE TRADE_TYPE_CODE,a.BRAND_CODE BRAND_CODE,a.PRODUCT_ID PRODUCT_ID,a.SMS_CODE SMS_CODE,a.SMS_TYPE_CODE SMS_TYPE_CODE,a.SMS_NAME SMS_NAME,a.SMS_CONTENT SMS_CONTENT,a.BILLING_TYPE BILLING_TYPE,a.SMS_INFO SMS_INFO,a.PROCESS_TAG_SET PROCESS_TAG_SET,a.EPARCHY_CODE EPARCHY_CODE,
       b.IN_MODE_CODE IN_MODE_CODE,b.SP_CODE SP_CODE,b.BIZ_CODE BIZ_CODE,b.BIZ_PRI BIZ_PRI,b.SMS_PROCESS_TAG SMS_PROCESS_TAG,b.OPER_CODE OPER_CODE 
  from TD_B_SMS_PARA a,TD_B_INMODE_SMS_PARA b     
 where (a.TRADE_TYPE_CODE=:TRADE_TYPE_CODE or a.TRADE_TYPE_CODE=-1)
   and (a.BRAND_CODE=:BRAND_CODE or a.BRAND_CODE='ZZZZ')
   and (a.PRODUCT_ID=TO_NUMBER(:PRODUCT_ID) or a.PRODUCT_ID=-1)
   and a.BILLING_TYPE like :BILLING_TYPE||'%'
   and a.SMS_CODE=b.SMS_CODE
   and (a.EPARCHY_CODE=:EPARCHY_CODE or a.EPARCHY_CODE='ZZZZ')
   and (b.IN_MODE_CODE=:IN_MODE_CODE or b.IN_MODE_CODE='Q')
   and (b.SP_CODE=:SP_CODE or b.SP_CODE='ZZZZ')
   and (b.BIZ_CODE=:BIZ_CODE or b.BIZ_CODE='ZZZZ')
   and b.SMS_PROCESS_TAG like '__'||:SMS_PROCESS_TAG||'%'
   and (b.OPER_CODE=:OPER_CODE )
   and sysdate between a.start_date and a.end_date
   and a.SMS_ID= b.SMS_ID
   and b.BIZ_PRI=(select /*+INDEX(a PK_TD_B_SMS_PARA)*/max(b.BIZ_PRI) 
  from TD_B_SMS_PARA a,TD_B_INMODE_SMS_PARA b 
 where (a.TRADE_TYPE_CODE=:TRADE_TYPE_CODE or a.TRADE_TYPE_CODE=-1)
   and (a.BRAND_CODE=:BRAND_CODE or a.BRAND_CODE='ZZZZ')
   and (a.PRODUCT_ID=TO_NUMBER(:PRODUCT_ID) or a.PRODUCT_ID=-1)
   and a.BILLING_TYPE like :BILLING_TYPE||'%'
   and a.SMS_CODE=b.SMS_CODE
   and (a.EPARCHY_CODE=:EPARCHY_CODE or a.EPARCHY_CODE='ZZZZ')
   and (b.IN_MODE_CODE=:IN_MODE_CODE or b.IN_MODE_CODE='Q')
   and (b.SP_CODE=:SP_CODE or b.SP_CODE='ZZZZ')
   and (b.BIZ_CODE=:BIZ_CODE or b.BIZ_CODE='ZZZZ')
   and b.SMS_PROCESS_TAG like '__'||:SMS_PROCESS_TAG||'%'
   and (b.OPER_CODE=:OPER_CODE )
   and sysdate between a.start_date and a.end_date
   and b.BIZ_PRI<>-1)