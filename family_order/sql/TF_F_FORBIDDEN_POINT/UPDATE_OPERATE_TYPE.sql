UPDATE TF_F_FORBIDDEN_POINT T
   SET T.FORB_OPERATE_TYPE = :OPERATE_TYPE, T.FORB_UPDATE_TIME = SYSDATE
 WHERE T.INFO_RECV_ID in (:INFO_RECV_ID)