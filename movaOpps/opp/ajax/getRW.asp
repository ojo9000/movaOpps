<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<%
'http://127.0.0.1:85/movaOpps/opp/ajax/getRW.asp?id=�������
%>
<%
'������������ж��Ƿ����������
'���������  id

Dim  rw_no
rw_no= req("id")  & "" 
 
	sqlString = "select count(*) as haveError from mu_OPP20 where opp_no='"&rw_no&"'  and vk =''" 
	 
	executeQuery conn,movaRS,sqlString,1,1
	response.write movaRS("haveError")
	movaRS.close 
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->