package com.asiainfo.veris.crm.order.web.person.sundryquery.phoneanime; 

import org.apache.log4j.Logger;
import org.apache.tapestry.IRequestCycle;

import com.ailk.common.data.IData;
import com.ailk.common.data.IDataset;
import com.ailk.common.data.impl.DataMap;
import com.ailk.common.data.impl.DatasetList;
import com.asiainfo.veris.crm.order.web.frame.bcf.base.CSViewCall;
import com.asiainfo.veris.crm.order.web.frame.csview.person.base.PersonQueryPage;


public abstract class QueryAbnormalBehavior extends PersonQueryPage
{
    static transient final Logger logger = Logger.getLogger(QueryAbnormalBehavior.class);

    public void closePage(IRequestCycle cycle) throws Exception
    {
        IData pageData = getData();
        IDataset infos = new DatasetList();
        
        String indictSeq = pageData.getString("INDICTSEQ");

        if (indictSeq != null && ("0".equals(pageData.getString("PIGEONHOLE"))))
        {
        	infos = CSViewCall.call(this, "SS.BaseCommRecordSVC.subClosePage", pageData);
        }
        setAjax(infos);
    }
    /**
     * 灰名单查询
     * 
     * @param cycle
     * @throws Exception
     */
    public void queryAbnormal(IRequestCycle cycle) throws Exception
    {
        IData condParams = getData("cond", true);

        IData queryData = new DataMap();
		
		IData data1 = new DataMap();
		//用户手机号码|类型  例如:15116387719|0
		StringBuilder operateConditions = new StringBuilder();
		operateConditions.append(condParams.getString("PARA_CODE1", ""));//用户手机号码

		String serNumber = condParams.getString("PARA_CODE1", ""); //号码

        queryData.put("KIND_ID", "BIP2C092_T2002092_0_0");
        queryData.put("CALLERNO", serNumber);
        queryData.put("SVCTYPEID", "0103030207");// 服务请求分类编码
        queryData.put("CONTACTCHANNEL", "0");// 受理渠道
        queryData.put("SERVICETYPEID", "95");// 业务类别
        queryData.put("OPERATETYPEID", "01004");// 操作类型
        queryData.put("OPERATECONDITIONS", operateConditions.toString());

        IDataset infos = CSViewCall.call(this, "SS.BaseCommRecordSVC.subBussQureySerive", queryData);

        IDataset results = infos.getData(0).getDataset("PDTS_INFO");
        IData result = infos.getData(0).getData("PAGE_INFO");
        result.put("CALLERNO", serNumber);
        IData reportPage = infos.getData(0).getData("REPORTPAGE");

        setCond(condParams);
        setInfos(results);
        setResult(result);
        setReportPage(reportPage);
    }

    /**
     * 无线音乐点播记录查询方法,查询剩余的记录
     * 
     * @param cycle
     * @throws Exception
     */
    public void queryOtherRecord(IRequestCycle cycle) throws Exception
    {
        IData pageData = getData();

        int currPage = getPagination().getCurrent();

        pageData.put("CURR_PAGE", currPage);

        IDataset infos = CSViewCall.call(this, "SS.BaseCommRecordSVC.subUnfinishBussQureySerive", pageData);

        IData result = infos.getData(0).getData("PAGE_INFO");
        IDataset results = infos.getData(0).getDataset("PDTS_INFO");
        IData reportPage = result.getData("REPORTPAGE");

        setResult(result);
        setInfos(results);
        setReportPage(reportPage);
    }
    public abstract void setCond(IData cond);

    public abstract void setInfos(IDataset infos);

    public abstract void setReportPage(IData reportPage);

    public abstract void setResult(IData result);
}
