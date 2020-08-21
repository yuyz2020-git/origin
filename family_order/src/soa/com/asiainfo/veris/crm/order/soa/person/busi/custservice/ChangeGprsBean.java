package com.asiainfo.veris.crm.order.soa.person.busi.custservice;

import java.util.List;

import com.ailk.common.data.IData;
import com.ailk.common.data.IDataset;
import com.ailk.common.data.impl.DataMap;
import com.ailk.common.data.impl.DatasetList;
import com.ailk.org.apache.commons.lang3.StringUtils;
import com.asiainfo.veris.crm.order.pub.consts.PersonConst;
import com.asiainfo.veris.crm.order.pub.exception.CrmUserException;
import com.asiainfo.veris.crm.order.pub.exception.ParamException;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.IDataUtil;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.SysDateMgr;
import com.asiainfo.veris.crm.order.soa.frame.bcf.base.CSAppCall;
import com.asiainfo.veris.crm.order.soa.frame.bcf.base.CSBizBean;
import com.asiainfo.veris.crm.order.soa.frame.bcf.exception.CSAppException;
import com.asiainfo.veris.crm.order.soa.frame.bcf.query.UcaInfoQry;
import com.asiainfo.veris.crm.order.soa.frame.bof.data.tradedata.extend.DiscntTradeData;
import com.asiainfo.veris.crm.order.soa.frame.bof.data.ucadata.UcaData;
import com.asiainfo.veris.crm.order.soa.frame.bof.data.ucadata.factory.UcaDataFactory;
import com.asiainfo.veris.crm.order.soa.frame.csservice.common.query.param.CommparaInfoQry;
import com.asiainfo.veris.crm.order.soa.frame.csservice.common.query.product.DiscntInfoQry;
import com.asiainfo.veris.crm.order.soa.frame.csservice.common.query.user.UserIdentInfoQry;
import com.asiainfo.veris.crm.order.soa.frame.csservice.common.query.user.UserSvcInfoQry;

/**
 * @author:YF
 * @Dat:   2013年12月20日   下午8:11:18 
 * @version: v1.0
 * @Description : TODO
 */
public class ChangeGprsBean extends CSBizBean {
	
	public IDataset changeGprsState(IData input,String servicename,String opr_code) throws Exception{
		
		IDataset dataset = new DatasetList();
		
		IData param = new DataMap();
		
		this.checkState(input);
		
		param = this.InputData(input,servicename,opr_code);
		
		if("1".equals(opr_code)){
			dataset = CSAppCall.call("SS.ChangeProductRegSVC.tradeReg", param);
		}else{
			dataset = CSAppCall.call("SS.ChangeProductRegSVC.ChangeProduct", param);
		}
		
		return dataset;
	}
	
	
	/**
	 * 客户有效性校验
	 * @Title : checkState
	 * @Description:TODO
	 * @Param : @param input
	 * @return: void
	 * @throws Exception 
	 */
	private void checkState(IData input) throws Exception{
		
		String serial_number = input.getString("SERIAL_NUMBER");
		
    	IData userInfo = UcaInfoQry.qryUserInfoBySn(serial_number);
    	
        if (IDataUtil.isEmpty(userInfo))
        {
        	CSAppException.apperr(CrmUserException.CRM_USER_112);
        }
        
        String userid = userInfo.getString("USER_ID");
        String identCode = input.getString("IDENT_CODE");
		String contactId = input.getString("CONTACT_ID");
		
		IDataset dataset = UserIdentInfoQry.queryIdentCode(userid, identCode, contactId);
		
		if(IDataUtil.isEmpty(dataset)){
			CSAppException.apperr(CrmUserException.CRM_USER_2998);
		}
		
	}
	
	
	
