SELECT A.PLAT_SYN_ID,
       A.SOURCE_DB,
       A.SYN_LOG_ID,
       A.SUBSCRIBE_ID,
       A.BPM_ID,
       A.BUSI_SIGN,
       A.GROUP_ID,
       A.OUTERF_ID,
       A.RELATED_INFO,
       A.BATCH_ID,
       A.SEQ,
       A.TRANS_ID,
       A.SEND_NO,
       A.DAY,
       A.IN_MODE_CODE,
       A.PRIORITY,
       A.DEAL_STATE,
       decode(A.DEAL_STATE,'00','初始','20','发送程序发送成功','21','发送程序发送失败','23','-数据已经发送，等待平台数据返回','32','由于SEQ小的数据发送失败，导致不能发送','') STATE,
       A.SUB_FLAG,
       A.RSLT_SUB_FLAG,
       A.REMOTE_RSLT_CODE1,
       A.REMOTE_RSLT_DESC1,
       A.REMOTE_RSLT_CODE2,
       A.REMOTE_RSLT_DESC2,
       A.REMOTE_RSLT_CODE3,
       A.REMOTE_RSLT_DESC3,
       A.OC_TAG,
       A.UPDATE_TIME,
       A.USER_ID,
       A.PKGSEQ,
       A.PKGSUM,
       A.FEE_SERIAL_NUMBER,
       A.SERIAL_NUMBER,
       A.IMSI,
       A.SERV_TYPE,
       A.SUB_SERV_TYPE,
       A.OPER_CODE,
       A.OPERATE_DATE,
       A.ACCEPT_DATE,
       A.END_DATE,
       A.ACTION_REASON,
       A.CHGFLG,
       A.BILL_TYPE,
       A.SP_CODE,
       A.BIZ_CODE,
       A.PACK_NUMB,
       A.PASSWORD,
       A.OPR_SOURCE,
       A.CHANNEL_CODE,
       A.RESERVE,
       A.TRADE_EPARCHY_CODE,
       A.TRADE_DEPART_ID,
       A.TRADE_STAFF_ID,
       A.RSRV_STR1,
       A.RSRV_STR2,
       A.RSRV_STR3,
       A.RSRV_STR4,
       A.RSRV_STR5,
       A.RSRV_STR6,
       A.RSRV_STR7,
       A.RSRV_DATE1,
       A.RSRV_DATE2,
       A.RSRV_DATE3,
       A.REMARK,
       A.TRADE_CITY_CODE
       FROM  TL_B_IBPLAT_SYN A, TF_B_TRADE_PLATSVC B
WHERE A.SERIAL_NUMBER=:SERIAL_NUMBER
AND TRUNC(A.OPERATE_DATE)=TO_DATE(:OPERATE_DATE,'yyyy-MM-dd')
AND A.SUBSCRIBE_ID=:SUBSCRIBE_ID
AND A.OPER_CODE='06'
AND A.USER_ID=B.USER_ID
AND A.SUBSCRIBE_ID=B.TRADE_ID
AND B.SERVICE_ID IN (SELECT PARA_CODE1 FROM  TD_S_COMMPARA C WHERE C.param_attr='909')
   order by A.OPERATE_DATE desc