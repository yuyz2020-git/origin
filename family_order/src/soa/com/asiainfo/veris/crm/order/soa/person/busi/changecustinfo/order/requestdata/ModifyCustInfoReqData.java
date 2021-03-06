
package com.asiainfo.veris.crm.order.soa.person.busi.changecustinfo.order.requestdata;

import com.asiainfo.veris.crm.order.soa.frame.bof.data.requestdata.BaseReqData;

/**
 * 客户资料请求数据
 * 
 * @author liutt
 */
public class ModifyCustInfoReqData extends BaseReqData
{

    private String isRealName;// 实名制

    private String custName;// 客户名称

    private String psptId;// 证件号码

    private String psptAddr;// 证件地址

    private String postAddress;// 通信地址

    private String homeAddress;// 家庭地址

    private String cityCodeA;// 客户地域

    private String psptTypeCode;// 证件类型

    private String sex;// 客户性别

    private String psptEndDate;// 证件有效期

    private String phone;// 联系电话

    private String contact;// 联系人姓名

    private String contactPhone;// 联系人电话

    private String postCode;// 邮政编码

    private String contactTypeCode;// 优先联系方式

    private String workName;// 工作单位

    private String workDepart;// 工作部门

    private String birthday;// 生日

    private String jobTypeCode;// 职业类型

    private String job;// 职位

    private String educateDegreeCode;// 教育程度

    private String email;// 电子邮件

    private String faxNbr;// 传真号码

    private String marriage;// 婚姻状况

    private String nationalityCode;// 国籍

    private String characterTypeCode;// 性格类型

    private String webuserId;// 网站注册名

    private String languageCode;// 语言

    private String localNativeCode;// 籍贯

    private String communityId;// 社会保障号

    private String religionCode;// 信仰

    private String folkCode;// 民族

    private String revenueLevelCode;// 收入等级

    private String agentCustName;// 经办人名称

    private String agentPsptTypeCode;// 经办人证件类型

    private String agentPsptId;// 经办人证件号码

    private String agentPsptAddr;// 经办人证件地址
    
    private String ChannelId;//微信补登记，渠道标识
    
    private String IssusingAuthority;//微信补登记，发证机关
    
    private String TransactionId;//微信补登记，流水号
    
    private String PsptStartDate;//证件生效时间
    
    private String PassNumber ;//港澳居住证通行证号码
    
    private String LssueNumber ;//港澳居住证签证次数

    //REQ201911080010 关于实名入网办理日志留存的改造通知 - add by guonj -20200305 
    private String devRead ;//是否设备自动读取0:否1:是
    
    private String readRuslt ;//读取结果0:失败  1:成功

    private String comparisonIs ;//是否设备自动读取0:否1:是
    
    private String comparisonRuslt ;//读取结果0:失败  1:成功
    
    private String comparisonSeq ;//seq

    private String authenticityIs ;//是否联网验证真实性0:否1:是
    
    private String authenticitySeq ;//seq
    
    private String authenticityRuslt ;//是否联网验证真实性读取结果0:失败  1:成功
    
    private String provenumIs ;//是否进行一证五号查验0:否1:是
    
    private String provenumRuslt ;//是否进行一证五号查验读取结果0:失败  1:成功
    
    private String provenumSeq ;//seq
    
    public String getComparisonSeq() {
		return comparisonSeq;
	}

	public void setComparisonSeq(String comparisonSeq) {
		this.comparisonSeq = comparisonSeq;
	}

	public String getAuthenticitySeq() {
		return authenticitySeq;
	}

	public void setAuthenticitySeq(String authenticitySeq) {
		this.authenticitySeq = authenticitySeq;
	}

	public String getProvenumSeq() {
		return provenumSeq;
	}

	public void setProvenumSeq(String provenumSeq) {
		this.provenumSeq = provenumSeq;
	}

	public String getProvenumIs() {
		return provenumIs;
	}

	public void setProvenumIs(String provenumIs) {
		this.provenumIs = provenumIs;
	}

	public String getProvenumRuslt() {
		return provenumRuslt;
	}

	public void setProvenumRuslt(String provenumRuslt) {
		this.provenumRuslt = provenumRuslt;
	}

	public String getAuthenticityIs() {
		return authenticityIs;
	}

	public void setAuthenticityIs(String authenticityIs) {
		this.authenticityIs = authenticityIs;
	}

