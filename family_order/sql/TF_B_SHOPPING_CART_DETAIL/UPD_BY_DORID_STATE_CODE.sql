UPDATE TF_B_SHOPPING_CART_DETAIL D SET D.DETAIL_STATE_CODE=:DETAIL_STATE_CODE
 WHERE D.DETAIL_ORDER_ID=:DETAIL_ORDER_ID and d.detail_state_code='0'