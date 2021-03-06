
package com.asiainfo.veris.crm.iorder.web.person.broadband.nophonewidenet.nophonechangeuser;

import com.ailk.common.data.IData;
import com.ailk.common.data.IDataset;
import com.ailk.common.data.impl.DataMap;
import com.ailk.common.data.impl.DatasetList;
import com.ailk.org.apache.commons.lang3.StringUtils;
import com.asiainfo.veris.crm.order.pub.exception.CrmCommException;
import com.asiainfo.veris.crm.order.pub.frame.bcf.route.Route;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.IDataUtil;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.SysDateMgr;
import com.asiainfo.veris.crm.order.web.frame.bcf.base.CSViewCall;
import com.asiainfo.veris.crm.order.web.frame.bcf.exception.CSViewException;
import com.asiainfo.veris.crm.order.web.frame.csview.person.base.PersonBasePage;
import org.apache.tapestry.IRequestCycle;

/**
 * 过户
 */
public abstract class NoPhoneWideChangeUserNew extends PersonBasePage
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
        /*
         * 绑定了无手机宽带统一付费的号码无法办理过户
         */
        IData uuParam = new DataMap();
        uuParam.put("USER_ID_A",data.getString("USER_ID"));
        uuParam.put("RELATION_TYPE_CODE","58");
        IDataset uuInfos = CSViewCall.call(this, "CS.RelaUUInfoQrySVC.getAllMebByUSERIDA", uuParam);
        if(IDataUtil.isNotEmpty(uuInfos)){
        	uuParam.put("RESULT","1");
        	setAjax(uuParam);
        	return;
        }
        data.put("AUTH_SERIAL_NUMBER", data.getString("NOPHONE_SERIAL_NUMBER"));
        data.put(Route.ROUTE_EPARCHY_CODE, data.getString("EPARCHY_CODE", getTradeEparchyCode()));
        String widetype ="";
      //宽带地址信息
        IDataset dataset = CSViewCall.call(this, "CS.WidenetInfoQuerySVC.getUserWidenetInfo", data);
        widetype = dataset.getData(0).getString("RSRV_STR2");

      
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
        // 检查是否租用了光猫 
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
      //宽带信息
        IDataset feeInfos = CSViewCall.call(this, "SS.NoPhoneWideChangeProdSVC.getProductFeeInfo", data);
        if(feeInfos!=null && feeInfos.size()>0){ 
        	//add by zhangxing3 for REQ201807310012无手机号码候鸟宽带资费
        	String discntCode = feeInfos.getData(0).getString("DISCNT_CODE","");
        	String endDate = feeInfos.getData(0).getString("DISCNT_END_DATE","");
        	if(("84014240".equals(discntCode) || "84014241".equals(discntCode) || "84014242".equals(discntCode))
        			&& endDate.compareTo(SysDateMgr.getSysDate()) > 0)
        	{
        		CSViewException.apperr(CrmCommException.CRM_COMM_103,"业务受理限制:该用户含有度假宽带套餐,不能办理该业务!");
        	}
        	//add by zhangxing3 for REQ201807310012无手机号码候鸟宽带资费 
        	info.put("PRODUCT_ID", feeInfos.getData(0).getString("PRODUCT_ID"));
        	info.put("PACKAGE_ID", feeInfos.getData(0).getString("PACKAGE_ID"));
        	info.put("DISCNT_CODE", feeInfos.getData(0).getString("DISCNT_CODE")); 
        	info.put("DISCNT_NAME", feeInfos.getData(0).getString("DISCNT_NAME"));
        	info.put("DISCNT_START_DATE", feeInfos.getData(0).getString("DISCNT_START_DATE"));
        	info.put("DISCNT_END_DATE", feeInfos.getData(0).getString("DISCNT_END_DATE")); 
        	setAjax(info);
        }     
        info.put("MODEM_RETUAN", "0");
        setInfo(info);

        String serialNumber = data.getString("SERIAL_NUMBER");
        if(StringUtils.isEmpty(serialNumber))
        {
            data.put("SERIAL_NUMBER", data.getString("AUTH_SERIAL_NUMBER"));
        }
        IData topsetboxInfo = CSViewCall.callone(this, "SS.NoPhoneTopSetBoxSVC.queryTopSetBoxInfoByWsn", data);
        if(IDataUtil.isNotEmpty(topsetboxInfo))
        {
            setAjax(topsetboxInfo);
        }
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
        param.put("TRADE_TYPE_CODE", "690");// 
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

        IData topsetboxInfo = CSViewCall.callone(this, "SS.NoPhoneTopSetBoxSVC.queryTopSetBoxInfoByWsn", data);
        if (IDataUtil.isNotEmpty(topsetboxInfo))
        {
            data.put("TOPSETBOX_SERIAL_NUMBER", topsetboxInfo.getString("SERIAL_NUMBER"));
            data.put("TOPSETBOX_USER_ID", topsetboxInfo.getString("USER_ID"));
        }

        dataset = CSViewCall.call(this, "SS.NoPhoneWideChangeUserRegSVC.tradeReg", data);
       
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
        
        IData pageInfo = new DataMap();
        pageInfo.putAll(custInfo);
        pageInfo.putAll(userInfo); 

    }
    
    /**
     * 身份证在线校验
     * 
     * @author yanwu
     * @param clcle
     * @throws Exception
     */
    public void verifyIdCard(IRequestCycle clcle) throws Exception
    {
        IData data = getData();
        IData param = new DataMap();
        
        param.putAll(data);
        param.put(Route.ROUTE_EPARCHY_CODE, getVisit().getStaffEparchyCode());
        param.put("BUSI_TYPE", "2");//2：存量用户补登记     
 
        IDataset dataset = CSViewCall.call(this, "SS.CreatePersonUserSVC.verifyIdCard", param);
        setAjax(dataset.getData(0));
    }
    /**
     *    营业执照、组织机构代码证、事业单位法人登记证书不能一个证件号码对应多个不同的单位名称。
     * 
     * @param cycle
     * @throws Exception
     */
    public void verifyIdCardName(IRequestCycle clcle) throws Exception
    {
        IData data = getData();
 
        IDataset dataset = CSViewCall.call(this, "SS.CreatePersonUserSVC.verifyIdCardName", data);
        setAjax(dataset.getData(0));
    }
    
    /**
     * 客户资料变更
     * 选择集团证件（单位证件、营业执照、事业单位法人证书、社会团体法人登记证书、组织机构代码证）用户资料若满足以下条件：
     * tf_f_user_other where user_id=**** and rsrv_value_code='HYYYKBATCHOPEN'
     * 则可以不输入使用人名称、使用人证件类型、使用人证件号码、使用人证件地址。
     * chenxy3 2016-08-18
     * */
    public void checkGroupPsptInfo(IRequestCycle clcle) throws Exception{
    	IData data = getData();
    	IData ajaxData=new DataMap();
    	String serialNum=data.getString("SERIAL_NUMBER","");
    	IData params = new DataMap();
        params.put("X_GETMODE", 0);
        params.put("SERIAL_NUMBER", serialNum);
        params.put("TRADE_TYPE_CODE", "60");
        // 查询用户信息
        IDataset ucaInfos = CSViewCall.call(this, "CS.GetInfosSVC.getUCAInfos", params);
        if(ucaInfos!=null && ucaInfos.size()>0){
        	String userId=ucaInfos.getData(0).getData("USER_INFO").getString("USER_ID");
        	data.put("USER_ID",userId);
        	IDataset dataset = CSViewCall.call(this, "SS.ModifyCustInfoSVC.checkGroupPsptInfo", data);
            if(dataset!=null && dataset.size()>0){
            	ajaxData.put("EXISE", "TRUE");
            }else{
            	ajaxData.put("EXISE", "FALSE");
            }
        }else{
        	ajaxData.put("EXISE", "FALSE");
        }  	 
        setAjax(ajaxData);
    }
    public abstract void setWideInfo(IData custInfo);
    public abstract void setWideInfoParam(IData wideInfoParam);
    public abstract void setDestroyInfo(IData destroyInfo);
    public abstract void setActiveInfo(IData activeInfo);
    public abstract void setCustInfo(IData custInfo);
    public abstract void setPsptTypeSource(IDataset psptTypeSource);
}