	public String getAuthenticityRuslt() {
		return authenticityRuslt;
	}

	public void setAuthenticityRuslt(String authenticityRuslt) {
		this.authenticityRuslt = authenticityRuslt;
	}

	public String getComparisonIs() {
		return comparisonIs;
	}

	public void setComparisonIs(String comparisonIs) {
		this.comparisonIs = comparisonIs;
	}

	public String getComparisonRuslt() {
		return comparisonRuslt;
	}

	public void setComparisonRuslt(String comparisonRuslt) {
		this.comparisonRuslt = comparisonRuslt;
	}

	public String getDevRead() {
		return devRead;
	}

	public void setDevRead(String devRead) {
		this.devRead = devRead;
	}

	public String getReadRuslt() {
		return readRuslt;
	}

	public void setReadRuslt(String readRuslt) {
		this.readRuslt = readRuslt;
	}

    public String getPassNumber() {
  		return PassNumber;
  	}
      
    public void setPassNumber(String PassNumber) {
  		this.PassNumber = PassNumber;
  	}
      
    public String getLssueNumber() {
    	return LssueNumber;
    }
        
    public void setLssueNumber(String LssueNumber) {
    	this.LssueNumber = LssueNumber;
    }
    
    public String getChannelId() {
  		return ChannelId;
  	}
      
      public void setChannelId(String ChannelId) {
  		this.ChannelId = ChannelId;
  	}
    
     public String getIssusingAuthority() {
    		return IssusingAuthority;
    }
        
    public void setIssusingAuthority(String IssusingAuthority) {
    		this.IssusingAuthority = IssusingAuthority;
    }
    
    public String getTransactionId() {
		return TransactionId;
    }
    
    public void setTransactionId(String TransactionId) {
		this.TransactionId = TransactionId;
    }
    
    public String getPsptStartDate() {
		return PsptStartDate;
    }
    
    public void setPsptStartDate(String PsptStartDate) {
		this.PsptStartDate = PsptStartDate;
    }
    public String getUsePsptTypeCode() {
		return usePsptTypeCode;
	}

	public void setUsePsptTypeCode(String usePsptTypeCode) {
		this.usePsptTypeCode = usePsptTypeCode;
	}

	public String getUsePsptId() {
		return usePsptId;
	}

	public void setUsePsptId(String usePsptId) {
		this.usePsptId = usePsptId;
	}

	public String getUsePsptAddr() {
		return usePsptAddr;
	}

	public void setUsePsptAddr(String usePsptAddr) {
		this.usePsptAddr = usePsptAddr;
	}

	private String usePsptTypeCode;

    private String usePsptId;

    private String usePsptAddr;
    
    public String getUse() {
		return use;
	}

	public void setUse(String use) {
		this.use = use;
	}

	private String use;
    

    public String getAgentCustName()
    {
        return agentCustName;
    }

    public String getAgentPsptAddr()
    {
        return agentPsptAddr;
    }

    public String getAgentPsptId()
    {
        return agentPsptId;
    }

    public String getAgentPsptTypeCode()
    {
        return agentPsptTypeCode;
    }

    public String getBirthday()
    {
        return birthday;
    }

    public String getCharacterTypeCode()
    {
        return characterTypeCode;
    }

    public String getCityCodeA()
    {
        return cityCodeA;
    }

    public String getCommunityId()
    {
        return communityId;
    }

    public String getContact()
    {
        return contact;
    }

    public String getContactPhone()
    {
        return contactPhone;
    }

    public String getContactTypeCode()
    {
        return contactTypeCode;
    }

    public String getCustName()
    {
        return custName;
    }

    public String getEducateDegreeCode()
    {
        return educateDegreeCode;
    }

    public String getEmail()
    {
        return email;
    }

    public String getFaxNbr()
    {
        return faxNbr;
    }

    public String getFolkCode()
    {
        return folkCode;
    }

    public String getHomeAddress()
    {
        return homeAddress;
    }

    public String getIsRealName()
    {
        return isRealName;
    }

    public String getJob()
    {
        return job;
    }

    public String getJobTypeCode()
    {
        return jobTypeCode;
    }

    public String getLanguageCode()
    {
        return languageCode;
    }

    public String getLocalNativeCode()
    {
        return localNativeCode;
    }

    public String getMarriage()
    {
        return marriage;
    }

    public String getNationalityCode()
    {
        return nationalityCode;
    }

    public String getPhone()
    {
        return phone;
    }

