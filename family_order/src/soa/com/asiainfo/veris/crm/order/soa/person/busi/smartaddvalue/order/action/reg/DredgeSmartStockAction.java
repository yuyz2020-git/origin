package com.asiainfo.veris.crm.order.soa.person.busi.smartaddvalue.order.action.reg;

import java.util.List;

import com.ailk.common.data.IData;
import com.ailk.common.data.IDataset;
import com.ailk.common.data.impl.DataMap;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.IDataUtil;
import com.asiainfo.veris.crm.order.soa.frame.bcf.base.CSBizBean;
import com.asiainfo.veris.crm.order.soa.frame.bcf.bof.util.data.TradeTableEnum;
import com.asiainfo.veris.crm.order.soa.frame.bcf.dao.Dao;
import com.asiainfo.veris.crm.order.soa.frame.bof.action.ITradeAction;
import com.asiainfo.veris.crm.order.soa.frame.bof.data.consts.BofConst;
import com.asiainfo.veris.crm.order.soa.frame.bof.data.tradedata.BusiTradeData;
import com.asiainfo.veris.crm.order.soa.frame.bof.data.tradedata.extend.DiscntTradeData;
import com.asiainfo.veris.crm.order.soa.frame.csservice.common.query.other.ActiveStockInfoQry;
import com.asiainfo.veris.crm.order.soa.frame.csservice.common.query.param.CommparaInfoQry;

public class DredgeSmartStockAction implements ITradeAction{

	@Override
	public void executeAction(BusiTradeData btd) throws Exception {
		// TODO Auto-generated method stub
		List<DiscntTradeData> discntList = btd.getTradeDatas(TradeTableEnum.TRADE_DISCNT);
        if (discntList == null || discntList.size() == 0)
        {
            return;
        }
        
        for (int i = 0; i < discntList.size(); i++)
        {
        	DiscntTradeData tradeDiscnt = discntList.get(i);
            String modifyTag = tradeDiscnt.getModifyTag();
            String discntCode = tradeDiscnt.getDiscntCode();
            if (BofConst.MODIFY_TAG_ADD.equals(modifyTag) )
            {
            	IDataset commparaInfos9211 = CommparaInfoQry.queryComparaByAttrAndCode1("CSM","9211",discntCode,null);
            	if(IDataUtil.isNotEmpty(commparaInfos9211)){
            		String paraCode12 = commparaInfos9211.first().getString("PARA_CODE12");
            		String resKindCode = discntCode.substring(discntCode.length()-4, discntCode.length());
            		if("VIP".equals(paraCode12)){
            			IDataset result = ActiveStockInfoQry.queryByResKind(resKindCode, CSBizBean.getVisit().getStaffId(), CSBizBean.getVisit().getCityCode(), CSBizBean.getTradeEparchyCode());
            			if(IDataUtil.isNotEmpty(result)){
            				IData cond = new DataMap();
                	        cond.put("RES_KIND_CODE", resKindCode);
                	        cond.put("STAFF_ID", CSBizBean.getVisit().getStaffId());
                	        cond.put("EPARCHY_CODE", CSBizBean.getTradeEparchyCode());
                	        cond.put("CITY_CODE", CSBizBean.getVisit().getCityCode());
                	        StringBuilder sql = new StringBuilder(200);
                	        sql.append(" UPDATE TF_F_ACTIVE_STOCK");
                	        sql.append(" SET WARNNING_VALUE_U = WARNNING_VALUE_U + 1");
                	        sql.append(" WHERE STAFF_ID = :STAFF_ID");
                	        sql.append(" AND EPARCHY_CODE = :EPARCHY_CODE");
                	        sql.append(" AND RES_KIND_CODE = :RES_KIND_CODE");
                	        sql.append(" AND CITY_CODE = :CITY_CODE");
                	        Dao.executeUpdate(sql, cond);
            			}
            			
            		}
            	}
            	
            }
        }
		
	}

}
