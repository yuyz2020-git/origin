select 
a.INST_ID,a.PARTITION_ID, to_char(a.USER_ID) USER_ID, a.SERIAL_NUMBER, a.MERCH_SPEC_CODE, a.MERCH_ORDER_ID, a.MERCH_OFFER_ID, a.GROUP_ID, a.OPR_SOURCE,
 a.BIZ_MODE, a.STATUS, a.HOST_COMPANY, to_char(a.START_DATE,'yyyy-mm-dd hh24:mi:ss') START_DATE, 
 to_char(a.END_DATE,'yyyy-mm-dd hh24:mi:ss') END_DATE, to_char(a.UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME, a.UPDATE_STAFF_ID,
  a.UPDATE_DEPART_ID, a.REMARK, a.RSRV_NUM1, a.RSRV_NUM2, a.RSRV_NUM3, to_char(a.RSRV_NUM4) RSRV_NUM4, to_char(a.RSRV_NUM5) RSRV_NUM5, 
  a.RSRV_STR1, a.RSRV_STR2, a.RSRV_STR3, a.RSRV_STR4, a.RSRV_STR5, to_char(a.RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1, 
  to_char(a.RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2, 
 to_char(a.RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3, a.RSRV_TAG1, a.RSRV_TAG2, a.RSRV_TAG3
from TF_F_USER_GRP_MERCH a
      where a.USER_ID=:USER_ID    
      and (a.MERCH_SPEC_CODE = :MERCH_SPEC_CODE or :MERCH_SPEC_CODE IS NULL)
      and (a.STATUS =:STATUS  or :STATUS IS NULL)
      and a.end_date>sysdate