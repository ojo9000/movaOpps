/*-------------------
客户端脚本容错处理
*	2001.12.13	添加客户端容错处理
*-------------------*/
//function NoErr(){
//	return(true);
//} 
//onerror=NoErr;


/*-------------------------------------------------------------
* 验证客户端输入数据
*
* 参考资料：
*	CheckInput.vbs
*	互联网
*	MSDN Regular Expression 
*
*
* 修改纪录：
*	2001.8.20	增加 isPostalCode
*	2001.8.16	增加 isURL
*	2001.8.15	改为使用正则表达式进行验证
*				并增加了 isMoney
*
*	2001.8.1	修改了 isDate，新增加 checkLength
*------------------------------------------------------------*/


// 为 Array 类增加一个 max 方法
Array.prototype.max = function()
{
	var i, max = this[0];
	
	for( i = 1; i < this.length; i++ )
	{
		if( max < this[i] )
		max = this[i];
	}
	
	return max;
}

// 为 String 类增加一个 trim 方法
String.prototype.trim = function()
{
    // 用正则表达式将前后空格用空字符串替代。
    return this.replace( /(^\s*)|(\s*$)/g, "" );
}

// 使用正则表达式，检测 s 是否满足模式 re
function checkExp( re, s )
{
	return re.test( s );
}

// 验证是否 字母数字
function isAlphaNumeric( strValue )
{
	// 只能是 A-Z a-z 0-9 之间的字母数字 或者为空
	return checkExp( /^\w*$/gi, strValue );
}

//验证是否是完整的日期时间 时间格式必须是 2004-01-01 23:00
function isFullTime(strValue){
	if( isEmpty( strValue ) ) return true;
	
	if (checkExp(/[1-2][0-9][0-9][0-9]-[0-1][0-9]-[0-3][0-9] [0-2][0-9]:[0-5][0-9]/,strValue)){
		var arr = strValue.split(" ");
		if (isTime(arr[1]) && isDate(arr[0])){
			return true
		}else{
			return false;
		}
		
	}else{
		return false;
	}
}

//验证是否是完整的时间 时间格式必须是 23:00
function isTime(strValue)
{
	if( isEmpty(strValue)) return true;
	if (checkExp(/[0-2][0-9]:[0-5][0-9]/,strValue)){
		var arr = strValue.split(":");
		if (arr[0]>=24){
			return false
		}
		if (arr[1]>=60){
			return false;
		}
		return true;
	}else{
		return false;
	}
}


// 验证是否 日期
function isDate( strValue )
{
	// 日期格式必须是 2001-10-1/2001-1-10 或者为空
	if( isEmpty( strValue ) ) return true;

	if( !checkExp( /^\d{4}-[01]?\d-[0-3]?\d$/g, strValue ) ) return false;
	// 或者 /^\d{4}-[1-12]-[1-31]\d$/
	
	var arr = strValue.split( "-" );
	var year = arr[0];
	var month = arr[1];
	var day = arr[2];
	
	// 1 <= 月份 <= 12，1 <= 日期 <= 31
	if( !( ( 1<= month ) && ( 12 >= month ) && ( 31 >= day ) && ( 1 <= day ) ) )
		return false;
		
	// 润年检查
	if( !( ( year % 4 ) == 0 ) && ( month == 2) && ( day == 29 ) )
		return false;
	
	// 7月以前的双月每月不超过30天
	if( ( month <= 7 ) && ( ( month % 2 ) == 0 ) && ( day >= 31 ) )
		return false;
	
	// 8月以后的单月每月不超过30天
	if( ( month >= 8) && ( ( month % 2 ) == 1) && ( day >= 31 ) )
		return false;
	
	// 2月最多29天
	if( ( month == 2) && ( day >=30 ) )
		return false;
	
	return true;
}

// 验证是否 Email
function isEmail( strValue )
{
	// Email 必须是 x@a.b.c.d 等格式 或者为空
	if( isEmpty( strValue ) ) return true;
	
	//return checkExp( /^\w+@(\w+\.)+\w+$/gi, strValue );	//2001.12.24测试出错 检查 jxj-xxx@114online.com时不能通过
	//Modify By Tianjincat 2001.12.24
	var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
	return checkExp( pattern, strValue );
	
}

// 验证是否 为空
function isEmpty( strValue )
{
	if( strValue == "" )
		return true;
	else
		return false;
}

// 验证是否 数字
function isNumeric( strValue )
{
	// 数字必须是 0123456789 或者为空
	
	return checkExp( /^\d*$/g, strValue );
}

// 验证是否 货币
function isMoney( strValue )
{
	// 货币必须是 -12,345,678.9 等格式 或者为空
	if( isEmpty( strValue ) ) return true;
	
	return checkExp( /^[+-]?\d+(,\d{3})*(\.\d+)?$/g, strValue );
}

