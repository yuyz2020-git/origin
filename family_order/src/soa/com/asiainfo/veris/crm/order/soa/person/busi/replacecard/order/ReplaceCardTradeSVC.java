package com.asiainfo.veris.crm.order.soa.person.busi.replacecard.order;

import com.asiainfo.veris.crm.order.soa.frame.bof.execute.service.OrderService;

public class ReplaceCardTradeSVC extends OrderService{

	@Override
	public String getOrderTypeCode() throws Exception {
		// TODO Auto-generated method stub
		return "7889";
	}

	@Override
	public String getTradeTypeCode() throws Exception {
		// TODO Auto-generated method stub
		return "7889";
	}

}
