--IS_CACHE=Y
SELECT db_source,sid,host,port,jndi,eparchy_list,
       ''''||REPLACE(TRIM(eparchy_list),',',''',''')||'''' para_value
  FROM td_s_dbconfig
 WHERE eparchy_list LIKE '%'||:EPARCHY_CODE||'%'