// 验证是否 小数
function isFloat( strValue )
{
	// 货币必须是 -12,345,678.9 等格式 或者为空
	if( isEmpty( strValue ) ) return true;
	
	return checkExp( /^[+-]?\d+(\d{3})*(\.\d+)?$/g, strValue );
}

// 验证是否 电话
function isPhone( strValue )
{
	// 普通电话	(0755)4477377-3301/(86755)6645798-665
	// Call 机	95952-351
	// 手机		130/131/135/136/137/138/13912345678
	// 或者为空
	if( isEmpty( strValue ) ) return true;
	
	return checkExp( /(^\(\d{3,5}\)\d{6,8}(-\d{2,8})?$)|(^\d+-\d+$)|(^(130|131|135|136|137|138|139)\d{8}$)/g, strValue );
}

// 验证是否 邮政编码
function isPostalCode( strValue )
{
	// 邮政编码必须是6位数字
	return checkExp( /(^$)|(^\d{6}$)/gi, strValue )
}

// 验证是否 URL
function isURL( strValue )
{
	// http://www.yysoft.com/ssj/default.asp?Type=1&ArticleID=789
	if( isEmpty( strValue ) ) return true;
	
	var pattern = /^(http|https|ftp):\/\/(\w+\.)+[a-z]{2,3}(\/\w+)*(\/\w+\.\w+)*(\?\w+=\w*(&\w+=\w*)*)*/gi;
	// var pattern = /^(http|https|ftp):(\/\/|\\\\)(\w+\.)+(net|com|cn|org|cc|tv|[0-9]{1,3})((\/|\\)[~]?(\w+(\.|\,)?\w\/)*([?]\w+[=])*\w+(\&\w+[=]\w+)*)*$/gi;
	// var pattern = ((http|https|ftp):(\/\/|\\\\)((\w)+[.]){1,}(net|com|cn|org|cc|tv|[0-9]{1,3})(((\/[\~]*|\\[\~]*)(\w)+)|[.](\w)+)*(((([?](\w)+){1}[=]*))*((\w)+){1}([\&](\w)+[\=](\w)+)*)*)/gi;

	return checkExp( pattern, strValue );
	
}

// 检查字段长度
//
//	strValue	字符串
//	strParam	检查参数，形如：L<10, L=5, L>117
//
function checkLength( strValue, strParam )
{
	if( isEmpty( strValue ) )	return true;
	
	// 参数形如：L<10, L=5, L>117
	if( strParam.charAt( 0 ) != 'L' )	return false;
	
	var l = strValue.length;
	var ml = parseInt( strParam.substr( 2 ) );
	
	switch( strParam.charAt( 1 ) )
	{
		case '<' :
			if( l >= ml )
				return false;
			break;
			
		case '=' :
			if( l != ml )
				return false;
			break;
			
		case '>' :
			if( l <= ml )
				return false;
			break;
			
		default :
			return false
	}
	
	return true;
}

// 检查输入数据长度的合法性（字符长度不能大于**个字符）
//
//	输入参数
//		strName		字段对象
//		strDescription	字段描述
//		strLength	字段长度
//
function ValidateMaxLength( strName, strDescription, strLength) {
	var strMsg = "";
	var strValue = document.all( strName ).value.trim();
	var strMaxLength = "L<" + strLength;
	if( !checkLength( strValue, strMaxLength ))
	strMsg = '"' + strDescription + '" 必须小于'+ strLength + '个字符\n';
	return strMsg;
}

// 检查输入数据长度的合法性（字符长度不能小于**个字符）
//
//	输入参数
//		strName		字段对象
//		strDescription	字段描述
//		strLength	字段长度
//
function ValidateMinLength( strName, strDescription, strLength) {
	var strMsg = "";
	var strValue = document.all( strName ).value.trim();
	var strMaxLength = "L>" + strLength;
	if( !checkLength( strValue, strMaxLength ))
	strMsg = '"' + strDescription + '" 必须大于'+ strLength + '个字符\n';
	return strMsg;
}

// 检查输入数据长度的合法性（字符长度等于**个字符）
//
//	输入参数
//		strName		字段对象
//		strDescription	字段描述
//		strLength	字段长度
//
function ValidateEquLength( strName, strDescription, strLength) {
	var strMsg = "";
	var strValue = document.all( strName ).value.trim();
	var strMaxLength = "L=" + strLength;
	if( !checkLength( strValue, strMaxLength ))
	strMsg = '"' + strDescription + '" 必须等于'+ strLength + '个字符\n';
	return strMsg;
}

