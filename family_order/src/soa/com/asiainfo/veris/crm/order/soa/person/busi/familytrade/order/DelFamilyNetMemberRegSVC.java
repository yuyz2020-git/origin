
package com.asiainfo.veris.crm.order.soa.person.busi.familytrade.order;

import com.ailk.common.data.IData;
import com.ailk.common.data.IDataset;
import com.ailk.common.data.impl.DatasetList;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.IDataUtil;
import com.asiainfo.veris.crm.order.soa.frame.bcf.base.CSAppCall;
import com.asiainfo.veris.crm.order.soa.frame.bof.data.tradedata.BusiTradeData;
import com.asiainfo.veris.crm.order.soa.frame.bof.execute.service.OrderService;

public class DelFamilyNetMemberRegSVC extends OrderService
{

    @Override
    public String getOrderTypeCode() throws Exception
    {
        return "284";
    }

    @Override
    public String getTradeTypeCode() throws Exception
    {
        return "284";
    }
    
    /**
     * 界面互联网改造,组建亲亲网/增加成员（283）、删除亲亲网成员（284）、变更亲亲网短号（287）可同时办理
     * 被作为主订单的业务，顺序依次为：283、284、287
     * 处理变更亲亲网短号
     */
	public void otherTradeDeal(IData input, BusiTradeData btd) throws Exception {
		if (!input.containsKey("ADD_MEB_LIST") && input.containsKey("CHG_MEB_LIST")) { // 如果不存在增加成员，并且存在变更亲亲网短号数据，则调用变更亲亲网短号受理接口
			IDataset chgMebList = input.getDataset("CHG_MEB_LIST");
			if(IDataUtil.isNotEmpty(chgMebList)) {
				input.put("MEB_LIST", new DatasetList(input.getString("CHG_MEB_LIST")));
				CSAppCall.call("SS.FamilyShortCodeBusiRegSVC.tradeReg", input);
			}
		}
	}
}
