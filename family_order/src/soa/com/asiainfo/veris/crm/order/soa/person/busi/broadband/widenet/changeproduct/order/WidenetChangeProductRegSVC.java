/**
 * 
 */

package com.asiainfo.veris.crm.order.soa.person.busi.broadband.widenet.changeproduct.order;

import com.ailk.common.data.IData;
import com.ailk.common.data.IDataset;
import com.asiainfo.veris.crm.order.pub.exception.WidenetException;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.IDataUtil;
import com.asiainfo.veris.crm.order.soa.frame.bcf.exception.CSAppException;
import com.asiainfo.veris.crm.order.soa.frame.bof.data.orderdata.MainOrderData;
import com.asiainfo.veris.crm.order.soa.frame.bof.data.tradedata.BusiTradeData;
import com.asiainfo.veris.crm.order.soa.frame.bof.execute.service.OrderService;
import com.asiainfo.veris.crm.order.soa.frame.csservice.common.query.broadband.WidenetInfoQry;

public class WidenetChangeProductRegSVC extends OrderService
{

    private static final long serialVersionUID = 2563107001595275438L;

    public String getOrderTypeCode() throws Exception
    {
        if (this.input.getString("TRADE_TYPE_CODE", "").equals(""))
        {
            IDataset widenetInfos = WidenetInfoQry.getUserWidenetInfoBySerialNumber(input.getString("SERIAL_NUMBER"));
            if (IDataUtil.isNotEmpty(widenetInfos))
            {
                String wideType = widenetInfos.getData(0).getString("RSRV_STR2");
                if ("4".equals(wideType))
                {
                    input.put("ORDER_TYPE_CODE", "631");// 校园
                }
                else if ("3".equals(wideType))
                {
                    input.put("ORDER_TYPE_CODE", "616");// ftth
                }
                else if ("2".equals(wideType))
                {
                    input.put("ORDER_TYPE_CODE", "614");// adsl
                }
                else
                {
                    input.put("ORDER_TYPE_CODE", "601");// gpon
                }

            }
            else
            {
                CSAppException.apperr(WidenetException.CRM_WIDENET_4);
            }
        }
        else
        {
            return this.input.getString("TRADE_TYPE_CODE", "");
        }
        return this.input.getString("ORDER_TYPE_CODE", "");
    }

    public String getTradeTypeCode() throws Exception
    {
        if (this.input.getString("TRADE_TYPE_CODE", "").equals(""))
        {
            IDataset widenetInfos = WidenetInfoQry.getUserWidenetInfoBySerialNumber(input.getString("SERIAL_NUMBER"));
            if (IDataUtil.isNotEmpty(widenetInfos))
            {
                String wideType = widenetInfos.getData(0).getString("RSRV_STR2");
                if ("4".equals(wideType))
                {
                    input.put("TRADE_TYPE_CODE", "631");// 校园
                }
                else if ("3".equals(wideType))
                {
                    input.put("TRADE_TYPE_CODE", "616");// ftth
                }
                else if ("2".equals(wideType))
                {
                    input.put("TRADE_TYPE_CODE", "614");// adsl
                }
                else
                {
                    input.put("TRADE_TYPE_CODE", "601");// gpon
                }

            }
            else
            {
                CSAppException.apperr(WidenetException.CRM_WIDENET_4);
            }
        }
        return this.input.getString("TRADE_TYPE_CODE", "");
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
            input.put("SERIAL_NUMBER", "KD_" + input.getString("SERIAL_NUMBER"));
        }
        return super.tradeReg(input);

    }
}
