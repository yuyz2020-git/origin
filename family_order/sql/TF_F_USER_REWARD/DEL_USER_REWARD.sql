DELETE TF_F_USER_REWARD
WHERE USER_ID = TO_NUMBER(:USER_ID)
AND PARTITION_ID = TO_NUMBER(:PARTITION_ID)