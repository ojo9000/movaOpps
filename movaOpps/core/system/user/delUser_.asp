<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<% chkAccountStr "userSys" %>
<%
'debug(1)
dim keyid 

keyid = req("mova_userid")
if keyid<>"" then
	
	opendatabase
	
	sql = "update mova_user set isDel='T' where mova_userid=" & keyid
	conn.execute(sql)
	
	closeDatabase
end if 
gotoUrl "listUser.asp"
%>