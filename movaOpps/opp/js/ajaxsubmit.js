/******************************************************************************************/
//说明：主框架的页面必须引入，其他框架的页面不能引入
/******************************************************************************************/
//所有frame的基础浮动层
var div_running_base = ''+
'<div id="div_running" style="display:none;">'+ 
'<div class="cn_frame"><iframe id="overiframe" frameborder="0" scrolling="no" height="100%" width="100%" marginwidth="0" marginheight="0"></iframe></div>'+
'</div>';
//当前frame提示信息浮动层
var div_running_info = ''+
'<div class="cn_tchcon cn_tchwidth01">'+ 
'<div class="cn_tchleft"><img src="/images/cn_tchleft.gif" /></div>'+ 
'<div class="cn_tchright"><img src="/images/cn_tchright.gif" /></div>'+ 
'<div class="cn_tchtile">提示信息</div>'+ 
'<div class="cn_tchbutton"><img src="/images/cn_tchclose.gif" style="display:none;" onclick="closeMask();"/></div>'+ 
'<div id="div_running_result" class="cn_tchcontent">'+ 
'</div>';
//当前frame等待滚动层
var div_running_wait = ''+
'<div class="cn_center">系统正在处理提交数据，请稍等......</div>'+ 
'<div class="cn_center"><img src="/images/cn_run.gif" /></div>'+ 
'<div class="cn_center">此过程可能需要10-60秒的时间......<br />'+ 
'请不要关闭窗口，否则可能出错......'+ 
'</div> ';
//生成所有frame层
function autoBindAjaxSubmit(){
	//绑定所有frame的基础浮动层
	autoBindFrame();
	//绑定当前frame提示信息浮动层
	$("#div_running").append(div_running_info);
	//页面加载隐藏所有frame的层
	closeMask();
}
//绑定所有frame的基础浮动层
function autoBindFrame(){
	for(i=0;i<parent.frames.length;i++)
	{
		if($("#div_running",parent.frames[i].document).length==0)
		{
			$("body",parent.frames[i].document).append(div_running_base);
		}
	}
	for(i=0;i<top.frames.length;i++)
	{
		if($("#div_running",top.frames[i].document).length==0)
		{
			$("body",top.frames[i].document).append(div_running_base);
		}
	}
	if($("#div_running").length==0)
	{
		$("body").append(div_running_base);
	}
}
//绑定当前frame提示信息浮动层
function showWaitMask(){
	//绑定等待滚动条
	$("#div_running_result").html(div_running_wait);
	//显示层
	showMask();
	//焦点移动到body，防止焦点在按钮上面，回车时会重复提交
	$("body").focus();
}
//纯粹的显示层，调用前先通过$("#div_running_result").html(div_running_wait);设定内容
function showMask(){
	//为防止多个frame加载不同步，显示的时候再全部生成一遍frame遮罩层
	autoBindFrame();
	//显示所有frame的层
	for(i=0;i<top.frames.length;i++)
	{
		$("#div_running:hidden",top.frames[i].document).show();
	}
	for(i=0;i<parent.frames.length;i++)
	{
		$("#div_running:hidden",parent.frames[i].document).show();
	}
	$("#div_running:hidden").show();
	//设置位置
	setMaskPosition();
	//绑定事件：窗口大小改变，层位置变化
	$(window).bind('resize',setMaskPosition);
}
//隐藏当前frame等待层
function closeMask(){
	//隐藏所有frame的层
	for(i=0;i<top.frames.length;i++)
	{
		$("#div_running:visible",top.frames[i].document).hide();
	}
	for(i=0;i<parent.frames.length;i++)
	{
		$("#div_running:visible",parent.frames[i].document).hide();
	}
	$("#div_running:visible").hide();
	//跳到出错地方
	var firstwrong=$($(".validation-failed").get(0));
	firstwrong.select();
	firstwrong.focus();
	//取消绑定事件：窗口大小改变，层位置变化
	$(window).unbind('resize',setMaskPosition);
}
//设置当前frame等待层的大小及位置
function setMaskPosition(){
	//层的位置
	var viewW=document.documentElement.clientWidth;
	var viewH=document.documentElement.clientHeight;
	var objtop=viewH/3-$(".cn_tchcon").height()/2;
	if(objtop<0)
		objtop=0;
	var objleft=(viewW-$(".cn_tchcon").width())/2;
	var realtop=objtop-45;
	var realleft=objleft-98;
	if(realtop<0) realtop=0;
	if(realleft<0) realleft=0;
	$(".cn_tchcon").css("top",realtop+document.documentElement.scrollTop);
	$(".cn_tchcon").css("left",realleft);
	//遮罩层的覆盖高度-可与下面合并
	if(document.body.clientHeight>document.documentElement.clientHeight)
		frameheight=document.body.clientHeight;
	else
		frameheight=document.documentElement.clientHeight;
	$(".cn_frame").height(frameheight); 
	$("#overiframe").height(frameheight);
	//调整遮罩层大小，现在主要是为了解决ie下left的框架不能全部遮住，可考虑扩展到其他框架
	if(parent.frames["left"])
	{
		if(top.frames["left"].document.body.clientWidth>top.frames["left"].document.documentElement.clientWidth)
			leftframewidth=top.frames["left"].document.body.clientWidth;
		else
			leftframewidth=top.frames["left"].document.documentElement.clientWidth;
		$(".cn_frame",top.frames["left"].document).width(leftframewidth); 
		$("#overiframe",top.frames["left"].document).width(leftframewidth);
	}
}
/******************************************************************************************/
//保存信息的变量
MSG_RESULT="";
MSG_BACKBUTTON="";
MSG_CLOSEBUTTON="";
MSG_AUTOREDIRECTURL="";
MSG_AUTOREDICTTIME="";
MSG_BACKURL="";
MSG_ERRMSG="";
//设置信息页面
function showAjaxResult(responseText){
	if(responseText.indexOf("<MSG_RESULT>")>0)
	{
		MSG_RESULT=responseText.substring(responseText.indexOf("<MSG_RESULT>")+"<MSG_RESULT>".length,responseText.indexOf("</MSG_RESULT>"));
		MSG_BACKBUTTON=responseText.substring(responseText.indexOf("<MSG_BACKBUTTON>")+"<MSG_BACKBUTTON>".length,responseText.indexOf("</MSG_BACKBUTTON>"));
		MSG_CLOSEBUTTON=responseText.substring(responseText.indexOf("<MSG_CLOSEBUTTON>")+"<MSG_CLOSEBUTTON>".length,responseText.indexOf("</MSG_CLOSEBUTTON>"));
		MSG_AUTOREDIRECTURL=responseText.substring(responseText.indexOf("<MSG_AUTOREDIRECTURL>")+"<MSG_AUTOREDIRECTURL>".length,responseText.indexOf("</MSG_AUTOREDIRECTURL>"));
		MSG_AUTOREDICTTIME=responseText.substring(responseText.indexOf("<MSG_AUTOREDICTTIME>")+"<MSG_AUTOREDICTTIME>".length,responseText.indexOf("</MSG_AUTOREDICTTIME>"));
		MSG_BACKURL=responseText.substring(responseText.indexOf("<MSG_BACKURL>")+"<MSG_BACKURL>".length,responseText.indexOf("</MSG_BACKURL>"));
		MSG_ERRMSG=responseText.substring(responseText.indexOf("<MSG_ERRMSG>")+"<MSG_ERRMSG>".length,responseText.indexOf("</MSG_ERRMSG>"));
	}
	//只是把页面显示出来，页面上的js无法自动执行
	else
	{
		closeMask();
		MSG_BODY=responseText.substring(responseText.indexOf("<body>")+"<body>".length,responseText.indexOf("</body>"));
		$("body").html(MSG_BODY);
		return false;
	}
	//图片名称
	if(MSG_RESULT==1)//成功
	{
		tishiname="cn_tishi_success";
	}
	else
	{
		tishiname="cn_tishi_wrong";
	}
	//自动跳转提示
	if(MSG_AUTOREDIRECTURL.length>0)
	{
		MSG_ERRMSG+="<br><br><font color='gray'>"+MSG_AUTOREDICTTIME+
			"秒钟后将自动跳转。如果您的浏览器没有自动跳转,请点击<a style='cursor:pointer' onclick='autopage();'><font class='cn_font02'>这里</font></a>。</font>";
	}
	//提示信息
	tishimsg=unescape(MSG_ERRMSG.replace(/\\/g,"%"));
	//关闭按钮
	if(MSG_CLOSEBUTTON=='1')
	{
		closeutton='<button name="popup_button" class="cn_button01" onclick="closeMask();">关闭</button>';
	}
	else
	{
		closebutton='';
	}
	//返回按钮
	if(MSG_BACKBUTTON=='1' || MSG_BACKBUTTON=='2')
	{
		backbutton='';

		//返回链接
		if(MSG_BACKURL.length>0)
		{
			backbutton+='<button name="popup_button" class="cn_button01" onclick="backpage();">返回</button>';
		}
		else
		{
			backbutton+='<button name="popup_button" class="cn_button01" onclick="closeMask();">返回</button>';
		}
	}
	else
	{
		backbutton='';
	}
	//整体显示字符串
	str = ''+
	'<div class="cn_tishidiv">'+
	'<table>'+
	'<tr>'+
	'<td width="90px" align="center"><img src="/images/'+tishiname+'.gif" /></td>'+
	'<td>'+tishimsg+'</td>'+
	'</tr>'+
	'</table>'+
	'</div>';
	if(MSG_BACKBUTTON=='2')
	{
		str += '<div class="cn_caption">申请域名后，请您马上将相关身份证明资料扫描件或数码照片按用途命名（如：zzy.cn申请表）打包发送到销售专员：压缩包请用域名名称命名（如：zzy.cn.rar）；邮件主题请标注域名名称和用途（如：zzy.cn域名审核资料）,相关身份证明资料包括加盖公章的<a href="http://help.zzy.cn/download/CNNIC域名注册申请表.doc">域名注册申请表（扫描件或数码照片）</a>、组织机构代码证（扫描件或数码照片）和注册联系人的居民身份证（扫描件或数码照片）（注：图片格式请使用jpg格式）。5日内我司未收到申请资料或申请资料不符合条件的，该域名将予以注销。</div>';
	}
	str +='<div class="cn_center">'+closebutton+backbutton+'</div>';
	$("#div_running_result").html(str);
	showMask();
	//调整位置
	setMaskPosition();
	//焦点移动到第一个按钮
	$("*[name='popup_button']:eq(0)").focus();
	//自动跳转
	if(MSG_AUTOREDIRECTURL.length>0)
	{
		setTimeout(autopage,1000*MSG_AUTOREDICTTIME);
	}
}
//返回按钮事件
function backpage()
{
	index_back=MSG_BACKURL.indexOf("/");
	//如果是"/cgi-bin/a.cgi"也是返回0的
	if(index_back>0)
	{
		if(MSG_BACKURL.substring(0,index_back)=='parent')
			parent.location.href=MSG_BACKURL.substring(index_back);
	}
	else
	{
		location.href=MSG_BACKURL;
	}
}
//立即备案跳转
function beianpage()
{
	location.href='/hosticprecord.htm';
}
//自动跳转事件
function autopage()
{
	index_auto=MSG_AUTOREDIRECTURL.indexOf("/");
	//如果是"/cgi-bin/a.cgi"也是返回0的
	if(index_auto>0)
	{
		if(MSG_AUTOREDIRECTURL.substring(0,index_auto)=='parent')
			parent.location.href=MSG_AUTOREDIRECTURL.substring(index_auto);
	}
	else
	{
		location.href=MSG_AUTOREDIRECTURL;
	}
}
//通过post方式提交ajax
function ajaxsubmitform(formid,show){
	if(show=='false')
	{
		$("#"+formid).ajaxSubmit({success:showAjaxResult,timeout:300000,error:function(){alert("系统处理出错或者超时。");}});
	}
	else
	{
		$("#"+formid).ajaxSubmit({beforeSubmit:showWaitMask,success:showAjaxResult,timeout:300000,error:function(){alert("系统处理出错或者超时。");}});
	}
}


