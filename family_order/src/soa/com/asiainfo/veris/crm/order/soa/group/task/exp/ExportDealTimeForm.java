package com.asiainfo.veris.crm.order.soa.group.task.exp;

import java.util.Iterator;

import com.ailk.biz.impexp.ExportTaskExecutor;
import com.ailk.biz.util.StaticUtil;
import com.ailk.bizcommon.util.Clone;
import com.ailk.common.data.IData;
import com.ailk.common.data.IDataset;
import com.ailk.common.data.impl.DataMap;
import com.ailk.common.data.impl.DatasetList;
import com.ailk.common.data.impl.Pagination;
import com.ailk.org.apache.commons.lang3.StringUtils;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.IDataUtil;
import com.asiainfo.veris.crm.order.pub.frame.bcf.util.SysDateMgr;
import com.asiainfo.veris.crm.order.soa.frame.bcf.base.CSAppCall;
import com.asiainfo.veris.crm.order.soa.frame.bcf.query.UcaInfoQry;
import com.asiainfo.veris.crm.order.soa.group.esop.query.WorkformSubscribeBean;

public class ExportDealTimeForm extends ExportTaskExecutor {

    @Override
    public IDataset executeExport(IData data, Pagination page) throws Exception {

        String beginDate = data.getString("cond_BEGIN_DATE");
        String endDate = data.getString("cond_END_DATE");
        String subTypeCode = data.getString("cond_SUB_TYPE_CODE");
        String conibsysid = data.getString("cond_IBSYSID_ID");

        IData param = new DataMap();
        param.put("START_DATE", beginDate);
        param.put("END_DATE", endDate);
        param.put("SUB_TYPE_CODE", subTypeCode);
        param.put("IBSYSID", conibsysid);

        //IDataOutput output = CSAppCall.call("SS.WorkformSubscribeSVC.queryDealSubscribe", param, this.getPagination("navbar1"));

        IDataset infos = WorkformSubscribeBean.queryDealSubscribe(param, page);

        if(IDataUtil.isEmpty(infos)) {
            return infos;
        }

        for (int i = 0; i < infos.size(); i++) {
            IData info = infos.getData(i);
            
            //客户服务等级
            String groupId = info.getString("GROUP_ID");
            
            if(StringUtils.isNotBlank(groupId)){
                IData group = new DataMap();
                
                try{
                    group = UcaInfoQry.qryGrpInfoByGrpId(groupId);
                }catch(Exception e){
                  //查询不到集团直接给默认值
                }
                if(IDataUtil.isEmpty(group)){
                    group = new DataMap();
                }
                String servLevel = group.getString("SERV_LEVEL");
                if (StringUtils.isEmpty(servLevel))
                {
                    group.put("SERV_LEVEL", "4");
                }
                
                String servLevel2 = StaticUtil.getStaticValue(this.getVisit(), "TD_S_STATIC", new String[] { "TYPE_ID", "DATA_ID" }, "DATA_NAME", new String[] { "CUSTGROUP_SERVLEVEL", group.getString("SERV_LEVEL") });
                info.put("SERV_LEVEL", servLevel2);
            }
            
            String bpmTempletId = info.getString("SUB_TYPE_CODE");
            //转换工单类型
            String subType = StaticUtil.getStaticValue("EOP_SUB_TYPE_CODE", bpmTempletId);
            info.put("SUB_TYPE", subType);

            IData nodeInfoData = new DataMap();
            IData inParam = new DataMap();
            inParam.put("BUSIFORM_ID", info.getString("BUSIFORM_ID"));
            //inParam.put("NODE_ID", nodeId);
            inParam.put("IS_BH", info.getString("IS_BH"));
            IDataset dealNodeList = CSAppCall.call("SS.EweNodeQrySVC.qryEweNodeByBusiformIdNodeId", inParam);
            if(IDataUtil.isNotEmpty(dealNodeList)) {
                int k = 0;
                for (int j = 0; j < dealNodeList.size(); j++) {
                    IData dealNodeData = dealNodeList.getData(j);
                    String nodeId = dealNodeData.getString("NODE_ID");
                    IData timeData = nodeInfoData.getData(nodeId);
                    if(IDataUtil.isEmpty(timeData)) {
                        timeData = new DataMap();
                        timeData.put("NUM", ++k);
                        String creatDate = dealNodeData.getString("CREATE_DATE");
                        String finishDate = dealNodeData.getString("FLOW_REAL_TIME");
                        if(StringUtils.isNotBlank(creatDate) && StringUtils.isNotBlank(finishDate)) {
                            long creatTime = SysDateMgr.string2Date(creatDate, SysDateMgr.PATTERN_STAND).getTime();
                            long finishTime = SysDateMgr.string2Date(finishDate, SysDateMgr.PATTERN_STAND).getTime();
                            long dealTime = finishTime - creatTime;
                            timeData.put("TIME_LONG", dealTime);
                        }
                        //timeData.put("CREATE_DATE", dealNodeData.getString("CREATE_DATE"));
                        //timeData.put("FINISH_DATE", dealNodeData.getString("FLOW_REAL_TIME"));
                        IData input = new DataMap();
                        input.put("BPM_TEMPLET_ID", bpmTempletId);
                        input.put("NODE_ID", nodeId);
                        input.put("VALID_TAG", "0");
                        IDataset nodeTemplets = CSAppCall.call("SS.QryFlowNodeDescSVC.qryNodeDescByTempletId", input);
                        if(IDataUtil.isNotEmpty(nodeTemplets)) {
                            timeData.put("NODE_NAME", nodeTemplets.first().getString("NODE_NAME"));
                        } else {
                            timeData.put("NODE_NAME", nodeId);
                        }
                    } else {
                        String creatDate = dealNodeData.getString("CREATE_DATE");
                        String finishDate = dealNodeData.getString("FLOW_REAL_TIME");
                        if(StringUtils.isNotBlank(creatDate) && StringUtils.isNotBlank(finishDate)) {
                            long creatTime = SysDateMgr.string2Date(creatDate, SysDateMgr.PATTERN_STAND).getTime();
                            long finishTime = SysDateMgr.string2Date(finishDate, SysDateMgr.PATTERN_STAND).getTime();
                            long dealTime = finishTime - creatTime;
                            String timeLong = timeData.getString("TIME_LONG");
                            if(StringUtils.isNotBlank(timeLong)) {
                                long preNodeTimeLong = Long.valueOf(timeLong);
                                long sumTimeLong = dealTime + preNodeTimeLong;
                                timeData.put("TIME_LONG", sumTimeLong);
                            } else {
                                timeData.put("TIME_LONG", dealTime);
                            }
                        }
                    }
                    nodeInfoData.put(nodeId, timeData);

                }

                Iterator<String> it = nodeInfoData.keySet().iterator();
                while (it.hasNext()) {
                    String key = it.next();
                    IData timeData = nodeInfoData.getData(key);
                    if(IDataUtil.isNotEmpty(timeData)) {
                        String num = timeData.getString("NUM");
                        info.put("NODE" + num, timeData.getString("NODE_NAME"));
                        String timeLong = timeData.getString("TIME_LONG");
                        String dealTimeStr = "";
                        if(StringUtils.isNotBlank(timeLong)) {
                            long dealTime = Long.valueOf(timeLong) / 1000;
                            long day = dealTime / (60 * 60 * 24);
                            long dayRemainder = dealTime % (60 * 60 * 24);
                            dealTimeStr = day + "天";
                            if(dayRemainder != 0) {
                                long hour = dayRemainder / (60 * 60);
                                long hourRemainder = dayRemainder % (60 * 60);
                                dealTimeStr += hour + "时";
                                if(hourRemainder != 0) {
                                    long munite = hourRemainder / 60;
                                    long muniteRemainder = hourRemainder % 60;
                                    dealTimeStr += munite + "分";
                                    if(muniteRemainder != 0) {
                                        dealTimeStr += muniteRemainder + "秒";
                                    }
                                }
                            }
                        }
                        info.put("NODE" + num + "_DEAL_TIME", dealTimeStr);
                    }
                }

            }
        }
        
        IDataset results = new DatasetList();
        
        for(int i =0;i<infos.size();i++){
            IData info = infos.getData(i);
            
            String bpmTempletId = info.getString("SUB_TYPE_CODE");
            IData input = new DataMap();
            input.put("BPM_TEMPLET_ID", bpmTempletId);
            input.put("NODE_TYPE", "3");
            IDataset nodeTempleteList = CSAppCall.call("SS.NodeTempletInfoSVC.qryInfoByBpmTempletType", input);
            if(IDataUtil.isNotEmpty(nodeTempleteList)){
                String nodeId = nodeTempleteList.first().getString("NODE_ID");
                IData attrParam = new DataMap();
                attrParam.put("NODE_ID", nodeId);
                String ibsysid = info.getString("IBSYSID");
                attrParam.put("IBSYSID", ibsysid);
                attrParam.put("ATTR_CODE", "BIZSECURITYLV");
                
                String is_bh = info.getString("IS_BH");
                if("false".equals(is_bh)){
                    attrParam.put("IS_FINISH", "false");
                }else{
                    attrParam.put("IS_FINISH", "true");
                }
                IDataset attrList = CSAppCall.call("SS.WorkformAttrSVC.qryMaxAttrAndHisAttrByAttrCode", attrParam);
                if(IDataUtil.isNotEmpty(attrList)){
                    for(int j=0;j<attrList.size();j++){
                        IData attrData = attrList.getData(j);
                        IData cloneInfo = (IData) Clone.deepClone(info);
                        cloneInfo.put("BIZSECURITYLV", attrData.getString("ATTR_VALUE"));
                        results.add(cloneInfo);
                    }
                }else{
                    results.add(info);
                }
            }else{
                results.add(info);
            }
            
        }
        
        return results;
    }

}
