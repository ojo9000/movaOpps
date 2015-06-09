<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<object id="LODOP" classid="clsid:2105C259-1E0C-4534-8141-A753534CB4CA" width=0 height=0> 
	<embed id="LODOP_EM" type="application/x-print-lodop" width=0 height=0 pluginspage="install_lodop32.exe"></embed>
</object> 

<% chkAccountStr "muConfig_edit" %>
<%
Dim Fso
Dim myFile
Dim fLine 

Set Fso = Server.CreateObject("Scripting.FileSystemObject")
Set myFile = Fso.OpenTextFile(Server.MapPath("/movaOpps/core/pub/config.ini"),1,True)
While Not myFile.AtEndOfStream
	fLine = myFile.ReadLine
	if isConfigMark(fLine) then 
		getConfigItem fLine
		configArray(getConfigIndex(configKey)) = configValue
		'response.write configKey & " :" & configValue & "<BR>"
	end if 
	response.Flush
Wend
myFile.Close
Set myFile = Nothing
Set Fso = Nothing



%>
<script>
	function chk()
	{
		var str;
		str="";
		
		if (document.mainform.logo.value==""){
			str=str +  "logo图片不能为空" + "\n";
		}
		if (document.mainform.company.value==""){
			str=str +  "公司名称不能为空" + "\n";
		}
		return showInputError(str);
	}
	
	
	function openFileWindow(jsObject,allowExt,allowSize,filePath,fileName){
	var str;
	var fileUrl ="/movaOpps/opp/upload/pub_form.asp?jsObject=" + jsObject + "&allowExt=" + allowExt + "&allowSize=" + allowSize + "&filePath=" + filePath + "&fileName=" + fileName
	str=window.open(fileUrl,"FileWindow","scrollbars=yes,width=450,height=20");  
	str.opener = self;
	if (str.focus) str.focus();
}

function setupTemplate(){

 
		 
				<%
					response.write ReadText_CharSet(application("PRINT_TEMPLATE"),"UTF-16")
				%> 
				//LODOP.PRINT_SETUP(); 
		 
 LODOP.PRINT_DESIGN();


}
  </script>
  

</script>
<form action="config_.asp" method="post" name="mainform" id="mainform" onSubmit="return chk()"> 
<div class="cn_list_title">基本配置</font></div> 
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
	<input type="hidden" name="customer_no" value="<%=session("customerNo")%>">
	<input type="hidden" name="null_id" value="-1">
  <TBODY>
  <TR>
    <TD class=cn_td09 align=right><span class="cn_font02">*</span>登陆页Logo图片:</TD>
    <TD align=left>
			<INPUT name=first_logo type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("FIRST_LOGO"))%>"><button class="cn_button01" type="button" onClick="openFileWindow('document.mainform.first_logo','JPG|GIF|PNG','200','','logo_<%=session("customerNo")%>')">上传附件</button>
			<a href="example_01.psd" target="_blank">参考psd文件下载</a>
    </TD>
  </tr>
  <TR>
    <TD class=cn_td09 align=right><span class="cn_font02">*</span>左上角Logo图片:</TD>
    <TD align=left>
			<INPUT name=logo type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("LOGO"))%>"><button class="cn_button01" type="button" onClick="openFileWindow('document.mainform.logo','JPG|GIF|PNG','200','','logo_<%=session("customerNo")%>')">上传附件</button>
			<a href="example_02.psd" target="_blank">参考psd文件下载</a>
    </TD>
  </tr>
   <tr>
    <TD class=cn_td09 align=right>系统名称:</TD>
    <TD align=left><INPUT name=system_name type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("SYSTEM_NAME"))%>">
		</TD> 
 </tr>
 
  <tr>
    <TD class=cn_td09 align=right>公司名称:</TD>
    <TD align=left><INPUT name=company type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("COMPANY"))%>">
		</TD> 
 </tr>
  
  <tr>
    <TD class=cn_td09 align=right>会话保持时间:</TD>
    <TD align=left><INPUT name=session_timeout type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("SESSION_TIMEOUT")) %>">分钟
		</TD> 
 </tr>
 
 <tr>
    <TD class=cn_td09 align=right>附件路径:</TD>
    <TD align=left><INPUT name=upload_path type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("UPLOAD_PATH")) %>"> 
		</TD> 
 </tr>
 <tr>
    <TD class=cn_td09 align=right>套打打印模板:</TD>
    <TD align=left><INPUT name=print_template type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("PRINT_TEMPLATE")) %>">
    	<button class="cn_button01" type="button" onClick="openFileWindow('document.mainform.print_template','TXT','200','','print_<%=session("customerNo")%>')">上传附件</button>
			<a href="/movaOpps/upfile/print_template.txt" target="_blank">参考打印模板文件下载</a>  &nbsp;&nbsp;|&nbsp;&nbsp; 
			<a href="#" onClick="setupTemplate()">调整模板</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="Lodop6.195.zip" target="_blank">控件下载</a>
		</TD> 
 </tr>
 <tr>
    <TD class=cn_td09 align=right>登录失败连接:</TD>
    <TD align=left><INPUT name=faild_login type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("FAILD_LOGIN")) %>"> 
		</TD> 
 </tr>
 <tr>
    <TD class=cn_td09 align=right>特权角色:</TD>
    <TD align=left><INPUT name=system_role type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("SYSTEM_ROLE")) %>"> 角色名区分大小写
		</TD> 
 </tr>
 
 <tr>
    <TD class=cn_td09 align=right>分页数量:</TD>
    <TD align=left><INPUT name=def_split_page type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("DEF_SPLIT_PAGE")) %>"> 
		</TD> 
 </tr>
 <tr>
    <TD class=cn_td09 align=right>默认分页风格:</TD>
    <TD align=left><INPUT name=def_split_page_style type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("DEF_SPLIT_PAGE_STYLE")) %>"> 可选值为：1 ，2 
		</TD> 
 </tr>
 
 <tr>
    <TD class=cn_td09 align=right>默认日志分隔符:</TD>
    <TD align=left><INPUT name=split_log type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("SPLIT_LOG")) %>"> 
		</TD> 
 </tr>
 
 <tr>
    <TD class=cn_td09 align=right>界面风格:</TD>
    <TD align=left><INPUT name=style type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("STYLE")) %>"> 可选值为：001
		</TD> 
 </tr> 
 <tr>
    <TD class=cn_td09 align=right>是否开启调试:</TD>
    <TD align=left><INPUT name=debug_info type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("DEBUG_INFO")) %>"> 可选值为：True ，False
		</TD> 
 </tr>
 <tr>
    <TD class=cn_td09 align=right>是否开启行调试</TD>
    <TD align=left><INPUT name=debug_line_info type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("DEBUG_LINE_INFO")) %>"> 可选值为：True ，False
		</TD> 
 </tr> 
 <tr>
    <TD class=cn_td09 align=right>是否开启测试:</TD>
    <TD align=left><INPUT name=debug_test type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("DEBUG_TEST")) %>"> 可选值为：True ，False
		</TD> 
 </tr> 
 <tr>
    <TD class=cn_td09 align=right>是否忽略错误:</TD>
    <TD align=left><INPUT name=ignore_error type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("IGNORE_ERROR")) %>"> 可选值为：True ，False
		</TD> 
 </tr> 
  
 <tr>
    <TD align=left class=cn_td09 valign="top" colspan=2>
    <div class="noneStyle"><table  width=100%><tr><td align=center>
    	以下是数据库发送邮件服务</td></tr></table></div>
    </TD>
   </TR>
