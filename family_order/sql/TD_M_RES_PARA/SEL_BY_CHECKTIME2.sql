select (select trunc(sysdate-rdvalue2) from TD_M_RES_PARA
        where eparchy_code=:EPARCHY_CODE and para_attr='1035' and para_code1=:PARA_CODE1 and para_code2=:PARA_CODE2)
       -(select PARA_VALUE2 from TD_M_RES_PARA
        where eparchy_code=:EPARCHY_CODE and para_attr='1036' and para_code1='DISCOUNTDAY' and PARA_VALUE1='2') para_value8
from dual