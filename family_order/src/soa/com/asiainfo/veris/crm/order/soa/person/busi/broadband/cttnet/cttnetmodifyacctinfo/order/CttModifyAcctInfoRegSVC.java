
package com.asiainfo.veris.crm.order.soa.person.busi.broadband.cttnet.cttnetmodifyacctinfo.order;

import com.asiainfo.veris.crm.order.soa.frame.bof.execute.service.OrderService;

public class CttModifyAcctInfoRegSVC extends OrderService
{

    @Override
    public String getOrderTypeCode() throws Exception
    {
        return "9728";
    }

    @Override
    public String getTradeTypeCode() throws Exception
    {
        return "9728";
    }

}
