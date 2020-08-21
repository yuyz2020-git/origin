function refreshPartAtferAuth(data)
{
	var userId = $.auth.getAuthData().get('USER_INFO').get('USER_ID');
	var eparchyCode = $.auth.getAuthData().get('USER_INFO').get('EPARCHY_CODE');
	
	$.ajax.submit('', 'getUserDiscntList', "&EPARCHY_CODE="+eparchyCode+"&USER_ID="+userId, 'discntPartList', 
	function(data)
	{
		$("#SYS_DATE").val(data.get('SYS_DATE'));
		$("#LAST_DAY_THIS_MONTH").val(data.get('LAST_DAY_THIS_MONTH'));
		$("#LAST_DAY_LAST_MONTH").val(data.get('LAST_DAY_LAST_MONTH'));
		$("#END_DATE_FOREVER").val(data.get('END_DATE_FOREVER'));
		
		$("#discntTable").unbind("dblclick");
		
		$.endPageLoading();
	},
	function(error_code,error_info){
		$.endPageLoading();
		$.MessageBox.error(error_code,error_info);
    });
}

function clickStartDate(obj)
{
	var table = $.table.get("discntTable");
	
	var tableIndex = obj.parentNode.parentNode.rowIndex;
	var dataIndex = tableIndex - 1;
	
	var rowData = table.getRowData(null, tableIndex);
	
	var rowEdit = {};
	
	rowEdit["START_DATE"] = $("#"+dataIndex+"_START_DATE").val();
	rowEdit["TEMP_START_DATE"] = $("#"+dataIndex+"_START_DATE").val();

	table.updateRow(rowEdit,tableIndex);
}

function chooseType(obj)
{
	var rowEdit = {};
	
	var table = $.table.get("discntTable");

	var rowIndex = obj.parentNode.parentNode.rowIndex;
	
	var rowData = table.getRowData(null, rowIndex);

	var chooseType = rowData.get('CHOOSE_TYPE');

	if(chooseType != '' && chooseType =='1')//上月底
	{
		rowEdit["END_DATE"] = $("#LAST_DAY_LAST_MONTH").val();
		table.updateRow(rowEdit);
	}
	else if(chooseType != '' && chooseType =='2')//当前
	{
		rowEdit["END_DATE"] = $("#SYS_DATE").val();
	   	$.table.get("discntTable").updateRow(rowEdit);
	}
	else if(chooseType != '' && chooseType =='3')//本月底
	{
		rowEdit["END_DATE"] = $("#LAST_DAY_THIS_MONTH").val();
		table.updateRow(rowEdit);
	}
	else if(chooseType != '' && chooseType =='4')//永久
	{
		rowEdit["END_DATE"] = $("#END_DATE_FOREVER").val();
		table.updateRow(rowEdit);
	}
	else
	{
		rowEdit["END_DATE"] = rowData.get('OLD_END_DATE');
		table.updateRow(rowEdit);
	}
}

function onTradeSubmit()
{
	if(!$.validate.verifyAll())
	{
		return false;
	}
	
	var discntList = $.table.get("discntTable").getTableData();
	
	if(discntList.length <=0)
	{
		$.MessageBox.alert("提示","未进行任何操作!");
		
		return false;
	}
	
	var param = "&DISCNT_LIST="+discntList+"&SERIAL_NUMBER="+$("#AUTH_SERIAL_NUMBER").val();
	
	$.cssubmit.addParam(param);
	
	return true;
}