<% 
closeDatabase
If Err.Number <> 0 Then 
	response.write "<hr size=1>>>ҳ��ִ���д�������ϵ����Ա����<<<br>"
end if 
response.write getDebug() 
%>