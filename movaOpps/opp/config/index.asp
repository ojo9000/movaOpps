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
			str=str +  "logoͼƬ����Ϊ��" + "\n";
		}
		if (document.mainform.company.value==""){
			str=str +  "��˾���Ʋ���Ϊ��" + "\n";
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
<div class="cn_list_title">��������</font></div> 
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
	<input type="hidden" name="customer_no" value="<%=session("customerNo")%>">
	<input type="hidden" name="null_id" value="-1">
  <TBODY>
  <TR>
    <TD class=cn_td09 align=right><span class="cn_font02">*</span>��½ҳLogoͼƬ:</TD>
    <TD align=left>
			<INPUT name=first_logo type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("FIRST_LOGO"))%>"><button class="cn_button01" type="button" onClick="openFileWindow('document.mainform.first_logo','JPG|GIF|PNG','200','','logo_<%=session("customerNo")%>')">�ϴ�����</button>
			<a href="example_01.psd" target="_blank">�ο�psd�ļ�����</a>
    </TD>
  </tr>
  <TR>
    <TD class=cn_td09 align=right><span class="cn_font02">*</span>���Ͻ�LogoͼƬ:</TD>
    <TD align=left>
			<INPUT name=logo type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("LOGO"))%>"><button class="cn_button01" type="button" onClick="openFileWindow('document.mainform.logo','JPG|GIF|PNG','200','','logo_<%=session("customerNo")%>')">�ϴ�����</button>
			<a href="example_02.psd" target="_blank">�ο�psd�ļ�����</a>
    </TD>
  </tr>
   <tr>
    <TD class=cn_td09 align=right>ϵͳ����:</TD>
    <TD align=left><INPUT name=system_name type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("SYSTEM_NAME"))%>">
		</TD> 
 </tr>
 
  <tr>
    <TD class=cn_td09 align=right>��˾����:</TD>
    <TD align=left><INPUT name=company type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("COMPANY"))%>">
		</TD> 
 </tr>
  
  <tr>
    <TD class=cn_td09 align=right>�Ự����ʱ��:</TD>
    <TD align=left><INPUT name=session_timeout type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("SESSION_TIMEOUT")) %>">����
		</TD> 
 </tr>
 
 <tr>
    <TD class=cn_td09 align=right>����·��:</TD>
    <TD align=left><INPUT name=upload_path type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("UPLOAD_PATH")) %>"> 
		</TD> 
 </tr>
 <tr>
    <TD class=cn_td09 align=right>�״��ӡģ��:</TD>
    <TD align=left><INPUT name=print_template type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("PRINT_TEMPLATE")) %>">
    	<button class="cn_button01" type="button" onClick="openFileWindow('document.mainform.print_template','TXT','200','','print_<%=session("customerNo")%>')">�ϴ�����</button>
			<a href="/movaOpps/upfile/print_template.txt" target="_blank">�ο���ӡģ���ļ�����</a>  &nbsp;&nbsp;|&nbsp;&nbsp; 
			<a href="#" onClick="setupTemplate()">����ģ��</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="Lodop6.195.zip" target="_blank">�ؼ�����</a>
		</TD> 
 </tr>
 <tr>
    <TD class=cn_td09 align=right>��¼ʧ������:</TD>
    <TD align=left><INPUT name=faild_login type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("FAILD_LOGIN")) %>"> 
		</TD> 
 </tr>
 <tr>
    <TD class=cn_td09 align=right>��Ȩ��ɫ:</TD>
    <TD align=left><INPUT name=system_role type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("SYSTEM_ROLE")) %>"> ��ɫ�����ִ�Сд
		</TD> 
 </tr>
 
 <tr>
    <TD class=cn_td09 align=right>��ҳ����:</TD>
    <TD align=left><INPUT name=def_split_page type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("DEF_SPLIT_PAGE")) %>"> 
		</TD> 
 </tr>
 <tr>
    <TD class=cn_td09 align=right>Ĭ�Ϸ�ҳ���:</TD>
    <TD align=left><INPUT name=def_split_page_style type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("DEF_SPLIT_PAGE_STYLE")) %>"> ��ѡֵΪ��1 ��2 
		</TD> 
 </tr>
 
 <tr>
    <TD class=cn_td09 align=right>Ĭ����־�ָ���:</TD>
    <TD align=left><INPUT name=split_log type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("SPLIT_LOG")) %>"> 
		</TD> 
 </tr>
 
 <tr>
    <TD class=cn_td09 align=right>������:</TD>
    <TD align=left><INPUT name=style type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("STYLE")) %>"> ��ѡֵΪ��001
		</TD> 
 </tr> 
 <tr>
    <TD class=cn_td09 align=right>�Ƿ�������:</TD>
    <TD align=left><INPUT name=debug_info type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("DEBUG_INFO")) %>"> ��ѡֵΪ��True ��False
		</TD> 
 </tr>
 <tr>
    <TD class=cn_td09 align=right>�Ƿ����е���</TD>
    <TD align=left><INPUT name=debug_line_info type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("DEBUG_LINE_INFO")) %>"> ��ѡֵΪ��True ��False
		</TD> 
 </tr> 
 <tr>
    <TD class=cn_td09 align=right>�Ƿ�������:</TD>
    <TD align=left><INPUT name=debug_test type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("DEBUG_TEST")) %>"> ��ѡֵΪ��True ��False
		</TD> 
 </tr> 
 <tr>
    <TD class=cn_td09 align=right>�Ƿ���Դ���:</TD>
    <TD align=left><INPUT name=ignore_error type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("IGNORE_ERROR")) %>"> ��ѡֵΪ��True ��False
		</TD> 
 </tr> 
  
 <tr>
    <TD align=left class=cn_td09 valign="top" colspan=2>
    <div class="noneStyle"><table  width=100%><tr><td align=center>
    	���������ݿⷢ���ʼ�����</td></tr></table></div>
    </TD>
   </TR>
