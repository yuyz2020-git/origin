package com.asiainfo.veris.crm.order.soa.person.busi.startTopSetBox.order.trade;

import com.ailk.common.data.IData;
import com.ailk.common.data.IDataset;
import com.asiainfo.veris.crm.order.pub.exception.CrmCommException;
import com.asiainfo.veris.crm.order.pub.frame.bcf.person.common.PlatConstants;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.IDataUtil;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.SysDateMgr;
import com.asiainfo.veris.crm.order.soa.frame.bcf.exception.CSAppException;
import com.asiainfo.veris.crm.order.soa.frame.bof.data.consts.BofConst;
import com.asiainfo.veris.crm.order.soa.frame.bof.data.tradedata.BusiTradeData;
import com.asiainfo.veris.crm.order.soa.frame.bof.data.tradedata.extend.PlatSvcTradeData;
import com.asiainfo.veris.crm.order.soa.frame.bof.data.tradedata.extend.ResTradeData;
import com.asiainfo.veris.crm.order.soa.frame.bof.data.tradedata.extend.SvcStateTradeData;
import com.asiainfo.veris.crm.order.soa.frame.bof.data.tradedata.extend.SvcTradeData;
import com.asiainfo.veris.crm.order.soa.frame.bof.data.ucadata.UcaData;
import com.asiainfo.veris.crm.order.soa.frame.bof.execute.ITrade;
import com.asiainfo.veris.crm.order.soa.frame.bof.execute.impl.BaseTrade;
import com.asiainfo.veris.crm.order.soa.frame.csservice.common.query.user.UserPlatSvcInfoQry;
import com.asiainfo.veris.crm.order.soa.frame.csservice.common.query.user.UserResInfoQry;
import com.asiainfo.veris.crm.order.soa.frame.csservice.common.query.user.UserSvcInfoQry;
import com.asiainfo.veris.crm.order.soa.person.busi.startTopSetBox.order.requestdata.StartTopSetBoxReqData;

public class StartTopSetBoxTrade extends BaseTrade implements ITrade {

