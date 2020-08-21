//Auth组件查询后调用方法
function refreshPartAtferAuth(data)
{
	var custStr = data.get("CUST_INFO").toString();
	var userStr = data.get("USER_INFO").toString();
	
	var param = "&USER_INFO="+userStr+"&CUST_INFO="+custStr;
	
	$.ajax.submit('AuthPart', 'loadChildInfo', param, 'custInfoPart,userInfoPart', function()
	{
		$("#baseCommInfo_OPER_TYPE").attr("disabled",false);
	},
	function(error_code,error_info)
	{
		$.endPageLoading();
		alert(error_info);
    });
}
//提交前校验
function checkBeforeSubmit()
{
	if(!$.validate.verifyAll("userInfoPart"))
	{
		return false;
	}
	return true ;
}