<tr>
    <TD class=cn_td09 align=right>SMTP��������ַ:</TD>
    <TD align=left><INPUT name=mail_smtp type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("MAIL_SMTP"))%>">
    	 
		</TD> 
 </tr>
 
 <tr>
    <TD class=cn_td09 align=right>�����ʼ��ʻ�:</TD>
    <TD align=left><INPUT name=mail_user type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("MAIL_USER"))%>">
    	
		</TD> 
 </tr>
 <tr>
    <TD class=cn_td09 align=right>�����ʼ��ʻ�����:</TD>
    <TD align=left><INPUT name=mail_user_pass type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("MAIL_USER_PASS"))%>">
		</TD> 
 </tr>
  <tr>
    <TD class=cn_td09 align=right>�������ʼ���ַ:</TD>
    <TD align=left><INPUT name=mail_sender type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("MAIL_SENDER"))%>">
		</TD> 
 </tr>
  <tr>
    <TD class=cn_td09 align=right>����������:</TD>
    <TD align=left><INPUT name=mail_sender_name type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("MAIL_SENDER_NAME"))%>">
		</TD> 
 </tr>
 
 
  <tr>
    <TD align=left class=cn_td09 valign="top" colspan=2>
    <div class="noneStyle"><table  width=100%><tr><td align=center>
    	���������ݿ�������Ϣ������޸������ã�����ؽ���һ�����ݿ����Ӳ���</td></tr></table></div>
    </TD>
   </TR>
 
  	<tr>
    <TD class=cn_td09 align=right>����:</TD>
    <TD align=left><INPUT name=db_server type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("DB_SERVER"))%>">
    	�����֧��MSSQL
		</TD> 
 </tr>
 <tr>
    <TD class=cn_td09 align=right>�û���:</TD>
    <TD align=left><INPUT name=db_uid type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("DB_UID"))%>">
		</TD> 
 </tr>
 <tr>
    <TD class=cn_td09 align=right>����:</TD>
    <TD align=left><INPUT name=db_pwd type=password size=50 class=cn_input03 value="<%=configArray(getConfigIndex("DB_PWD"))%>">
		</TD> 
 </tr>
 <tr>
    <TD class=cn_td09 align=right>���ݿ�:</TD>
    <TD align=left><INPUT name=db_database type=text size=50 class=cn_input03 value="<%=configArray(getConfigIndex("DB_DATABASE"))%>">
		</TD> 
 </tr>
  <tr>
    <TD class=cn_td09 align=right></TD>
    <TD align=left>
    	<button class="cn_button01" type="submit" onClick="return chk()">����</button>
    	<button class="cn_button01" type="button" name="testConnect" id="testConnect" >��������</button>
    	<button class="cn_button01" type="reset"   >����</button>
    	<button class="cn_button01" type="button" onClick="reflash()">���»���</button> ������»��棬��ǰ������ϵͳĬ����Ϣ������ͳһˢ��
 		
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
  		if (confirm("��ȷ�����»�����\n���»���������˻��������µ�¼ϵͳ������Ч��")){
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