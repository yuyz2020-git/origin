package com.asiainfo.veris.crm.order.soa.person.busi.family.mfc.order;

import com.asiainfo.veris.crm.order.soa.frame.bof.execute.service.OrderService;

public class MfcSubDiscntTradeSVC extends OrderService
{
	private static final long serialVersionUID = 1L;
	
	@Override
	public String getOrderTypeCode() throws Exception 
	{
		return "580";
	}
	
	@Override
	public String getTradeTypeCode() throws Exception 
	{
		return "580";
	}
	
}