// 检查输入数据的合法性（应用在离开字段时）
//
//	输入参数
//		obj		字段对象
//		strDescription	字段描述
//		strType	字段类型
//
//CheckValid(this,'','Date/Email/Money','')
function CheckValid( obj, strDescription, strType,isEmpty)
{
	var strMsg   = "";
	var strValue = obj.value.trim();
	var strEmpty = isEmpty;
	if ((isEmpty=="F")&&(strValue=="")){
		strMsg = '"' + strDescription + '" 不能为空！\n';   
	}else{
		switch( strType )
		{
			case "AlphaNumeric" :	// 字母数字
				if( !isAlphaNumeric( strValue ) )
					strMsg = '"' + strDescription + '" 必须是字母或数字！\n';
				break;
				
			case "Date" :	// 日期
				if( !isDate( strValue ) ) 
					strMsg = '"' + strDescription + '" 必须具有正确的日期格式，如 2001-10-01\n';
				break;
			case "FullTime" :	// 时间格式
				if( !isFullTime( strValue ) )
					strMsg = '"' + strDescription + '" 必须具有正确的时间格式，如 2004-03-10 09:10\n';
				break;
			case "Time" :	// 时间
				if( !isTime( strValue ) )
					strMsg = '"' + strDescription + '" 必须具有正确的时间格式，如 23:01\n';
				break;
			case "Email" :	// 电子邮件
				if( !isEmail( strValue ) )
					strMsg = '"' + strDescription + '" 必须具有正确的邮件格式，如 xx@yy.com\n';
				break;
					
			case "NotEmpty" :	// 不许空值
				if( isEmpty( strValue ) )
					strMsg = '"' + strDescription + '" 不能为空！\n';
				break;
					
			case "Numeric" :	//数字
				if( !isNumeric( strValue )  )
					strMsg = '"' + strDescription + '" 必须是数字！\n';
				break;
			
			case "Float" :	//货币
				if( !isFloat( strValue )  )
					strMsg = '"' + strDescription + '" 必须具有正确的数字格式，如 -123.456\n';
				break;
				
			case "Money" :	//货币
				if( !isMoney( strValue )  )
					strMsg = '"' + strDescription + '" 必须具有正确的数字格式，如 -123,456.789\n';
				break;
						
			case "Phone" :	// 电话
				if( !isPhone( strValue ) )
					strMsg = '"' + strDescription + '" 必须具有正确的电话格式，如 (0755)1234567-999\n';
				break;
				
			case "PostalCode" :	// 邮政编码
				if( !isPostalCode( strValue ) )
					strMsg = '"' + strDescription + '" 必须是6位数字！\n';
				break;
				
			case "URL" :	// URL
				if( !isURL( strValue ) )
					strMsg = '"' + strDescription + '" 必须是正确的URL格式！\n';
				break;
					
			default :	// 其他
				if( arrType[i].charAt( 0 ) == 'L' )
				{
					if( !checkLength( strValue, arrType[i] ) )
						strMsg = '"' + strDescription + '" 的长度必须 ' + arrType[i].substr(1) + '\n';
				}
				else
					strMsg = '错误："' + strDescription + '" 的类型 "' + strType + '" 不能识别！\n';
		}
	}
	return strMsg;
}

//判断输入字符类型的判断
function isCheckValid( obj, strDescription, strType,isEmpty){
	var errorMsg = CheckValid( obj, strDescription, strType,isEmpty);
	if (errorMsg!=""){
		alert(errorMsg);
		obj.value="";	
	}
}

function isNumber(numStr){ 
	var strValue=numStr; 
	if(!isNaN(strValue)){ 
		return true;
	}else{ 
		return false
	} 
} 


// 验证输入数据的合法性
//
//	输入参数
//		strName	字段名
//		strDescription	字段描述
//		strType	字段类型
//
//	输出参数
//		空串	通过验证
//		非空	未通过验证
//
function Validate( strName, strDescription, strType)
{
	var strMsg = "";
	var strValue = document.all( strName ).value.trim();
	var arrType = strType.split( " " );
	
	for( var i = 0; i < arrType.length; i++ )
		switch( arrType[i] )
		{
			case "AlphaNumeric" :	// 字母数字
				if( !isAlphaNumeric( strValue ) )
					strMsg = '"' + strDescription + '" 必须是字母或数字！\n';
				break;
			
			case "Date" :	// 日期
				if( !isDate( strValue ) ) 
					strMsg = '"' + strDescription + '" 必须具有正确的日期格式，如 2001-10-1\n';
				break;
				
			case "Email" :	// 电子邮件
				if( !isEmail( strValue ) )
					strMsg = '"' + strDescription + '" 必须具有正确的邮件格式，如 webmaster@yysoft.com\n';
				break;
				
			case "NotEmpty" :	// 不许空值
				if( isEmpty( strValue ) )
					strMsg = '"' + strDescription + '" 不能为空！\n';
				break;
				
			case "Numeric" :	//数字
				if( !isNumber( strValue )  )
					strMsg = '"' + strDescription + '" 必须是数字！\n';
				break;
				
			case "Money" :	//货币
				if( !isMoney( strValue )  )
					strMsg = '"' + strDescription + '" 必须具有正确的货币格式，如 -123,456.789\n';
				break;
					
			case "Phone" :	// 电话
				if( !isPhone( strValue ) )
					strMsg = '"' + strDescription + '" 必须具有正确的电话格式，如 (0755)1234567-999\n';
				break;
			
			case "PostalCode" :	// 邮政编码
				if( !isPostalCode( strValue ) )
					strMsg = '"' + strDescription + '" 必须是6位数字！\n';
				break;
				
			case "URL" :	// URL
				if( !isURL( strValue ) )
					strMsg = '"' + strDescription + '" 必须是正确的URL格式！\n';
				break;
				
			default :	// 其他
				if( arrType[i].charAt( 0 ) == 'L' )
				{
					if( !checkLength( strValue, arrType[i] ) )
						strMsg = '"' + strDescription + '" 的长度必须 ' + arrType[i].substr(1) + '\n';
				}
				else
					strMsg = '错误："' + strDescription + '" 的类型 "' + strType + '" 不能识别！\n';
		}
	
	return strMsg;
}


