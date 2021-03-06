function getGroupInfo()
{
    var group = $("#cond_GROUP_ID").val;
    
    if(!$.validate.verifyField($("#cond_GROUP_ID"))) 
    {
       return false;
    }  
	$.beginPageLoading("\u6570\u636e\u67e5\u8be2\u4e2d......");//数据查询中......
	$.ajax.submit('queryFrom','getGroupBaseInfo','&cond_GROUP_ID='+group,'TradeListPart,BackPart',
	function(data){
			$.endPageLoading();
		},
		function(error_code,error_info, derror){
			$.endPageLoading();
			showDetailErrorInfo(error_code,error_info,derror);
    	}
	);
}

// 提交前校验
function onSubmitBaseTradeCheck(){
	
	var userId = $("#USER_ID").val();
	if(userId == null || userId == ""){
		//请选择集团产品!
		alert("\u8bf7\u9009\u62e9\u96c6\u56e2\u4ea7\u54c1!");
		return false;
	}

	var checked = $('#MARK_FLAG').attr('checked');
	if(checked == false){
		//请选择欠费不截止代付选项!
		alert("\u8bf7\u9009\u62e9\u6b20\u8d39\u4e0d\u622a\u6b62\u4ee3\u4ed8\u9009\u9879!");
		return false;
	}

	var remark = $('#REMARK_OTHER').val();
	if(remark != null && remark != "")
	{
		var len = 0;
		for(var i=0;i<remark.length;i++)
		{
			if(remark.charCodeAt(i) > 127 || remark.charCodeAt(i) == 94)
			{
				len = len + 2;
			}
			else 
			{
				len = len + 1;
			}
		}
		if(len > 100)
		{
			alert("备注长度不能超过100!");
			return false;
		}
	}
		 
	if(!$.validate.verifyAll("queryFrom")) return false;
	
	if(!$.validate.verifyAll("TradeListPart")) return false;
	
	if(!$.validate.verifyAll("BackPart")) return false;
		
	return true;
}

function checkSelectMesInfo(obj){
	if(obj){
		var check = obj.checked;
		if(check == true){
			obj.value = "1";
		} else {
			obj.value = "0";
		}
	}
}

function queryAllPayMark(){
	
	$.beginPageLoading("\u6570\u636e\u67e5\u8be2\u4e2d......");//数据查询中......
	$.ajax.submit("QueryCondPart", "qryBreakGrpPayMarkInfo", null, "QueryCondPart,ratioPart,editForm", 
		function(data){
			$.endPageLoading();
		},
		function(error_code,error_info, derror){
			$.endPageLoading();
			showDetailErrorInfo(error_code,error_info,derror);
    	}
    );
}

function tableRatioClick()
{
	var rowData = $.table.get("ratioTable").getRowData();
	var userId = rowData.get("USER_ID");
	var groupId = rowData.get("GROUP_ID");
	var custName = rowData.get("CUST_NAME");
	var serialNumber = rowData.get("SERIAL_NUMBER");
	var startDate = rowData.get("START_DATE");
	var endDate = rowData.get("END_DATE");
	
	$("#E_USER_ID").val(userId);
	$("#E_GROUP_ID").val(groupId);
	$("#E_CUST_NAME").val(custName);
	$("#E_SERIAL_NUMBER").val(serialNumber);
	$("#E_START_DATE").val(startDate);
	$("#E_END_DATE").val(endDate);
}

function clearGrpPayMark()
{
	$("#E_USER_ID").val("");
	$("#E_GROUP_ID").val("");
	$("#E_CUST_NAME").val("");
	$("#E_SERIAL_NUMBER").val("");
	$("#E_START_DATE").val("");
	$("#E_END_DATE").val("");
}


//根据user_id截止代付关系
function delGrpPayMark()
{
	var param =  '';
	var userId = $("#E_USER_ID").val();
	if(userId == null || userId == "") 
	{
		alert("您未选择要截止的记录，不能提交，请选择后，再点击截止代付关系按钮！");
		return false;
	}
	var serialNumber = $("#E_SERIAL_NUMBER").val();
	param += '&USER_ID='+userId;
	param += '&SERIAL_NUMBER"='+serialNumber;
	
	$.beginPageLoading("业务受理中...");
	
	$.ajax.submit('editForm', 'delBreakGrpPayMark', param, 'QueryCondPart,editForm', function(data) {
		successMessage(data);
		$.endPageLoading();
	},
	function(error_code,error_info,derror)
	{
		$.endPageLoading();
		//alert(error_info);
		showDetailErrorInfo(error_code,error_info,derror);
    });
}

function successMessage(data){ 
		var result = data.get(0);
		//欠费不截止代付关系处理成功 业务订单号
		MessageBox.alert("\u6b20\u8d39\u4e0d\u622a\u6b62\u4ee3\u4ed8\u5173\u7cfb\u5904\u7406\u6210\u529f",
			"\u4e1a\u52a1\u8ba2\u5355\u53f7:"+result.get("ORDER_ID"),
			function(btn){
		});
}