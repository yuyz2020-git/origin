
package com.asiainfo.veris.crm.iorder.pub.family.consts;

public enum FamilySQLEnum
{
    // TF_F_FAMILY_USER_MEMBER
    MEMBER_BY_MEMBER_USER_ID("TF_F_FAMILY_USER_MEMBER", "SEL_BY_MEMBER_USER_ID"),
    MEMBER_BY_FAMILY_USER_ID("TF_F_FAMILY_USER_MEMBER", "SEL_BY_FAMILY_USER_ID"),
    ALL_MEMBER_BY_FAMILY_USER_ID("TF_F_FAMILY_USER_MEMBER", "SEL_ALL_BY_FAMILY_USER_ID"),
    MEMBER_BY_FAMILY_USER_ID_AND_ROLE("TF_F_FAMILY_USER_MEMBER", "SEL_BY_FAMILY_USER_ID_AND_ROLE"),
    SEL_BY_FAMILY_USER_ID_MEMBER_USER_ID("TF_F_FAMILY_USER_MEMBER", "SEL_BY_FAMILY_USER_ID_MEMBER_USER_ID"),
    SEL_SAME_KIND_MEMBER_BY_MEMBER_USERID_ROLE("TF_F_FAMILY_USER_MEMBER","SEL_SAME_KIND_MEMBER_BY_MEMBER_USERID_ROLE"),
    SEL_FAMILY_MEMBER_INFO_BY_MEMBER_USER_ID("TF_F_FAMILY_USER_MEMBER","SEL_FAMILY_MEMBER_INFO_BY_MEMBER_USER_ID"),
    SEL_FAMILY_MEMBER_BY_MEMBER_USER_ID_AND_ROLE("TF_F_FAMILY_USER_MEMBER","SEL_FAMILY_MEMBER_BY_MEMBER_USER_ID_AND_ROLE"),
    SEL_ALL_MEMBER_BY_FMY_USERID_AND_FMY_SN("TF_F_FAMILY_USER_MEMBER","SEL_ALL_MEMBER_BY_FMY_USERID_AND_FMY_SN"),

    //TF_B_TRADE_FAMILY_USER_MEMBER
    SEL_FAMILY_MEMBER_INFO_BY_INST_ID("TF_B_TRADE_FAMILY_USER_MEMBER","SEL_FAMILY_MEMBER_INFO_BY_INST_ID"),


    // TF_F_FAMILY_MEMBER_CHA
    SEL_ALL_VALID_BY_MEMBER_USER_ID_REL_INST_ID("TF_F_FAMILY_MEMBER_CHA","SEL_ALL_VALID_BY_MEMBER_USER_ID_REL_INST_ID"),
    SEL_NOW_VALID_BY_MEMBER_USER_ID_REL_INST_ID("TF_F_FAMILY_MEMBER_CHA","SEL_NOW_VALID_BY_MEMBER_USER_ID_REL_INST_ID"),
    SEL_BY_MEMBER_USER_ID_FAMILY_ID_CHA_CODE("TF_F_FAMILY_MEMBER_CHA","SEL_BY_MEMBER_USER_ID_FAMILY_ID_CHA_CODE"),
    SEL_NOW_VALID_BY_REL_INST_ID_AND_CHA_CODE("TF_F_FAMILY_MEMBER_CHA","SEL_NOW_VALID_BY_REL_INST_ID_AND_CHA_CODE"),
    SEL_NOW_VALID_BY_MEMBER_USER_ID_CHA_CODE("TF_F_FAMILY_MEMBER_CHA","SEL_NOW_VALID_BY_MEMBER_USER_ID_CHA_CODE"),


    // TD_S_FAMILY_PARAM
    P_SEL_BY_BUSY_TYPE_PARAM_CODE("TD_S_FAMILY_PARAM", "SEL_BY_BUSY_TYPE_PARAM_CODE"),
    P_SEL_BY_BUSY_TYPE_PARAM_CODE_ROLE("TD_S_FAMILY_PARAM", "SEL_BY_BUSY_TYPE_PARAM_CODE_ROLE"),


    // TF_F_CUST_FAMILY
    FAMILY_CUST_INFO_BY_SN("TF_F_CUST_FAMILY", "SEL_HOMECUSTID_BY_SN"),
    SEL_HOMECUST_BY_SN_HEAD_CUST_ID_REMOVE_TAG("TF_F_CUST_FAMILY", "SEL_HOMECUST_BY_SN_HEAD_CUST_ID_REMOVE_TAG"),
    SEL_FAMILY_CUSTINFO_BY_HOME_CUST_ID("TF_F_CUST_FAMILY","SEL_BY_CUSTID"),

	FAMILY_USER_INFO_BY_MANAGER_USER_ID("TF_F_FAMILY_USER_MEMBER","SEL_FAMILY_USER_INFO_BY_MANAGER_USER_ID_AND_ROLE_CODE"),
	FAMILY_USER_INFO_BY_MEM_USER_ID_AND_ROLE_CODE("TF_F_FAMILY_USER_MEMBER","SEL_FAMILY_USER_INFO_BY_MEM_USER_ID_AND_ROLE_CODE");

    private final String tabName;

    private final String sqlRef;

    private FamilySQLEnum(String tabName, String sqlRef)
    {
        this.tabName = tabName;
        this.sqlRef = sqlRef;
    }

    public String getTabName()
    {
        return this.tabName;
    }

    public String getSqlRef()
    {
        return this.sqlRef;
    }

    public String toString()
    {
        return "tab_name=" + tabName + ",sql_ref=" + sqlRef;
    }

}
