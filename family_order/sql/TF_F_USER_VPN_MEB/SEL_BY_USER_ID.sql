select PARTITION_ID,USER_ID,USER_ID_A,LINK_MAN_TAG,TELPHONIST_TAG,MAIN_TAG,ADMIN_FLAG
 ,SERIAL_NUMBER,USER_PIN,SHORT_CODE,INNET_CALL_PWD,OUTNET_CALL_PWD,MON_FEE_LIMIT,CALL_NET_TYPE,
 CALL_AREA_TYPE,OVER_FEE_TAG,LIMFEE_TYPE_CODE,SINWORD_TYPE_CODE,LOCK_TAG,CALL_DISP_MODE,PERFEE_PLAY_BACK,
 NOT_BATCHFEE_TAG,PKG_START_DATE,PKG_TYPE,SELL_DEPART,OVER_RIGHT_TAG,CALL_ROAM_TYPE,BYCALL_ROAM_TYPE,OUTNETGRP_USE_TYPE,
 OUTGRP,MAX_POUT_NUM,FUNC_TLAGS,MEMBER_KIND,IS_TX,VPN_TYPE,EXT_FUNC_TLAGS,OPEN_DATE,REMOVE_TAG,REMOVE_DATE,UPDATE_TIME,
 UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,
 RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3,INST_ID 
 from tf_f_user_vpn_meb WHERE user_id = TO_NUMBER(:USER_ID)
 AND partition_id = MOD(TO_NUMBER(:USER_ID), 10000)
 and remove_tag='0'