
package com.asiainfo.veris.crm.order.soa.person.busi.ftthmodemmanage.order;

import com.asiainfo.veris.crm.order.soa.frame.bof.execute.service.OrderService;

public class FTTHModemReturnRegSVC extends OrderService
{

    @Override
    public String getOrderTypeCode() throws Exception
    {
        return "7133";
    }

    @Override
    public String getTradeTypeCode() throws Exception
    {
        return "7133";
    }

}
