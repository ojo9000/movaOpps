/******************************************************************************************/
//˵��������ܵ�ҳ��������룬������ܵ�ҳ�治������
/******************************************************************************************/
//����frame�Ļ���������
var div_running_base = ''+
'<div id="div_running" style="display:none;">'+ 
'<div class="cn_frame"><iframe id="overiframe" frameborder="0" scrolling="no" height="100%" width="100%" marginwidth="0" marginheight="0"></iframe></div>'+
'</div>';
//��ǰframe��ʾ��Ϣ������
var div_running_info = ''+
'<div class="cn_tchcon cn_tchwidth01">'+ 
'<div class="cn_tchleft"><img src="/images/cn_tchleft.gif" /></div>'+ 
'<div class="cn_tchright"><img src="/images/cn_tchright.gif" /></div>'+ 
'<div class="cn_tchtile">��ʾ��Ϣ</div>'+ 
'<div class="cn_tchbutton"><img src="/images/cn_tchclose.gif" style="display:none;" onclick="closeMask();"/></div>'+ 
'<div id="div_running_result" class="cn_tchcontent">'+ 
'</div>';
//��ǰframe�ȴ�������
var div_running_wait = ''+
'<div class="cn_center">ϵͳ���ڴ����ύ���ݣ����Ե�......</div>'+ 
'<div class="cn_center"><img src="/images/cn_run.gif" /></div>'+ 
'<div class="cn_center">�˹��̿�����Ҫ10-60���ʱ��......<br />'+ 
'�벻Ҫ�رմ��ڣ�������ܳ���......'+ 
'</div> ';
//��������frame��
function autoBindAjaxSubmit(){
	//������frame�Ļ���������
	autoBindFrame();
	//�󶨵�ǰframe��ʾ��Ϣ������
	$("#div_running").append(div_running_info);
	//ҳ�������������frame�Ĳ�
	closeMask();
}
//������frame�Ļ���������
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
//�󶨵�ǰframe��ʾ��Ϣ������
function showWaitMask(){
	//�󶨵ȴ�������
	$("#div_running_result").html(div_running_wait);
	//��ʾ��
	showMask();
	//�����ƶ���body����ֹ�����ڰ�ť���棬�س�ʱ���ظ��ύ
	$("body").focus();
}
//�������ʾ�㣬����ǰ��ͨ��$("#div_running_result").html(div_running_wait);�趨����
function showMask(){
	//Ϊ��ֹ���frame���ز�ͬ������ʾ��ʱ����ȫ������һ��frame���ֲ�
	autoBindFrame();
	//��ʾ����frame�Ĳ�
	for(i=0;i<top.frames.length;i++)
	{
		$("#div_running:hidden",top.frames[i].document).show();
	}
	for(i=0;i<parent.frames.length;i++)
	{
		$("#div_running:hidden",parent.frames[i].document).show();
	}
	$("#div_running:hidden").show();
	//����λ��
	setMaskPosition();
	//���¼������ڴ�С�ı䣬��λ�ñ仯
	$(window).bind('resize',setMaskPosition);
}
//���ص�ǰframe�ȴ���
function closeMask(){
	//��������frame�Ĳ�
	for(i=0;i<top.frames.length;i++)
	{
		$("#div_running:visible",top.frames[i].document).hide();
	}
	for(i=0;i<parent.frames.length;i++)
	{
		$("#div_running:visible",parent.frames[i].document).hide();
	}
	$("#div_running:visible").hide();
	//��������ط�
	var firstwrong=$($(".validation-failed").get(0));
	firstwrong.select();
	firstwrong.focus();
	//ȡ�����¼������ڴ�С�ı䣬��λ�ñ仯
	$(window).unbind('resize',setMaskPosition);
}
//���õ�ǰframe�ȴ���Ĵ�С��λ��
function setMaskPosition(){
	//���λ��
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
	//���ֲ�ĸ��Ǹ߶�-��������ϲ�
	if(document.body.clientHeight>document.documentElement.clientHeight)
		frameheight=document.body.clientHeight;
	else
		frameheight=document.documentElement.clientHeight;
	$(".cn_frame").height(frameheight); 
	$("#overiframe").height(frameheight);
	//�������ֲ��С��������Ҫ��Ϊ�˽��ie��left�Ŀ�ܲ���ȫ����ס���ɿ�����չ���������
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
//������Ϣ�ı���
MSG_RESULT="";
MSG_BACKBUTTON="";
MSG_CLOSEBUTTON="";
MSG_AUTOREDIRECTURL="";
MSG_AUTOREDICTTIME="";
MSG_BACKURL="";
MSG_ERRMSG="";
//������Ϣҳ��
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
	//ֻ�ǰ�ҳ����ʾ������ҳ���ϵ�js�޷��Զ�ִ��
	else
	{
		closeMask();
		MSG_BODY=responseText.substring(responseText.indexOf("<body>")+"<body>".length,responseText.indexOf("</body>"));
		$("body").html(MSG_BODY);
		return false;
	}
	//ͼƬ����
	if(MSG_RESULT==1)//�ɹ�
	{
		tishiname="cn_tishi_success";
	}
	else
	{
		tishiname="cn_tishi_wrong";
	}
	//�Զ���ת��ʾ
	if(MSG_AUTOREDIRECTURL.length>0)
	{
		MSG_ERRMSG+="<br><br><font color='gray'>"+MSG_AUTOREDICTTIME+
			"���Ӻ��Զ���ת��������������û���Զ���ת,����<a style='cursor:pointer' onclick='autopage();'><font class='cn_font02'>����</font></a>��</font>";
	}
	//��ʾ��Ϣ
	tishimsg=unescape(MSG_ERRMSG.replace(/\\/g,"%"));
	//�رհ�ť
	if(MSG_CLOSEBUTTON=='1')
	{
		closeutton='<button name="popup_button" class="cn_button01" onclick="closeMask();">�ر�</button>';
	}
	else
	{
		closebutton='';
	}
	//���ذ�ť
	if(MSG_BACKBUTTON=='1' || MSG_BACKBUTTON=='2')
	{
		backbutton='';

		//��������
		if(MSG_BACKURL.length>0)
		{
			backbutton+='<button name="popup_button" class="cn_button01" onclick="backpage();">����</button>';
		}
		else
		{
			backbutton+='<button name="popup_button" class="cn_button01" onclick="closeMask();">����</button>';
		}
	}
	else
	{
		backbutton='';
	}
	//������ʾ�ַ���
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
		str += '<div class="cn_caption">�����������������Ͻ�������֤������ɨ�����������Ƭ����;�������磺zzy.cn�����������͵�����רԱ��ѹ�����������������������磺zzy.cn.rar�����ʼ��������ע�������ƺ���;���磺zzy.cn����������ϣ�,������֤�����ϰ����Ӹǹ��µ�<a href="http://help.zzy.cn/download/CNNIC����ע�������.doc">����ע�������ɨ�����������Ƭ��</a>����֯��������֤��ɨ�����������Ƭ����ע����ϵ�˵ľ������֤��ɨ�����������Ƭ����ע��ͼƬ��ʽ��ʹ��jpg��ʽ����5������˾δ�յ��������ϻ��������ϲ����������ģ�������������ע����</div>';
	}
	str +='<div class="cn_center">'+closebutton+backbutton+'</div>';
	$("#div_running_result").html(str);
	showMask();
	//����λ��
	setMaskPosition();
	//�����ƶ�����һ����ť
	$("*[name='popup_button']:eq(0)").focus();
	//�Զ���ת
	if(MSG_AUTOREDIRECTURL.length>0)
	{
		setTimeout(autopage,1000*MSG_AUTOREDICTTIME);
	}
}
//���ذ�ť�¼�
function backpage()
{
	index_back=MSG_BACKURL.indexOf("/");
	//�����"/cgi-bin/a.cgi"Ҳ�Ƿ���0��
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
//����������ת
function beianpage()
{
	location.href='/hosticprecord.htm';
}
//�Զ���ת�¼�
function autopage()
{
	index_auto=MSG_AUTOREDIRECTURL.indexOf("/");
	//�����"/cgi-bin/a.cgi"Ҳ�Ƿ���0��
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
//ͨ��post��ʽ�ύajax
function ajaxsubmitform(formid,show){
	if(show=='false')
	{
		$("#"+formid).ajaxSubmit({success:showAjaxResult,timeout:300000,error:function(){alert("ϵͳ���������߳�ʱ��");}});
	}
	else
	{
		$("#"+formid).ajaxSubmit({beforeSubmit:showWaitMask,success:showAjaxResult,timeout:300000,error:function(){alert("ϵͳ���������߳�ʱ��");}});
	}
}


//ͨ��get��ʽ�ύajax
function ajaxsubmiturl(url,show){
	if(show!='false')
		showWaitMask();
	$.ajax({
		url:encodeURI(url),
		cache:false,
		success:showAjaxResult,
		timeout:300000,
		error:function(){alert("ϵͳ���������߳�ʱ��");}
	}); 
}
/******************************************************************************************/
// ��дalert
function alert(message, callback) 
{   
	$.alerts.alert(message, callback);
}
// ��дconfirm
function confirm(message, callback) 
{
	$.alerts.confirm(message, callback);
	return false;
}
//��дalert��confirm����
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
				//������ʾ�ַ���
				str = ''+
				'<div class="cn_tishidiv">'+
				'<table>'+
				'<tr>'+
				'<td width="90px" align="center"><img src="/images/cn_tishi_wrong.gif" /></td>'+
				'<td>'+msg+'</td>'+
				'</tr>'+
				'</table>'+
				'</div>'+
				'<div class="cn_center"><button id="popup_ok" class="cn_button01">����</button></div>';
				$("#div_running_result").html(str);
				showMask();
				$("#popup_ok").focus();
				$("#popup_ok").bind('click', function(e) {
					closeMask();
					if(callback)callback();
				});
				break;
			case 'confirm':
				//������ʾ�ַ���
				str = ''+
				'<div class="cn_tishidiv">'+
				'<table>'+
				'<tr>'+
				'<td width="90px" align="center"><img src="/images/cn_tishi.gif" /></td>'+
				'<td>'+msg+'</td>'+
				'</tr>'+
				'</table>'+
				'</div>'+
				'<div class="cn_center"><button id="popup_ok" class="cn_button01">ȷ��</button><button id="popup_cancel" class="cn_button01">ȡ��</button></div>';
				$("#div_running_result").html(str);
				showMask();
				//���¼�
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
//����С����λ��
function fordight(Dight, How)//(�����б�:Dight----ԭʼ����, How----������С��λ��)
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
//ҳ���Զ�����
$(document).ready(function(){
	//���Զ�������ε�
	$("form").attr("autocomplete","off");
	//��ajax�ύ�ؼ�
	autoBindAjaxSubmit();
}); 
/******************************************************************************************/
