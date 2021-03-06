/**
 * 
 */

package com.asiainfo.veris.crm.order.soa.person.busi.broadband.nophonewidenet.nophonewideuseractive.order;

import com.ailk.common.data.IData;
import com.ailk.common.data.IDataset;
import com.asiainfo.veris.crm.order.soa.frame.bof.data.orderdata.MainOrderData;
import com.asiainfo.veris.crm.order.soa.frame.bof.data.tradedata.BusiTradeData;
import com.asiainfo.veris.crm.order.soa.frame.bof.execute.service.OrderService;

public class NoPhoneWideUserActiveRegSVC extends OrderService
{

    private static final long serialVersionUID = 2563107001595275438L;

    public String getOrderTypeCode() throws Exception
    {
        return this.input.getString("ORDER_TYPE_CODE", "688");
    }

    public String getTradeTypeCode() throws Exception
    {
        return this.input.getString("TRADE_TYPE_CODE", "688");
    }

    public void resetMainOrderData(MainOrderData orderData, BusiTradeData btd) throws Exception
    {
        orderData.setSubscribeType("300");
    }

    /**
     * @param input
     * @return
     * @throws Exception
     */
    public IDataset tradeReg(IData input) throws Exception
    {

        if (!"KD_".equals(input.getString("SERIAL_NUMBER").substring(0, 3)))
        {
        	input.put("SERIAL_NUMBER_A", input.getString("SERIAL_NUMBER"));
            input.put("SERIAL_NUMBER", "KD_" + input.getString("SERIAL_NUMBER"));
        }
        return super.tradeReg(input);

    }
}