	@Override
	public void createBusiTradeData(BusiTradeData bd) throws Exception {
		
		StartTopSetBoxReqData reqData=(StartTopSetBoxReqData)bd.getRD();
		
		/*
		 * 
		 * 开启平台服务
		 * 订购暂停保号服务、优惠，包括服务属性
		 * 在资源表当中做记录说明
		 *  
		 */
		UcaData uca=bd.getRD().getUca();
		
		String userId=uca.getUserId();
		
		IDataset boxInfos = UserResInfoQry.qrySetTopBoxByUserIdAndTag1AllColumns(userId, "4", "J");
		IData boxInfo=boxInfos.first();
		
		
		/*
		 * 恢复必选服务
		 */
		String basePlatSvcIdTemp=boxInfo.getString("RSRV_STR2","");	//必选套餐
		if(!basePlatSvcIdTemp.equals("")&&basePlatSvcIdTemp.indexOf(",")!=-1){
			String[] basePlatSvcIdArr=basePlatSvcIdTemp.split(",");
			if(basePlatSvcIdArr!=null&&basePlatSvcIdArr.length>0){
				String basePlatSvcId=basePlatSvcIdArr[0];
				if(basePlatSvcId!=null&&!basePlatSvcId.trim().equals("")){
					
					IDataset userBaseServices=UserPlatSvcInfoQry.
							queryUserPlatSvcByUserIdAndServiceId(userId, basePlatSvcId);
					if(IDataUtil.isNotEmpty(userBaseServices)){
						PlatSvcTradeData baseNewPlatSvcTradeData=new PlatSvcTradeData(userBaseServices.getData(0));
						baseNewPlatSvcTradeData.setBizStateCode(PlatConstants.STATE_OK);
						baseNewPlatSvcTradeData.setModifyTag(BofConst.MODIFY_TAG_UPD);
						baseNewPlatSvcTradeData.setOperCode(PlatConstants.OPER_RESTORE);
						baseNewPlatSvcTradeData.setOprSource("08");
						baseNewPlatSvcTradeData.setOperTime(bd.getRD().getAcceptTime());
						baseNewPlatSvcTradeData.setAllTag("01");
						baseNewPlatSvcTradeData.setIsNeedPf("1");
						
						if("EXPERIENCE_STOP".equals(baseNewPlatSvcTradeData.getRsrvStr8())){//因为体验包报停，报开去除标识
							baseNewPlatSvcTradeData.setRsrvStr8("");
						}
						
						
						bd.add(uca.getSerialNumber(), baseNewPlatSvcTradeData);
						
						
					}else{
						CSAppException.apperr(CrmCommException.CRM_COMM_103,"数据异常：用户不存在必选基本套餐服务！");
					}
					
				}else{
					CSAppException.apperr(CrmCommException.CRM_COMM_103,"数据异常：用户不存在必选基本套餐服务！");
				}
			}else{
				CSAppException.apperr(CrmCommException.CRM_COMM_103,"数据异常：用户不存在必选基本套餐服务！");
			}
		}else{
			CSAppException.apperr(CrmCommException.CRM_COMM_103,"数据异常：用户不存在必选基本套餐服务！");
		}
		
		
		
		/*
		 * 恢复可选服务
		 */
        String optionPlatSvcIdTemp=boxInfo.getString("RSRV_STR3","");	//可选套餐
        if(!optionPlatSvcIdTemp.equals("")&&optionPlatSvcIdTemp.indexOf(",")!=-1){
        	String[] optionPlatSvcIdArr=optionPlatSvcIdTemp.split(",");
			if(optionPlatSvcIdArr!=null&&optionPlatSvcIdArr.length>0){
				String optionPlatSvcId=optionPlatSvcIdArr[0];
				if(optionPlatSvcId!=null&&!optionPlatSvcId.trim().equals("")&&
					!optionPlatSvcId.trim().equals("-1")){
					
					IDataset userOptionServices=UserPlatSvcInfoQry.
							queryUserPlatSvcByUserIdAndServiceId(userId, optionPlatSvcId);
					if(IDataUtil.isNotEmpty(userOptionServices)){
						PlatSvcTradeData optionNewPlatSvcTradeData=new PlatSvcTradeData(userOptionServices.getData(0));
						optionNewPlatSvcTradeData.setBizStateCode(PlatConstants.STATE_OK);
						optionNewPlatSvcTradeData.setModifyTag(BofConst.MODIFY_TAG_UPD);
						optionNewPlatSvcTradeData.setOperCode(PlatConstants.OPER_RESTORE);
						optionNewPlatSvcTradeData.setOprSource("08");
						optionNewPlatSvcTradeData.setOperTime(bd.getRD().getAcceptTime());
						optionNewPlatSvcTradeData.setAllTag("01");
						optionNewPlatSvcTradeData.setIsNeedPf("1");
						
						bd.add(uca.getSerialNumber(), optionNewPlatSvcTradeData);
					}
				}
				
			}			
		}
        
        IDataset userSvcs=UserSvcInfoQry.qrySvcInfoByUserIdSvcId(userId, "3000003");
    	if(IDataUtil.isNotEmpty(userSvcs)){
    		SvcTradeData svcData=new SvcTradeData(userSvcs.first());
    		svcData.setEndDate(SysDateMgr.addDays(SysDateMgr.getSysTime(),-1));
    		svcData.setModifyTag(BofConst.MODIFY_TAG_DEL);
    		bd.add(uca.getSerialNumber(), svcData);
    	}
    	
    	
    	IDataset userSvcStates=UserSvcInfoQry.getUserSvcStateByUserId(userId, "3000003");
    	if(IDataUtil.isNotEmpty(userSvcStates)){	//如果存在服务的状态，且为生效的状态
    		
    		for(int i=0,size=userSvcStates.size();i<size;i++){
    			SvcStateTradeData stopSvcStateData = new SvcStateTradeData(userSvcStates.getData(i));
        		stopSvcStateData.setEndDate(SysDateMgr.getSysDate(SysDateMgr.PATTERN_STAND));
        		stopSvcStateData.setModifyTag(BofConst.MODIFY_TAG_DEL);
        		bd.add(uca.getSerialNumber(), stopSvcStateData);
    		}
    		
    		
//    		
    		
//    		SvcStateTradeData svcStateData = new SvcStateTradeData();
//            svcStateData.setUserId(uca.getUserId());
//            svcStateData.setInstId(SeqMgr.getInstId());
//            svcStateData.setMainTag("0");
//            svcStateData.setModifyTag(BofConst.MODIFY_TAG_ADD);
//            svcStateData.setServiceId("3000003");
//            svcStateData.setStartDate(SysDateMgr.getSysDate(SysDateMgr.PATTERN_STAND));
//            svcStateData.setEndDate(SysDateMgr.END_DATE_FOREVER);
//            svcStateData.setStateCode("1");		//报开是将服务状态设置成关闭状态
//            bd.add(uca.getSerialNumber(), svcStateData);
            
    	}

        
        /*
         * 修改资源信息
         * 
         */
        ResTradeData resTD = new ResTradeData(boxInfo);
        resTD.setRsrvTag3("");		//
        resTD.setModifyTag(BofConst.MODIFY_TAG_UPD);
        bd.add(uca.getSerialNumber(), resTD);
 
	}
	
}