// 确认删除
function confirm_delete( url )
{
	if( confirm( "您确实要删除吗？" ) )
	{
		window.location = ( url )
	}
}

// 链接转向
function goToURL( url )
{
	window.location = url;
}

// 打开新窗口
function openNewWin( url, width, height )
{
	var newwin = window.open( url, "NewWin", "toolbar=no,location=no,directories=no,status=no,menubar=no,resizable=no,scrollbars=yes,width=" + width + ",height=" + height +"" );
	newwin.focus();
	return false;
}

// 对话框窗口
function openDialog( url, width, height)
{	
	showModalDialog( url, "NewWin","dialogWidth:"+ width +";dialogHeight:"+ height +";dialogTop:100;dialogLeft:200;status:no;");
}

//功能：checkBox的全选和全不选
var checkboxflag = "false";
function check(field) 
{
	if (checkboxflag == "false") 
	{
		if(field.length == null)	//处理可能只有一条记录的Bug
		{
			if (field.disabled != true)
			{
				field.checked = true;
			}
		}
		else
		{
			for (i = 0; i < field.length; i++) 
			{
				if (field[i].disabled != true)	//如果是disabled则不修改萁状态 Modify By tianjincat 2002-03-26
				{
					field[i].checked = true;
				}
			}
		}
		checkboxflag = "true";
		return "全不选"; 
	}
	else 
	{
		if(field.length == null)	//处理可能只有一条记录的Bug
		{
			if (field.disabled != true)
			{
				field.checked = false;
			}
		}
		else
		{
			for (i = 0; i < field.length; i++) 
			{
				if (field[i].disabled != true)	//如果是disabled则不修改萁状态 Modify By tianjincat 2002-03-26
				{
					field[i].checked = false; 
				}	
			}
		}
		checkboxflag = "false";
		return "全选"; 
	}
}

//功能：checkBox的反选择
//Added By tianjincat 2002-04-01
function chkinverse(field)
{
	if(field.length == null)	//处理可能只有一条记录的Bug
	{
		if (field.disabled != true)
		{
			if(field.checked == true)
			{
				field.checked = false;
			}
			else
			{
				field.checked = true;
			}
		}	
	}
	else
	{
		
		for(i = 0; i < field.length; i++)
		{
			if (field[i].disabled != true)
			{
				if(field[i].checked == true)
				{
					field[i].checked = false;
				}
				else
				{
					field[i].checked = true;
				}	
			}
		}
	}	
	return "反选"
}

//选择记录提示
//form 提交的FORM名称	msg  提示信息	field CheckBox的名称
//
function ActionConfirm(form,msg,field) 
{
	var flag=0;
	var truthBeTold;
	for(i = 0; i < field.length; i++)
		{
			if (field[i].disabled != true)
			{
				if(field[i].checked == true)
				{
					flag=1;
				}
			}
		}

	if(field.length == null)	//处理可能只有一条记录的Bug
	{
		if(field.checked == true)
		{
			flag=1;
		}		
	}

	if (flag==0)
	{alert("请选择记录!");}
	else
	{
		truthBeTold =window.confirm("你确定要["+msg+"]吗?");
		if (truthBeTold) {
			form.DoType.value=msg;
			form.submit();
		} 
	}
}

//检查select 输入的是否非空
function checkpicklist(picklist){
	var test=false;
	for (var i = 0; i < picklist.length; i++) {
		if (picklist.options[i].selected==true){
			if (picklist.options[i].value!=""){
				test=true;
			};
		}
	}
	if (test){
		return true;
	}else{
		return false;
	}	
}

function outPutError(str){
	alert("对不起，您的输入不正确!\n--------------------------\n" + str);	
}