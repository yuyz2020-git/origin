UPDATE TF_F_USER_CLUSTER
    SET  END_DATE  = TO_DATE(:END_DATE,'yyyy-MM-dd HH24:mi:ss')
  WHERE GROUP_ID = TO_NUMBER(:GROUP_ID)