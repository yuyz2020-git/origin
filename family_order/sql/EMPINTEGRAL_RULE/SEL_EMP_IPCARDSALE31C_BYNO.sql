--IS_CACHE=N
SELECT RES_KIND_CODE 有价卡类型编码, CITY_CODE 归属业务区, VALUE_CARD_NO 面值编码
FROM UCR_RES.TF_R_VALUECARD_USE@DBLNK_CENDBN2
WHERE FEE_TAG IN ('3', '1')--费用回收标志FEE_TAG=3   已销售费用已回缴,1状态NG已弃用
AND VALUE_CARD_NO = :USER_ID --ip卡卡号V_SMS.USER_NUM
AND SALE_TAG = '1' --销售标志,1买断销售
AND RES_TYPE_CODE = '31c' --有价卡类型编码e省内的，c是全国的 判断全国IP记帐卡
AND RES_STATE = '2' --有价卡状态编码,2 已使用/充值,(1空闲;2已销售;3已使用/充值;4已报废;5已过期;6已锁定)
AND SALE_TIME > ADD_MONTHS(SYSDATE, -9) --销售时间
AND ROWNUM < 2