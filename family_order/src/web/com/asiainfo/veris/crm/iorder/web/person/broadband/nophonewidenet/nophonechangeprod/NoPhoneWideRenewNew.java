
package com.asiainfo.veris.crm.iorder.web.person.broadband.nophonewidenet.nophonechangeprod;

import org.apache.tapestry.IRequestCycle;

import com.ailk.common.data.IData;
import com.ailk.common.data.IDataset;
import com.ailk.common.data.impl.DataMap;
import com.ailk.common.data.impl.DatasetList;
import com.asiainfo.veris.crm.order.pub.exception.CrmCommException;
import com.asiainfo.veris.crm.order.pub.frame.bcf.route.Route;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.IDataUtil;
import com.asiainfo.veris.crm.order.web.frame.bcf.base.CSViewCall;
import com.asiainfo.veris.crm.order.web.frame.bcf.exception.CSViewException;
import com.asiainfo.veris.crm.order.web.frame.csview.person.base.PersonBasePage;

/**
 * 用户续约
 */
public abstract class NoPhoneWideRenewNew extends PersonBasePage
{
    
   
    
    //查询号码的宽带类型后再执行业务规则校验
    public void checkBeforeTrade(IRequestCycle cycle) throws Exception
    {
        IData data = getData();
        data.put(Route.ROUTE_EPARCHY_CODE, data.getString("EPARCHY_CODE", getTradeEparchyCode()));
      //宽带地址信息
        IDataset dataset = CSViewCall.call(this, "CS.WidenetInfoQuerySVC.getUserWidenetInfo", data);
        String widetype = dataset.getData(0).getString("RSRV_STR2");
        data.put("WIDE_TYPE_CODE",widetype);

        
        IDataset infos = CSViewCall.call(this, "CS.CheckTradeSVC.checkBeforeTrade", data);
        setAjax(infos.getData(0));
    }
    
