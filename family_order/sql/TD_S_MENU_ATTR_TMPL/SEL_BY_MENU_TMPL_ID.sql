--IS_CACHE=Y
select MENU_TMPL_ID,PARAM_NAME from TD_S_MENU_ATTR_TMPL where 1=1
    and MENU_TMPL_ID = :MENU_TMPL_ID