	/*
	 * 必传字段：SERIAL_NUMBER、ELEMENT_ID、ELEMENT_TYPE_CODE、MODIFY_TAG
	 * 其余字段：RSRV_STR1、START_DATE、ABSOLUTE_START_DATE（元素生效的绝对时间，批量接口新增优惠时传入）
	 *  ABSOLUTE_END_DATE（元素失效的绝对时间，批量接口新增优惠时传入 ）
	 */
	private IData InputData(IData input,String servicename,String opr_code) throws Exception{
		IData param = new DataMap();
		IDataset dataset = CommparaInfoQry.getDefaultOpenSvcId("CSM","1114",servicename);    //寻找配置的serviceid
		
		if(IDataUtil.isEmpty(dataset)){
			CSAppException.apperr(ParamException.CRM_PARAM_292);
		}
		
		String svcType = input.getString("SVC_TYPE");   //漫游类型:1 表示港澳台漫游，2 表示国际漫游    湖南无此区分
		String effectType = input.getString("EFFECT_TYPE");  //生效方式：1、立即；2、次日；3、次月。
		String serial_number = input.getString("SERIAL_NUMBER");
		String serviceid = dataset.getData(0).getString("PARAM_CODE","0");
		String[] services = serviceid.split(",");
		int num = services.length;
		String elementtypecode = dataset.getData(0).getString("PARA_CODE2","S");
		param.put("MODIFY_TAG", opr_code);  //0、开通；1、取消；2、修改
		param.put("ELEMENT_ID", serviceid);
		param.put("ELEMENT_TYPE_CODE", elementtypecode);
		param.put("SERIAL_NUMBER", serial_number);
		param.put("NUM", num);
		
		if("1".equals(effectType)){//立即
			param.put("RSRV_STR1", effectType);
		}else if("2".equals(effectType)){//次日
			param.put("RSRV_STR1", "2");
			param.put("ABSOLUTE_START_DATE", SysDateMgr.getTomorrowDate()+","+SysDateMgr.getTomorrowDate());
		}else if("3".equals(effectType)){//次月
			param.put("RSRV_STR1", "0");
		}
		
		//去除服务由于changeElement接口权限限制，改走前台tradeReg接口
		if("1".equals(opr_code)){
			String product_id = "";
			String package_id = "";
			//查询用户已开通的服务
			IDataset datasetsvc = new DatasetList();
			UcaData uca = UcaDataFactory.getNormalUca(serial_number); 
			List<DiscntTradeData> userDiscnts = uca.getUserDiscnts();
			datasetsvc = UserSvcInfoQry.qryUserSvcByUserSvcId(uca.getUserId(),serviceid);
			if(IDataUtil.isNotEmpty(datasetsvc))
			{
				for(int i = 0 ; i < datasetsvc.size() ; i++)
				{
					IData pa = datasetsvc.getData(i);
					if(serviceid.equals(pa.getString("SERVICE_ID"))){
						product_id = pa.getString("PRODUCT_ID");
						package_id = pa.getString("PACKAGE_ID");
						break;
					}
				}
			}else{
				CSAppException.apperr(CrmUserException.CRM_USER_181);
			}
			
			IDataset selectedElements = new DatasetList();
			IData data = new DataMap();
			data.put("PRODUCT_ID", product_id);
			data.put("PACKAGE_ID", package_id);
			data.put("ELEMENT_ID", serviceid);
			data.put("MODIFY_TAG", "1");
			data.put("ELEMENT_TYPE_CODE", "S");
			selectedElements.add(data);
			
			for (DiscntTradeData userDiscnt : userDiscnts)
	        {
				String elementId = userDiscnt.getElementId();
				String discntElementType = DiscntInfoQry.getDiscntTypeByDiscntCode(elementId);
				if (StringUtils.isNotBlank(discntElementType) && PersonConst.DISCNT_TYPE_5.equals(discntElementType))
                {
					IData data1 = new DataMap();
					data1.put("MODIFY_TAG", "1");  //0、开通；1、取消；2、修改
					data1.put("ELEMENT_ID", elementId);//优惠编码
					data1.put("PRODUCT_ID", product_id);
					data1.put("PACKAGE_ID", package_id);
					data1.put("ELEMENT_TYPE_CODE", "D");
					data1.put("SERIAL_NUMBER", serial_number);
					
					if("1".equals(effectType)){//立即
						data1.put("RSRV_STR1", effectType);
					}else if("2".equals(effectType)){//次日
						data1.put("RSRV_STR1", "2");
						data1.put("ABSOLUTE_START_DATE", SysDateMgr.getTomorrowDate());
					}else if("3".equals(effectType)){//次月
						data1.put("RSRV_STR1", "0");
					}
					selectedElements.add(data1); 
                }
	        }
			
			IData dataInfo = new DataMap();
			dataInfo.put("SELECTED_ELEMENTS", selectedElements);
			dataInfo.put("SERIAL_NUMBER", serial_number);
					
			if("1".equals(effectType)){//立即
				dataInfo.put("EFFECT_NOW", effectType);
			}else{
				dataInfo.put("EFFECT_NOW", "");
			}
			
			param.clear();
			param = dataInfo;
		}
		
		return param;
	}
	

}
