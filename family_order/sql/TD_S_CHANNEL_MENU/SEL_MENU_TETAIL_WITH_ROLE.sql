--IS_CACHE=Y
select m.MENU_ID, m.MENU_CODE, 
	r.RELATION_MENU_ID PARENT_MENU_ID, 
	m.MENU_EPARCHY, m.BRAND_CODE, m.MENU_NAME, m.MENU_LEVEL
	from TD_S_CHANNEL_MENU m, ( select * from TD_M_MENU_RELATION where RELATION_TYPE = '0') r
	where 1 = 1
	and m.MENU_ID = r.CURRENT_MENU_ID
	and m.MENU_ID in 
		(select menu_id from TD_M_MENU_STAFF where 1=1 
		and STAFF_ROLE = :STAFF_ROLE
		and STATUS_TAG = '0') 
	and m.CHAN_ID = :CHAN_ID
	and ( m.BRAND_CODE = :BRAND_CODE or m.BRAND_CODE = 'ZZZZ')
	and m.MENU_EPARCHY = :MENU_EPARCHY
	and m.MENU_ID = :MENU_ID
	order by m.MENU_ID