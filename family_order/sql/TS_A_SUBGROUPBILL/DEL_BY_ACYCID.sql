DELETE FROM ts_a_subgroupbill
 WHERE acyc_id=:ACYC_ID
AND  MOD(USER_ID,100) >=:1 AND MOD(USER_ID,100) <=:2