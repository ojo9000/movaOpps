<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" --> 
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/core/pub/setup.asp" -->
<% Response.Flush %>
<script>
	function chk()
	{
		var str;
		str="";
		
		if (document.mainform.db_server.value==""){
			str=str +  "������IP��������" + "\n";
		}
		if (document.mainform.db_uid.value==""){
			str=str +  "�û�����������" + "\n";
		}
		if (document.mainform.db_pwd.value==""){
			str=str +  "�����������" + "\n";
		}
		if (document.mainform.db_database.value==""){
			str=str +  "���ݿ��������" + "\n";
		}
		if (document.mainform.db_schema.value==""){
			str=str +  "SCHEMA��������" + "\n";
		}
		
		if (str!=""){
			str="�Բ����������벻��ȷ!\n---------------------------------\n" + str;
			alert(str);
			return false;
		}else {
			return true;
		}
	}
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>�ޱ����ĵ�</title>
		<link href="<%=movaStyle%>/style.css" rel="stylesheet" type="text/css" />
 
		<script type="text/javascript">
		</script>
	</head>
	<body>
		<div class="cn_header">
			<div class="cn_logo"><img src="<%=application("LOGO")%>" /></div>
<div class="cn_header_right">
				<dl>
					 
				 </dl>
				 <nobr>   </nobr>
			</div> 
		</div>
 
<DIV class=cn_main>
<div class="cn_list_title">�ڶ������������ݿ�</div> 
<div class="cn_list_title_right">׿��ħ��ҵ��ϵͳ(<%=application("VERSION")%>)��װ</div>
<DIV class=cn_col01>
<%
On Error Resume Next 

conn_sql = ""
conn_sql = conn_sql & "Provider=SQLOLEDB;"
conn_sql = conn_sql & "User ID=" & request("db_uid") & ";"
conn_sql = conn_sql & "Password=" & request("db_pwd") & ";"
conn_sql = conn_sql & "Initial Catalog=" & request("db_database") & ";"
conn_sql = conn_sql & "Data Source=" & request("db_server") & ";" 
conn_sql = trim(conn_sql)		
Set Conn  = Server.CreateObject("ADODB.Connection") 
conn.Open	conn_sql 

if   Err.number <> 0   then 
    response.write "���ݿ�������ô���<br>" 
    response.write "����ԭ��" & Err.description  & "<br>"
    response.write "<a href='#' onclick='history.back(-1)'><font color=blue>������һ��</fon</a>"
  	response.end
end if

	configArray(getConfigIndex("logo")) = ""
	configArray(getConfigIndex("system_name")) =""
	configArray(getConfigIndex("company")) = "" 
	configArray(getConfigIndex("session_timeout")) =""
	configArray(getConfigIndex("upload_path")) = ""
	configArray(getConfigIndex("faild_login")) =""
	configArray(getConfigIndex("system_role")) = "" 
	configArray(getConfigIndex("def_split_page")) = "" 
	configArray(getConfigIndex("def_split_page_style")) = ""
	configArray(getConfigIndex("split_log")) = ""
	configArray(getConfigIndex("style")) = ""
	configArray(getConfigIndex("debug_info")) = ""
	configArray(getConfigIndex("debug_line_info")) = ""
	configArray(getConfigIndex("debug_test")) =""
	configArray(getConfigIndex("ignore_error")) = ""
	configArray(getConfigIndex("db_server")) = req("db_server")  
	configArray(getConfigIndex("db_uid")) = req("db_uid")  
	configArray(getConfigIndex("db_pwd")) = req("db_pwd")  
	configArray(getConfigIndex("db_database")) = req("db_database")
	configArray(getConfigIndex("db_schema")) = req("db_schema") 
	configArray(getConfigIndex("null_id")) = ""
	writeConfig
	application("db_server")=req("db_server")  
	application("db_uid")=req("db_uid")
	application("db_pwd")=req("db_pwd")
	application("db_database")=req("db_database")
	application("db_schema")=req("db_schema")
	

executeSQLFile conn,"/movaOpps/install/install.sql"
response.write "1�����ݿ���Ѿ�����" & "<BR>"
executeSQLFile conn,"/movaOpps/install/init1.sql"
executeSQLFile conn,"/movaOpps/install/init2.sql"

response.write "2�������Ѿ���ʼ��" & "<BR>"
response.write "<hr>��ϲ�㣬�Ѿ��ɹ���װ׿��ħ��ҵ��ϵͳ��" & "<BR>"
response.write "<font color=red>������ɾ��/movaOpps/installĿ¼�������ļ����Ա�֤ϵͳ��ȫ��</font>" & "<BR>"
response.write "<a href='/movaOpps/'>�����½ϵͳ</a>&nbsp;&nbsp;&nbsp;ϵͳ����Ա�ʻ���admin Ĭ�����룺111111<BR>"


if conn.State <>0 then
	conn.close
end if 

%>
</DIV>
</DIV>

<%
	 'executeSQLFile conn,"/movaOpps/install/install.sql"
	 
		 
%>
 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
