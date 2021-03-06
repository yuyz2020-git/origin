
package com.asiainfo.veris.crm.order.soa.group.creategroupuser;

import org.apache.log4j.Logger;

import com.ailk.common.data.IData;
import com.ailk.common.data.IDataset;
import com.ailk.common.data.impl.DataHelper;
import com.ailk.common.data.impl.DataMap;
import com.ailk.common.data.impl.DatasetList;
import com.ailk.org.apache.commons.lang3.StringUtils;
import com.asiainfo.veris.crm.order.pub.exception.GrpException;
import com.asiainfo.veris.crm.order.pub.frame.bcf.base.CSBaseConst.TRADE_MODIFY_TAG;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.IDataUtil;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.SysDateMgr;
import com.asiainfo.veris.crm.order.soa.frame.bcf.exception.CSAppException;
import com.asiainfo.veris.crm.order.soa.frame.bcf.query.RouteInfoQry;
import com.asiainfo.veris.crm.order.soa.frame.bcf.query.product.UPackageElementInfoQry;
import com.asiainfo.veris.crm.order.soa.frame.bcf.seq.SeqMgr;
import com.asiainfo.veris.crm.order.soa.frame.csservice.common.query.trade.TradeOtherInfoQry;
import com.asiainfo.veris.crm.order.soa.frame.csservice.group.creategroupuser.CreateGroupUser;

/**
 * 集团流量自由充产品、指定用户，限量统付（流量池）
 * @author think
 *
 */
public class CreateGfffGroupLimitaionUser extends CreateGroupUser
{
	private static final Logger logger = Logger.getLogger(CreateGfffGroupLimitaionUser.class);
	
    private boolean discntFlag = false;
    
    public CreateGfffGroupLimitaionUser()
    {
       
    }

    public void actTradeBefore() throws Exception
    {
        
        super.actTradeBefore();
        
    }
    
    /**
     * 其它台帐处理
     */
    public void actTradeSub() throws Exception
    {
        super.actTradeSub();
        
        infoUserDiscnt();
        
        infoRegDataSpecial();
        
        infoUserOther();
    }

    protected void infoRegDataSpecial() throws Exception
    {
        IData grpCenPayData = new DataMap();
                
        grpCenPayData.put("USER_ID", reqData.getUca().getUserId());
        grpCenPayData.put("INST_ID", SeqMgr.getInstId());
        
        //grpCenPayData.put("MP_GROUP_CUST_CODE", "0");//全网集团编码
        grpCenPayData.put("MP_GROUP_CUST_CODE", reqData.getUca().getUserId());//全网集团编码
        grpCenPayData.put("GROUP_ID", reqData.getUca().getCustGroup().getGroupId());
        grpCenPayData.put("BIZ_MODE", "5");
        
        grpCenPayData.put("PROVINCE_CODE", "898");
        grpCenPayData.put("CUST_NAME", reqData.getUca().getCustomer().getCustName());
        
        grpCenPayData.put("MERCH_SPEC_CODE", "0"); //全网商品编码
        grpCenPayData.put("PRODUCT_SPEC_CODE", "0");//全网产品编码
        grpCenPayData.put("PRODUCT_ID", reqData.getUca().getProductId());
        //grpCenPayData.put("PRODUCT_OFFER_ID", "0");
        grpCenPayData.put("PRODUCT_OFFER_ID", "7344");
        
        if(discntFlag){
            grpCenPayData.put("PAY_TYPE", "3");
        } else {
            grpCenPayData.put("PAY_TYPE", "1");
        }
        
        //REQ201707170012关于新增流量自由充省内通用定额套餐的需求----------------20170828 start----------
        String payType = "";
        IDataset disCnts = reqData.cd.getDiscnt();
        if(IDataUtil.isNotEmpty(disCnts)&&disCnts.size()>0){
        	for(int i=0; i< disCnts.size();i++){
        		IData disCnt = disCnts.getData(i);
        		String disCntCode = disCnt.getString("DISCNT_CODE", "");
        		String modifyTag = disCnt.getString("MODIFY_TAG", "");
        		if("0".equals(modifyTag))
        		{
        			IDataset comInfosDataset = RouteInfoQry.getCommparaByCode("CSM", "8812", disCntCode, "0898");
        			if(IDataUtil.isNotEmpty(comInfosDataset)&&comInfosDataset.size()>0){
        				payType = comInfosDataset.getData(0).getString("PARA_CODE1", "");
        				if(StringUtils.isNotBlank(payType)){
        					grpCenPayData.put("PAY_TYPE", payType);
        				}
        			}
        		}
        	}
        }
        //REQ201707170012关于新增流量自由充省内通用定额套餐的需求----------------20170828 end----------
        
        grpCenPayData.put("OPER_TYPE", "5");//5:指定用户、限量统付
        grpCenPayData.put("SERVICE_ID", "0");
        //grpCenPayData.put("LIMIT_FEE", "");
        
        grpCenPayData.put("START_DATE", SysDateMgr.getSysTime());
        grpCenPayData.put("END_DATE", SysDateMgr.getTheLastTime());
        grpCenPayData.put("UPDATE_TIME", SysDateMgr.getSysTime());
        grpCenPayData.put("MODIFY_TAG", TRADE_MODIFY_TAG.Add.getValue());
        
        this.addTradeGrpCenpay(grpCenPayData);
        
    }
    