    /**
     * 查询宽带资料后设置页面信息
     */
    public void loadChildInfo(IRequestCycle cycle) throws Exception
    {

        IData data = getData();
        data.put("AUTH_SERIAL_NUMBER", data.getString("NOPHONE_SERIAL_NUMBER"));
        String widetype ="";
      //宽带地址信息
        IDataset dataset = CSViewCall.call(this, "CS.WidenetInfoQuerySVC.getUserWidenetInfo", data);
        widetype = dataset.getData(0).getString("RSRV_STR2");

      //欠费信息
        IDataset busiInfos = CSViewCall.call(this, "SS.DestroyUserNowSVC.queryBusiInfo", data);
        //根据用户的宽带信息确认是哪种宽带，再确认trade_type_code
         
        IData info = new DataMap();
        if ("5".equals(widetype))
        {
        	widetype="3";
        }
        info.put("WIDE_TYPE_CODE", widetype);
        if ("1".equals(widetype))
        {
        	info.put("WIDE_TYPE_NAME", "移动FTTB");
        }else if ("2".equals(widetype))
        {
        	info.put("WIDE_TYPE_NAME", "铁通ADSL");
        }else if ("3".equals(widetype))
        {
        	info.put("WIDE_TYPE_NAME", "移动FTTH");
        }else if ("5".equals(widetype))
        {
        	info.put("WIDE_TYPE_NAME", "铁通FTTH");
        }else if ("6".equals(widetype))
        {
        	info.put("WIDE_TYPE_NAME", "铁通FTTB");
        }
        //如果是光纤拆机，则需要检查是否租用了光猫
        //if(data.getString("TRADE_TYPE_CODE").equals("625"))
        if("3".equals(widetype) || "5".equals(widetype) )//统一了typecode，只能用这个来判断宽带类型了
        {
        	String serialNumber = data.getString("SERIAL_NUMBER");
        	IData param = new DataMap();
        	param.put("SERIAL_NUMBER", serialNumber);
        	 
        	IDataset userinfo = CSViewCall.call(this, "SS.DestroyUserNowSVC.getUserInfoBySerailNumber", param);
        	
        	if(!userinfo.isEmpty())
        	{
        		if(!userinfo.first().getString("RSRV_STR10","").equals("BNBD"))
        		{
        			//IDataset userOtherinfo = CSViewCall.call(this, "SS.DestroyUserNowSVC.queryUserOtherInfo", userinfo.first());
        			IDataset userOtherinfo = CSViewCall.call(this, "SS.DestroyUserNowSVC.queryUserModemRent", userinfo.first());
            		if(!userOtherinfo.isEmpty())
            		{
            			info.put("MODEM_CODE", userOtherinfo.getData(0).getString("RSRV_STR1", ""));
            			info.put("MODEM_FEE", userOtherinfo.getData(0).getString("RSRV_STR2", "0"));
            			info.put("MODEM_MODE", userOtherinfo.getData(0).getString("RSRV_TAG1", "0"));

            			info.put("MODEM_FEE_STATE", userOtherinfo.getData(0).getString("RSRV_STR7", "0"));
            			info.put("MODEM_START_DATE", userOtherinfo.getData(0).getString("START_DATE", "0"));
            			info.put("MODEM_END_DATE", userOtherinfo.getData(0).getString("END_DATE", "0"));
            		}
        		}
        		else
        		{
        			IDataset userOtherinfo = CSViewCall.call(this, "SS.DestroyUserNowSVC.queryGroupUserOtherInfo", userinfo.first());
            		if(!userOtherinfo.isEmpty())
            		{
            			info.put("MODEM_CODE", userOtherinfo.getData(0).getString("RSRV_STR1", ""));
            			info.put("MODEM_FEE", userOtherinfo.getData(0).getString("RSRV_STR2", "0"));
            			info.put("MODEM_MODE", userOtherinfo.getData(0).getString("RSRV_TAG1", "0"));
            			
            			info.put("MODEM_FEE_STATE", userOtherinfo.getData(0).getString("RSRV_STR7", "0"));
            			info.put("MODEM_START_DATE", userOtherinfo.getData(0).getString("START_DATE", "0"));
            			info.put("MODEM_END_DATE", userOtherinfo.getData(0).getString("END_DATE", "0"));
            		}
        		}
        	}
        	String modemmode=info.getString("MODEM_MODE","");
        	if ("0".equals(modemmode))
        	{
        		info.put("MODEM_MODE_NAME","租赁");
        	}else if ("1".equals(modemmode))
        	{
        		info.put("MODEM_MODE_NAME","购买");
        	}else if ("2".equals(modemmode))
        	{
        		info.put("MODEM_MODE_NAME","赠送");
        	}else if ("3".equals(modemmode))
        	{
        		info.put("MODEM_MODE_NAME","自备");
        	}
        	
        	//押金状态
        	String feestate=info.getString("MODEM_FEE_STATE","");
        	if ("0".equals(feestate))
        	{
        		info.put("MODEM_FEE_STATE_NAME","正常");
        	}else if ("1".equals(feestate))
        	{
        		info.put("MODEM_FEE_STATE_NAME","已转移");
        	}else if ("2".equals(feestate))
        	{
        		info.put("MODEM_FEE_STATE_NAME","已退还");
        	}else if ("3".equals(feestate))
        	{
        		info.put("MODEM_FEE_STATE_NAME","已沉淀");
        	}
        }
        String modemDepost=info.getString("MODEM_FEE","0");
        if(!"0".equals(modemDepost)){
        	modemDepost=""+Integer.parseInt(modemDepost)/100;
        }
        info.put("MODEM_DEPOSIT",modemDepost);
        info.put("TRADE_TYPE_CODE", data.getString("TRADE_TYPE_CODE"));
        //info.put("AUTH_SERIAL_NUMBER",data.getString("AUTH_SERIAL_NUMBER"));
        info.putAll(busiInfos.getData(0));
        
        setWideInfo(dataset.getData(0));

        //宽带预约拆机信息
        IDataset destroyInfos = CSViewCall.call(this, "SS.NoPhoneWideDestroyUserSVC.getDestroyInfo", data);
        setDestroyInfo(destroyInfos.getData(0)); 
        //有预约拆机报错
        if(IDataUtil.isNotEmpty(destroyInfos))
        {
        	String destroyState = destroyInfos.getData(0).getString("DESTORY_STATE","");
        	if("已预约".equals(destroyState))
        	{
        		//报错
        		CSViewException.apperr(CrmCommException.CRM_COMM_103,"业务受理限制:该用户含有宽带预约拆机记录,不能办理该业务!");
        	}
        }
        //宽带金额
        IDataset feeInfos = CSViewCall.call(this, "SS.NoPhoneWideChangeProdSVC.getProductFeeInfo", data);
        if(feeInfos!=null && feeInfos.size()>0){
        	String fee=feeInfos.getData(0).getString("BACK_FEE","0"); 
        	info.put("MODE", feeInfos.getData(0).getString("FEE_MODE"));
        	info.put("CODE", feeInfos.getData(0).getString("FEE_TYPE_CODE"));
        	info.put("FEE", feeInfos.getData(0).getString("FEE")); 
        	info.put("PRODUCT_ID", feeInfos.getData(0).getString("PRODUCT_ID"));
        	info.put("PACKAGE_ID", feeInfos.getData(0).getString("PACKAGE_ID"));
        	info.put("DISCNT_CODE", feeInfos.getData(0).getString("DISCNT_CODE")); 
        	info.put("DISCNT_NAME", feeInfos.getData(0).getString("DISCNT_NAME"));
        	info.put("DISCNT_START_DATE", feeInfos.getData(0).getString("DISCNT_START_DATE"));
        	info.put("DISCNT_END_DATE", feeInfos.getData(0).getString("DISCNT_END_DATE"));
        	info.put("NEW_START_DATE", feeInfos.getData(0).getString("NEW_START_DATE"));
        	info.put("NEW_END_DATE", feeInfos.getData(0).getString("NEW_END_DATE"));
        	info.put("RENEW_TAG_DEC", feeInfos.getData(0).getString("RENEW_TAG_DEC"));
        	info.put("RENEW_TAG", feeInfos.getData(0).getString("RENEW_TAG"));
        	info.put("RENEW_FEE", feeInfos.getData(0).getString("FEE"));
        	info.put("FEE_YEAR", feeInfos.getData(0).getString("FEE_YEAR"));
        	info.put("FEE_DAY", feeInfos.getData(0).getString("FEE_DAY"));
        	info.put("STOP_OPEN_TAG", feeInfos.getData(0).getString("STOP_OPEN_TAG"));//停机后办理标记
        	//新增“度假宽带月套餐”
        	String discntCode = feeInfos.getData(0).getString("DISCNT_CODE");
        	IData inData = new DataMap();
        	inData.put("SUBSYS_CODE", "CSM");
        	inData.put("PARAM_ATTR", "9123");
        	inData.put("PARAM_CODE", "NOPHONE_WIDE_RENEW");
        	inData.put("PARA_CODE1", discntCode);
        	inData.put("EPARCHY_CODE", "0898");

    		IDataset ids = CSViewCall.call(this, "CS.CommparaInfoQrySVC.getCommparaInfoBy5", inData);
        	if(IDataUtil.isNotEmpty(ids))
        	{
        		IDataset discntInfoList = CSViewCall.call(this, "CS.CommparaInfoQrySVC.getCommparaByParser", inData);
        		if(IDataUtil.isNotEmpty(discntInfoList))
            	{
	        		for(int i =0; i <discntInfoList.size();i++ )
	        		{
	        			discntInfoList.getData(i).put("DISCNT_CODE", discntInfoList.getData(i).getString("PARA_CODE1", ""));
	        			discntInfoList.getData(i).put("DISCNT_NAME", discntInfoList.getData(i).getString("PARA_CODE2", ""));
	        		}
	        		setDiscntInfoList(discntInfoList);
            	}
        	}
        	else
        	{
        		setDiscntInfoList(feeInfos);
        	}
        	//新增“度假宽带月套餐”
        	setAjax(info);
        }   
        info.put("DESTORYTIME", "1");
        info.put("DESTORYTYPE", "1");
        info.put("MODEM_RETUAN", "0");
        
      //查询营销活动信息，提示
//        info.put("ACTIVE_FLAG", "0");
//        IDataset pactive= CSViewCall.call(this, "SS.DestroyUserNowSVC.checkWidenetSaleActive", data);
//        if (IDataUtil.isNotEmpty(pactive))
//    	{
//        	setActiveInfo(pactive.getData(0));
//        	info.put("ACTIVE_FLAG", "1");
//        	info.put("ACTIVE_NAME", pactive.getData(0).getString("PACKAGE_NAME"));
//    	}
        setInfo(info);
        /*
         * 用于在前台进行提示的标识，判断用户是否办理了魔百和
         */
//        IData param=new DataMap();
//        param.put("WARM_TYPE", "0");
//        param.put("ACTIVE_FLAG", info.getString("ACTIVE_FLAG"));
//        param.put("ACTIVE_NAME", info.getString("ACTIVE_NAME"));
//        
//    	IDataset checkResult=CSViewCall.call(this, "SS.DestroyUserNowSVC.checkUserExistsTopsetBoxNew", data);
//    	if (checkResult!=null && checkResult.size()>0)
//    	{
//    		param.put("WARM_TYPE", checkResult.getData(0).getString("WARM_TYPE",""));
//    	}
    	
//        setAjax(param);

    }
   

