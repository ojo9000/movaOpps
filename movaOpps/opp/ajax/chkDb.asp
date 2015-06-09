<%
Option Explicit
On Error Resume Next 

dim conn_sql 
Dim conn
conn_sql = ""
conn_sql = conn_sql & "Provider=SQLOLEDB;"
conn_sql = conn_sql & "User ID=" & request("db_user") & ";"
conn_sql = conn_sql & "Password=" & request("db_pwd") & ";"
conn_sql = conn_sql & "Initial Catalog=" & request("db_database") & ";"
conn_sql = conn_sql & "Data Source=" & request("db_server") & ";" 
conn_sql = trim(conn_sql)		
Set Conn  = Server.CreateObject("ADODB.Connection") 
conn.Open	conn_sql 
if conn.State <>0 then
	conn.close
end if 
if   Err.number <> 0   then 
    response.write "数据库参数配置错误！" 
else
		response.write "数据库参数配置正确！"
end if
%> 