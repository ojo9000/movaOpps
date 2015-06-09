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
			str=str +  "服务器IP必须输入" + "\n";
		}
		if (document.mainform.db_uid.value==""){
			str=str +  "用户名必须输入" + "\n";
		}
		if (document.mainform.db_pwd.value==""){
			str=str +  "密码必须输入" + "\n";
		}
		if (document.mainform.db_database.value==""){
			str=str +  "数据库必须输入" + "\n";
		}
		if (document.mainform.db_schema.value==""){
			str=str +  "SCHEMA必须输入" + "\n";
		}
		
		if (str!=""){
			str="对不起，您的输入不正确!\n---------------------------------\n" + str;
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
		<title>无标题文档</title>
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
<div class="cn_list_title">第二步：配置数据库</div> 
<div class="cn_list_title_right">卓信魔方业务系统(<%=application("VERSION")%>)安装</div>
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
    response.write "数据库参数配置错误！<br>" 
    response.write "错误原因：" & Err.description  & "<br>"
    response.write "<a href='#' onclick='history.back(-1)'><font color=blue>返回上一步</fon</a>"
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
response.write "1、数据库表已经创建" & "<BR>"
executeSQLFile conn,"/movaOpps/install/init1.sql"
executeSQLFile conn,"/movaOpps/install/init2.sql"

response.write "2、数据已经初始化" & "<BR>"
response.write "<hr>恭喜你，已经成功安装卓信魔方业务系统。" & "<BR>"
response.write "<font color=red>现在请删除/movaOpps/install目录下所有文件，以保证系统安全。</font>" & "<BR>"
response.write "<a href='/movaOpps/'>点击登陆系统</a>&nbsp;&nbsp;&nbsp;系统管理员帐户：admin 默认密码：111111<BR>"


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
