UPDATE tl_b_paylog 
	SET EFFECT_TAG=:DEAL_TAG,UPDATE_TIME=SYSDATE,CHANNEL_ACCEPT_TIME=TO_DATE(:CHANNEL_ACCEPT_TIME,'YYYY-MM-DD HH24:MI:SS')
 WHERE ORDERID=:ORDER_ID