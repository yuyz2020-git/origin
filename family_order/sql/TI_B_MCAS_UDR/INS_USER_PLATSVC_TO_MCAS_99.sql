INSERT INTO TI_B_MCAS_UDR
  (IBSYSID,
   TRADE_ID,
   USER_ID,
   SERIAL_NUMBER,
   GIFT_SERIAL_NUMBER,
   OPER_CODE,
   SERV_TYPE,
   BIZ_TYPE_CODE,
   UPDATE_TIME,
   ACCEPT_DATE,
   END_DATE,
   BILL_TYPE,
   SP_CODE,
   BIZ_CODE,
   OPR_SOURCE,
   INFO_CODE,
   INFO_VALUE,
   CHANNEL_CODE,
   OPERATE_TIME,
   DEAL_STATE,
   TRADE_EPARCHY_CODE,
   TRADE_CITY_CODE,
   TRADE_DEPART_ID,
   TRADE_STAFF_ID,
   IN_MODE_CODE,
   REMARK)
  SELECT :TRADE_EPARCHY_CODE || TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') ||
         RPAD(SEQ_IBSYSID_MCAS.NEXTVAL, 8, '0'),
         :TRADE_ID,
         A.USER_ID,
         A.SERIAL_NUMBER,
         A.GIFT_SERIAL_NUMBER,
         '07',
         A.ORG_DOMAIN,
         A.BIZ_TYPE_CODE,
         TO_DATE(:UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS'),
         TO_DATE(:START_DATE, 'YYYY-MM-DD HH24:MI:SS'),
         TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS'),
         --A.BILL_TYPE,
         A.BILL_TYPE,
         A.SP_CODE,
         DECODE(A.BIZ_TYPE_CODE,'27',
         				DECODE(LENGTH(A.BIZ_CODE)-LENGTH(REPLACE(A.BIZ_CODE,'-','')),2,SUBSTR(A.BIZ_CODE,1,INSTR(A.BIZ_CODE,'-') - 1),A.BIZ_CODE),
         				A.BIZ_CODE) BIZ_CODE,
         :OPR_SOURCE,
         '',
         '',
         DECODE(A.ORG_DOMAIN, '1258', '88', '99'),
         TO_DATE(:UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS'),
         '0',
         :TRADE_EPARCHY_CODE,
         :TRADE_CITY_CODE,
         :TRADE_DEPART_ID,
         :TRADE_STAFF_ID,
         :IN_MODE_CODE,
         '用户DSMP业务全退订更改订购关系同步给MCAS平台'
    FROM TF_F_USER_PLATSVC A, TD_B_PLATSVC C
   WHERE A.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
     AND A.USER_ID = TO_NUMBER(:USER_ID)
     AND A.ORG_DOMAIN = :ORG_DOMAIN
     AND A.BIZ_STATE_CODE = 'E'
     AND A.START_DATE = TO_DATE(:START_DATE, 'YYYY-MM-DD HH24:MI:SS')
     AND SYSDATE BETWEEN A.START_DATE AND A.END_DATE
     AND A.SERVICE_ID = C.SERVICE_ID
     AND (C.SERV_TYPE = '1' or C.BIZ_TYPE_CODE = '27')
     AND EXISTS (SELECT 1
            FROM TD_M_SP_BIZ B
           WHERE A.SP_CODE = B.SP_CODE
             AND A.BIZ_CODE = B.BIZ_CODE
             AND B.BIZ_ATTR = 'G')
	AND NOT EXISTS (SELECT 1
            FROM TD_M_SP_BIZ D
           WHERE A.SP_CODE = D.SP_CODE
             AND A.BIZ_CODE = D.BIZ_CODE
             AND D.BIZ_STATUS in ('E','N')
             AND D.BIZ_STATE_CODE in ('E','N'))