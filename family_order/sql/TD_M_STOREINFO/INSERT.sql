INSERT INTO td_m_storeinfo(store_id,store_name,store_name_en,store_desc,csr_tel,receive_ord_url,notice_pay_url,recon_type,state_code,need_online_rslt,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,update_time,remark)
 VALUES(:STORE_ID,:STORE_NAME,:STORE_NAME_EN,:STORE_DESC,:CSR_TEL,:RECEIVE_ORD_URL,:NOTICE_PAY_URL,:RECON_TYPE,:STATE_CODE,:NEED_ONLINE_RSLT,:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,TO_DATE(:UPDATE_TIME,'YYYY-MM-DD HH24:MI:SS'),:REMARK)