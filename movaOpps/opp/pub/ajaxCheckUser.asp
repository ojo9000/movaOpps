<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" --> 
<%
opendatabase
	
	'ajax 获取用户名
	Function ajaxGetUser(cUser)
		Dim haveUser
		haveUser = getOnefield("select count(*) from cc_user where archive='F' and login='" & cUser & "'")
		 
			ajaxGetUser = haveUser
		 
	End Function
response.write ajaxGetUser(req("cUser"))
'response.write "CCC:" & req("cUser")
closedatabase
%>