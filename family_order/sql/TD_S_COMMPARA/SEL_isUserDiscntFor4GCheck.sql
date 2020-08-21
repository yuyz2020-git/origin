SELECT COUNT(1) RECORDCOUNT
  FROM TF_F_USER A, TF_F_CUST_VIPSIMBAK B, TF_F_USER_RES C
 WHERE A.USER_ID = TO_NUMBER(:USER_ID)
   AND A.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND C.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND A.REMOVE_TAG = '0'
   AND (A.USER_ID = B.VIP_ID OR
       B.VIP_ID = (SELECT D.VIP_ID
                      FROM TF_F_CUST_VIP D
                     WHERE A.USER_ID = D.USER_ID
                       AND D.REMOVE_TAG = 0))
   AND A.USER_ID = C.USER_ID
   AND C.RES_TYPE_CODE = '1'
   AND B.IMSI = C.IMSI
   AND B.SIM_CARD_NO = C.RES_CODE
   AND C.RSRV_TAG3 = '1'