    /**
     * 
     * @throws Exception
     */
    private void infoUserDiscnt() throws Exception
    {        
        IDataset discntDatas = reqData.cd.getDiscnt();
        if(IDataUtil.isNotEmpty(discntDatas)){
            for(int i=0; i < discntDatas.size(); i++){
                IData discntData = discntDatas.getData(i);
                if(IDataUtil.isNotEmpty(discntData)){
                    String eleTypeCode =  discntData.getString("ELEMENT_TYPE_CODE","");
                    String modifyTag =  discntData.getString("MODIFY_TAG","");
                    String elementId =  discntData.getString("ELEMENT_ID","");
                    IDataset packageInfos = UPackageElementInfoQry.getPackageElementInfoByPackageId("73440002");
                    if(IDataUtil.isNotEmpty(DataHelper.filter(packageInfos, "ELEMENT_ID="+elementId)) && "D".equals(eleTypeCode) 
                            && modifyTag.equals(TRADE_MODIFY_TAG.Add.getValue())){
                        if("996528".equals(elementId) || "996532".equals(elementId)){
                            discntFlag = true;                        
                            break; 
                        }
                    }
                }
            }
        }
    }
    
    /**
     * 
     * @throws Exception
     */
    private void infoUserOther() throws Exception{
        
        IDataset svcDatas = reqData.cd.getSvc();
        
        IDataset dataset = new DatasetList();
        
        if(IDataUtil.isNotEmpty(svcDatas)){
            
            for(int i=0; i < svcDatas.size(); i++){
                
                IData svcData = svcDatas.getData(i);
                
                if(IDataUtil.isNotEmpty(svcData)){
                    //String packageId = svcData.getString("PACKAGE_ID","");
                    String eleTypeCode =  svcData.getString("ELEMENT_TYPE_CODE","");
                    String modifyTag =  svcData.getString("MODIFY_TAG","");
                    String elementId =  svcData.getString("ELEMENT_ID","");
                    String startDate =  svcData.getString("START_DATE","");
                    String endDate =  svcData.getString("END_DATE","");
                    
                    if("10008".equals(elementId) && "S".equals(eleTypeCode) 
                            && modifyTag.equals(TRADE_MODIFY_TAG.Add.getValue())){
                        
                        //String groupId = reqData.getUca().getCustGroup().getGroupId();
                        String mgrSn = reqData.getUca().getCustGroup().getGroupMgrSn();//集团联系人号码
                        if(StringUtils.isBlank(mgrSn)){
                            CSAppException.apperr(GrpException.CRM_GRP_854);
                        }
                        
                        IData data = new DataMap();
                        data.put("USER_ID", reqData.getUca().getUserId());
                        data.put("RSRV_VALUE_CODE", "FGPRELAPHONE");
                        data.put("RSRV_VALUE", mgrSn);
                        data.put("MODIFY_TAG", TRADE_MODIFY_TAG.Add.getValue());
                        data.put("START_DATE", startDate);
                        data.put("END_DATE", endDate);
                        data.put("INST_ID", SeqMgr.getInstId());
                        dataset.add(data);
                        
                    } else if("10008".equals(elementId) && "S".equals(eleTypeCode) 
                            && modifyTag.equals(TRADE_MODIFY_TAG.DEL.getValue())){
                        
                        IData inparam = new DataMap();
                        inparam.put("USER_ID", reqData.getUca().getUser().getUserId());
                        inparam.put("RSRV_VALUE_CODE", "FGPRELAPHONE");
                        IDataset userOthers = TradeOtherInfoQry.queryUserOtherInfoByUserId(inparam);
                        
                        if(IDataUtil.isNotEmpty(userOthers)){
                            
                            IData userOther = userOthers.getData(0);
                            userOther.put("MODIFY_TAG", TRADE_MODIFY_TAG.DEL.getValue());
                            userOther.put("END_DATE", endDate);
                            
                            dataset.add(userOther);
                            
                        }
                    } 
                }
            }
            
            super.addTradeOther(dataset);
        }
        
    }
    
    protected void initReqData() throws Exception
    {
        super.initReqData();

    }

    protected void makReqData(IData map) throws Exception
    {
        super.makReqData(map);

    }
    
    @Override
    protected void regTrade() throws Exception
    {
        super.regTrade();

        IData data = bizData.getTrade();
        data.put("EXEC_TIME", SysDateMgr.getTheLastTime());
    }
    
    @Override
    protected void chkTradeAfter() throws Exception
    {
        super.chkTradeAfter();
        
        IData orderData = bizData.getOrder();
        orderData.put("EXEC_TIME", SysDateMgr.getTheLastTime());
    }

}