    /**
     * 初始化方法
     * 
     * @author chenzm
     * @param clcle
     * @throws Exception
     */
    public void onInitTrade(IRequestCycle clcle) throws Exception
    {    	
        IData data = getData();
        IData param = new DataMap();
        
        //将参数参入前台
        IData wideInfoParam=new DataMap();
        wideInfoParam.put("WIDE_TYPE", "");//此参数已经不用了
        setWideInfoParam(wideInfoParam);
        param.put("TRADE_TYPE_CODE", "682");//
        param.put("DESTORYTYPE", "1");
        param.put("WIDE_TYPE_CODE", "1");
        param.put("MODEM_RETUAN", "0");
        setInfo(param);
        
    }

    /**
     * 业务提交（onTradeSubmit cssubmit组件中默认的提交action方法）
     * 
     * @param cycle
     * @throws Exception
     */
    public void onTradeSubmit(IRequestCycle cycle) throws Exception
    {
        IData data = getData();
        data.put("SERIAL_NUMBER", data.getString("NOPHONE_SERIAL_NUMBER"));
        IDataset dataset = new DatasetList();
        								
        dataset = CSViewCall.call(this, "SS.NoPhoneWideRenewRegSVC.tradeReg", data);
       
        setAjax(dataset);
    }

    public abstract void setInfo(IData info);