<tr>
    <TD class=cn_td09 align=right>SMTP服务器网址:</TD>
    <TD align=left><INPUT name=mail_smtp type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("MAIL_SMTP"))%>">
    	 
		</TD> 
 </tr>
 
 <tr>
    <TD class=cn_td09 align=right>发送邮件帐户:</TD>
    <TD align=left><INPUT name=mail_user type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("MAIL_USER"))%>">
    	
		</TD> 
 </tr>
 <tr>
    <TD class=cn_td09 align=right>发送邮件帐户密码:</TD>
    <TD align=left><INPUT name=mail_user_pass type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("MAIL_USER_PASS"))%>">
		</TD> 
 </tr>
  <tr>
    <TD class=cn_td09 align=right>发件人邮件地址:</TD>
    <TD align=left><INPUT name=mail_sender type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("MAIL_SENDER"))%>">
		</TD> 
 </tr>
  <tr>
    <TD class=cn_td09 align=right>发件人名字:</TD>
    <TD align=left><INPUT name=mail_sender_name type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("MAIL_SENDER_NAME"))%>">
		</TD> 
 </tr>
 
 
  <tr>
    <TD align=left class=cn_td09 valign="top" colspan=2>
    <div class="noneStyle"><table  width=100%><tr><td align=center>
    	以下是数据库配置信息，如果修改了配置，请务必进行一次数据库连接测试</td></tr></table></div>
    </TD>
   </TR>
 
  	<tr>
    <TD class=cn_td09 align=right>主机:</TD>
    <TD align=left><INPUT name=db_server type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("DB_SERVER"))%>">
    	这里仅支持MSSQL
		</TD> 
 </tr>
 <tr>
    <TD class=cn_td09 align=right>用户名:</TD>
    <TD align=left><INPUT name=db_uid type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("DB_UID"))%>">
		</TD> 
 </tr>
 <tr>
    <TD class=cn_td09 align=right>密码:</TD>
    <TD align=left><INPUT name=db_pwd type=password size=50 class=cn_input03 value="<%=configArray(getConfigIndex("DB_PWD"))%>">
		</TD> 
 </tr>
 <tr>
    <TD class=cn_td09 align=right>数据库:</TD>
    <TD align=left><INPUT name=db_database type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("DB_DATABASE"))%>">
		</TD> 
 </tr>
  <tr>
    <TD class=cn_td09 align=right></TD>
    <TD align=left>
    	<button class="cn_button01" type="submit" onClick="return chk()">保存</button>
    	<button class="cn_button01" type="button" name="testConnect" id="testConnect" >测试连接</button>
    	<button class="cn_button01" type="reset"   >重置</button>
    	<button class="cn_button01" type="button" onClick="reflash()">更新缓存</button> 如果更新缓存，则当前所做的系统默认信息将进行统一刷新
 		
		</TD> 
 </tr>
 
	</TBODY>	
</table>
</div>
 	 <br> 
 <br>
 <br>
 <br>
  <script>
  	function reflash(){
  		if (confirm("您确定更新缓存吗？\n更新缓存后，所有账户必须重新登录系统才能生效。")){
  			window.location.href="/movaOpps/core/system/cache/cache.asp";
  		}	
  	}
	$(document).ready(function() { 
		$("button[name='testConnect']").click(function() {
    	var ajaxUrl = "/movaOpps/opp/ajax/chkDb.asp?t=<%=getTimestamp()%>&db_server=" + $("input[name='db_server']").val() + "&db_user=" + $("input[name='db_uid']").val() + "&db_pwd=" + $("input[name='db_pwd']").val() + "&db_database=" + $("input[name='db_database']").val();
    	$.ajax({
    		url: ajaxUrl ,
    		type: 'GET',
    		dataType: 'text',
    		timeout: 1000,
    		error: function(){
        	alert('Error loading Text document');
    		},
    		success: function(result){
       	 	alert(result); 
      	}
			});
   	});
 });
	</script>
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" --> 