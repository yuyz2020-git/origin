--IS_CACHE=Y
SELECT BL.BIZ_CODE BIZ_CODE,INTF_CODE,FUNC_DESC
FROM TD_S_STAFF_BIZLIST BL,TD_S_BIZTRANS BT 
WHERE BL.BIZ_CODE=BT.BIZ_CODE 
 AND BL.TRANS_CODE=BT.TRANS_CODE
 AND CHAN_ID=:CHAN_ID
 AND BL.BIZ_CODE=:BIZ_CODE