    public String getPostAddress()
    {
        return postAddress;
    }

    public String getPostCode()
    {
        return postCode;
    }

    public String getPsptAddr()
    {
        return psptAddr;
    }

    public String getPsptEndDate()
    {
        return psptEndDate;
    }

    public String getPsptId()
    {
        return psptId;
    }

    public String getPsptTypeCode()
    {
        return psptTypeCode;
    }

    public String getReligionCode()
    {
        return religionCode;
    }

    public String getRevenueLevelCode()
    {
        return revenueLevelCode;
    }

    public String getSex()
    {
        return sex;
    }

    public String getWebuserId()
    {
        return webuserId;
    }

    public String getWorkDepart()
    {
        return workDepart;
    }

    public String getWorkName()
    {
        return workName;
    }

    public void setAgentCustName(String agentCustName)
    {
        this.agentCustName = agentCustName;
    }

    public void setAgentPsptAddr(String agentPsptAddr)
    {
        this.agentPsptAddr = agentPsptAddr;
    }

    public void setAgentPsptId(String agentPsptId)
    {
        this.agentPsptId = agentPsptId;
    }

    public void setAgentPsptTypeCode(String agentPsptTypeCode)
    {
        this.agentPsptTypeCode = agentPsptTypeCode;
    }

    public void setBirthday(String birthday)
    {
        this.birthday = birthday;
    }

    public void setCharacterTypeCode(String characterTypeCode)
    {
        this.characterTypeCode = characterTypeCode;
    }

    public void setCityCodeA(String cityCodeA)
    {
        this.cityCodeA = cityCodeA;
    }

    public void setCommunityId(String communityId)
    {
        this.communityId = communityId;
    }

    public void setContact(String contact)
    {
        this.contact = contact;
    }

    public void setContactPhone(String contactPhone)
    {
        this.contactPhone = contactPhone;
    }

    public void setContactTypeCode(String contactTypeCode)
    {
        this.contactTypeCode = contactTypeCode;
    }

    public void setCustName(String custName)
    {
        this.custName = custName;
    }

    public void setEducateDegreeCode(String educateDegreeCode)
    {
        this.educateDegreeCode = educateDegreeCode;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public void setFaxNbr(String faxNbr)
    {
        this.faxNbr = faxNbr;
    }

    public void setFolkCode(String folkCode)
    {
        this.folkCode = folkCode;
    }

    public void setHomeAddress(String homeAddress)
    {
        this.homeAddress = homeAddress;
    }

    public void setIsRealName(String isRealName)
    {
        this.isRealName = isRealName;
    }

    public void setJob(String job)
    {
        this.job = job;
    }

    public void setJobTypeCode(String jobTypeCode)
    {
        this.jobTypeCode = jobTypeCode;
    }

    public void setLanguageCode(String languageCode)
    {
        this.languageCode = languageCode;
    }

    public void setLocalNativeCode(String localNativeCode)
    {
        this.localNativeCode = localNativeCode;
    }

    public void setMarriage(String marriage)
    {
        this.marriage = marriage;
    }

    public void setNationalityCode(String nationalityCode)
    {
        this.nationalityCode = nationalityCode;
    }

    public void setPhone(String phone)
    {
        this.phone = phone;
    }

    public void setPostAddress(String postAddress)
    {
        this.postAddress = postAddress;
    }

    public void setPostCode(String postCode)
    {
        this.postCode = postCode;
    }

    public void setPsptAddr(String psptAddr)
    {
        this.psptAddr = psptAddr;
    }

    public void setPsptEndDate(String psptEndDate)
    {
        this.psptEndDate = psptEndDate;
    }

    public void setPsptId(String psptId)
    {
        this.psptId = psptId;
    }

    public void setPsptTypeCode(String psptTypeCode)
    {
        this.psptTypeCode = psptTypeCode;
    }

    public void setReligionCode(String religionCode)
    {
        this.religionCode = religionCode;
    }

    public void setRevenueLevelCode(String revenueLevelCode)
    {
        this.revenueLevelCode = revenueLevelCode;
    }

    public void setSex(String sex)
    {
        this.sex = sex;
    }

    public void setWebuserId(String webuserId)
    {
        this.webuserId = webuserId;
    }

    public void setWorkDepart(String workDepart)
    {
        this.workDepart = workDepart;
    }

    public void setWorkName(String workName)
    {
        this.workName = workName;
    }

}
