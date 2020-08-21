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
  SELECT T.EPARCHY_CODE || TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') ||
         RPAD(SEQ_IBSYSID_MCAS.NEXTVAL, 8, '0'),
         A.TRADE_ID,
         A.USER_ID,
         A.SERIAL_NUMBER,
         A.GIFT_SERIAL_NUMBER,
         DECODE(A.OPER_CODE,
                '14',
                '04',
                '15',
                '05',
                '11',
                '06',
                A.OPER_CODE),
         A.ORG_DOMAIN,
         A.BIZ_TYPE_CODE,
         NVL(A.UPDATE_TIME, SYSDATE),
         A.START_DATE,
         A.END_DATE,
         --A.BILL_TYPE,
         A.BILL_TYPE,
         A.SP_CODE,
         DECODE(A.BIZ_TYPE_CODE,'27',
         				DECODE(LENGTH(A.BIZ_CODE)-LENGTH(REPLACE(A.BIZ_CODE,'-','')),2,SUBSTR(A.BIZ_CODE,1,INSTR(A.BIZ_CODE,'-') - 1),A.BIZ_CODE),
         				A.BIZ_CODE) BIZ_CODE,
         DECODE(A.BIZ_TYPE_CODE,'27', '08','36',DECODE(A.OPR_SOURCE,'99','03',A.OPR_SOURCE), DECODE(A.OPR_SOURCE,'64','08',A.OPR_SOURCE)),
         '',
         '',
         DECODE(A.BIZ_TYPE_CODE, '52', '88', '60', '88', '65', '88','10', '88','14', '88','25', '88','20', '88', '27', '88','99'),
         NVL(A.UPDATE_TIME, SYSDATE),
         '0',
         T.TRADE_EPARCHY_CODE,
         T.TRADE_CITY_CODE,
         T.TRADE_DEPART_ID,
         T.TRADE_STAFF_ID,
         T.IN_MODE_CODE,
         T.TRADE_TYPE_CODE
    FROM TF_B_TRADE_PLATSVC A, TD_B_PLATSVC C, TF_B_TRADE T
   WHERE A.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
     AND A.TRADE_ID = :TRADE_ID
     AND T.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
     AND T.TRADE_ID = :TRADE_ID
     AND A.OPER_CODE IN ('05', '06', '15', '11')
     AND (A.RSRV_STR6 <> '0' OR A.RSRV_STR6 IS NULL)
     AND EXISTS (SELECT 1
            FROM TD_M_SP_BIZ B
           WHERE A.SP_CODE = B.SP_CODE
             AND A.BIZ_CODE = B.BIZ_CODE
             AND B.BIZ_ATTR = 'G')
     AND NOT EXISTS (SELECT 1
            FROM TD_M_SP_BIZ D
           WHERE A.SP_CODE = D.SP_CODE
             AND A.BIZ_CODE = D.BIZ_CODE
             AND (D.BIZ_STATUS in ('E','N')
             OR D.BIZ_STATE_CODE in ('E','N')
              OR(D.BIZ_STATUS='A' AND D.END_DATE<SYSDATE)))
     AND A.SERVICE_ID = C.SERVICE_ID
     AND (C.SERV_TYPE = '1' or C.BIZ_TYPE_CODE = '27')
     AND A.BIZ_TYPE_CODE <> 'B3'
     AND to_date(to_char(A.START_DATE,'YYYY-MM-DD'),'YYYY-MM-DD') <
       (SELECT LAST_DAY(to_date(to_char(SYSDATE,'YYYY-MM-DD'),'YYYY-MM-DD')) + 1 FROM DUAL)--开始日期不是下月