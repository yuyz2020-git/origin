
package com.asiainfo.veris.crm.order.soa.person.busi.broadband.cttnet.cttnetmodifycustinfo.order;

import com.asiainfo.veris.crm.order.soa.frame.bof.execute.service.OrderService;

public class CttModifyCustInfoRegSVC extends OrderService
{

    @Override
    public String getOrderTypeCode() throws Exception
    {
        return "9726";
    }

    @Override
    public String getTradeTypeCode() throws Exception
    {
        return "9726";
    }

}