    /**
     * 认证结束之后，设置用户相关信息
     * 
     * @param cycle
     * @throws Exception
     */
    public void setPageCustInfo(IRequestCycle cycle) throws Exception
    {
        IData pagedata = getData();
        IData custInfo = new DataMap(pagedata.getString("CUST_INFO"));
        IData userInfo = new DataMap(pagedata.getString("USER_INFO"));
        IData acctInfo = new DataMap(pagedata.getString("ACCT_INFO"));

        IData info = new DataMap();
        info.put("USER_ID", userInfo.getString("USER_ID"));
        info.put(Route.ROUTE_EPARCHY_CODE, userInfo.getString("EPARCHY_CODE"));
        IDataset feeInfos = CSViewCall.call(this, "CS.UserOwenInfoQrySVC.getOweFeeByUserId", info);
        if (IDataUtil.isNotEmpty(feeInfos))
        {
            acctInfo.put("LEFT_MONEY", (feeInfos.getData(0).getDouble("ACCT_BALANCE", 0.0) / 100.0));// 余额
        }
        else
        {
            acctInfo.put("LEFT_MONEY", "0");// 余额
        }

        // 用户欠费信息
        acctInfo.put("OWE_FEE", "0");
        acctInfo.put("FOREGIFT", "0");

        IData pageInfo = new DataMap();
        pageInfo.putAll(custInfo);
        pageInfo.putAll(userInfo);
        pageInfo.putAll(acctInfo);

    }
    
    /**
     * 变更套餐时查询费用及计算新套餐的开始、结束时间
     */
    public void changeDiscnt(IRequestCycle cycle) throws Exception
    {
    	IData data = getData();
    	IData info = new DataMap();
    	//宽带金额
        IDataset feeInfos = CSViewCall.call(this, "SS.NoPhoneWideChangeProdSVC.getProductFeeInfoNew", data);
        if(feeInfos!=null && feeInfos.size()>0){
        	String fee=feeInfos.getData(0).getString("BACK_FEE","0"); 
        	info.put("MODE", feeInfos.getData(0).getString("FEE_MODE"));
        	info.put("CODE", feeInfos.getData(0).getString("FEE_TYPE_CODE"));
        	info.put("FEE", feeInfos.getData(0).getString("FEE")); 
        	info.put("PRODUCT_ID", feeInfos.getData(0).getString("PRODUCT_ID"));
        	info.put("PACKAGE_ID", feeInfos.getData(0).getString("PACKAGE_ID"));
        	info.put("DISCNT_CODE", feeInfos.getData(0).getString("DISCNT_CODE")); 
        	info.put("DISCNT_NAME", feeInfos.getData(0).getString("DISCNT_NAME"));
        	info.put("DISCNT_START_DATE", feeInfos.getData(0).getString("DISCNT_START_DATE"));
        	info.put("DISCNT_END_DATE", feeInfos.getData(0).getString("DISCNT_END_DATE"));
        	info.put("NEW_START_DATE", feeInfos.getData(0).getString("NEW_START_DATE"));
        	info.put("NEW_END_DATE", feeInfos.getData(0).getString("NEW_END_DATE"));
        	info.put("RENEW_TAG_DEC", feeInfos.getData(0).getString("RENEW_TAG_DEC"));
        	info.put("RENEW_TAG", feeInfos.getData(0).getString("RENEW_TAG"));
        	info.put("RENEW_FEE", feeInfos.getData(0).getString("FEE"));
        	info.put("FEE_YEAR", feeInfos.getData(0).getString("FEE_YEAR"));
        	info.put("FEE_DAY", feeInfos.getData(0).getString("FEE_DAY"));
        	info.put("STOP_OPEN_TAG", feeInfos.getData(0).getString("STOP_OPEN_TAG"));//停机后办理标记
        	setAjax(info);
        }   
        info.put("DESTORYTIME", "1");
        info.put("DESTORYTYPE", "1");
        info.put("MODEM_RETUAN", "0");

        setInfo(info);
    }

    public abstract void setWideInfo(IData custInfo);
    public abstract void setWideInfoParam(IData wideInfoParam);
    public abstract void setDestroyInfo(IData destroyInfo);
    public abstract void setActiveInfo(IData activeInfo);
    public abstract void setDiscntInfoList(IDataset discntInfoList);
    public abstract void setDiscntInfo(IData discntInfo);
}
