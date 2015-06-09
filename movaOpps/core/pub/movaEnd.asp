<% 
closeDatabase
If Err.Number <> 0 Then 
	response.write "<hr size=1>>>页面执行有错误，请联系管理员调试<<<br>"
end if 
response.write getDebug() 
%>