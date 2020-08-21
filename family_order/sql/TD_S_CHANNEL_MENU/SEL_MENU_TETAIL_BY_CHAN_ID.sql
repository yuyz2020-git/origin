--IS_CACHE=Y
Select  ms.STAFF_ROLE, m.MENU_ID, mr.RELATION_MENU_ID PARENT_MENU_ID,
     m.CHAN_ID, m.BRAND_CODE, m.MENU_EPARCHY, m.MENU_LEVEL, m.MENU_CODE, m.MENU_NAME, a.PARAM_NAME, a.PARAM_MIN_VALUE
     From TD_M_MENU_STAFF ms, TD_S_CHANNEL_MENU m, TD_M_MENU_RELATION mr, TD_S_CHANNEL_MENU_ATTR a
	 where 1 = 1 
     and ms.STATUS_TAG = '0'
	 and ms.STAFF_ROLE in 
	 (select sr.STAFF_ROLE from TD_S_ECHANNAL_STAFF s,TD_S_ECHANNAL_RELATION sr
		where 1 = 1 
	 	and s.CHAN_ID = :CHAN_ID
		and s.ID_VALUE = sr.STAFF_ID)
     and m.MENU_ID = ms.MENU_ID
     and m.MENU_ID = mr.CURRENT_MENU_ID
     and m.MENU_ID = a.MENU_ID(+)
     and mr.RELATION_TYPE = '0'
     Order By ms.STAFF_ROLE, m.BRAND_CODE DESC, m.MENU_EPARCHY DESC, m.MENU_LEVEL, m.MENU_CODE, mr.RELATION_MENU_ID, m.MENU_ID