//通过get方式提交ajax
function ajaxsubmiturl(url,show){
	if(show!='false')
		showWaitMask();
	$.ajax({
		url:encodeURI(url),
		cache:false,
		success:showAjaxResult,
		timeout:300000,
		error:function(){alert("系统处理出错或者超时。");}
	}); 
}
/******************************************************************************************/
// 重写alert
function alert(message, callback) 
{   
	$.alerts.alert(message, callback);
}
// 重写confirm
function confirm(message, callback) 
{
	$.alerts.confirm(message, callback);
	return false;
}
//重写alert和confirm代码
$.alerts = {
	// Public methods
	alert: function(message, callback) {
		$.alerts._show(message, 'alert', function(result) {
		if( callback ) callback(result);
		});
	},

	confirm: function(message, callback) {
		$.alerts._show(message, 'confirm', function(result) {
		if( callback ) callback(result);
		});
	},			

	// Private methods

	_show: function(msg, type, callback) {
		switch( type ) {
			case 'alert':
				//整体显示字符串
				str = ''+
				'<div class="cn_tishidiv">'+
				'<table>'+
				'<tr>'+
				'<td width="90px" align="center"><img src="/images/cn_tishi_wrong.gif" /></td>'+
				'<td>'+msg+'</td>'+
				'</tr>'+
				'</table>'+
				'</div>'+
				'<div class="cn_center"><button id="popup_ok" class="cn_button01">返回</button></div>';
				$("#div_running_result").html(str);
				showMask();
				$("#popup_ok").focus();
				$("#popup_ok").bind('click', function(e) {
					closeMask();
					if(callback)callback();
				});
				break;
			case 'confirm':
				//整体显示字符串
				str = ''+
				'<div class="cn_tishidiv">'+
				'<table>'+
				'<tr>'+
				'<td width="90px" align="center"><img src="/images/cn_tishi.gif" /></td>'+
				'<td>'+msg+'</td>'+
				'</tr>'+
				'</table>'+
				'</div>'+
				'<div class="cn_center"><button id="popup_ok" class="cn_button01">确定</button><button id="popup_cancel" class="cn_button01">取消</button></div>';
				$("#div_running_result").html(str);
				showMask();
				//绑定事件
				$("#popup_ok").click(function() {
					closeMask();
					if(callback)callback();
					showWaitMask();
				});
				$("#popup_cancel").click( function() {
					closeMask();
				});
				$("#popup_ok").focus();
				break;				
		}
	}
}
/******************************************************************************************/
//控制小数点位数
function fordight(Dight, How)//(参数列表:Dight----原始数字, How----保留的小数位数)
{
    Dight = Math.round(Dight*Math.pow(10,How))/Math.pow(10,How);
    var str = Dight.toString();
    if(str.indexOf(".") == -1 && How != 0)
    {
        str += ".";
        for(var i = 1; i <= How; i++)
        {
            str += "0";
        }
    }
    else
    {
        if(str.split(".")[1] == null)
        {
            for(var i = 1; i <= How; i++)
            {
                str += "0";
            }
        }
        else
        {
            var length = str.split(".")[1].length;
            for(var i = 1; i < How; i++)
            {
                if(length == i)
                {
                    for(var j = 1; j <= (How - length); j++)
                    {
                        str += "0";
                    }
                    break;
                }
            }
        }
    }
    return str;
}
/******************************************************************************************/
//页面自动加载
$(document).ready(function(){
	//表单自动完成屏蔽掉
	$("form").attr("autocomplete","off");
	//绑定ajax提交控件
	autoBindAjaxSubmit();
}); 
/******************************************************************************************/
