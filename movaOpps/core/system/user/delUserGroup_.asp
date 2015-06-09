<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<%
	Dim updateSQL
	updateSQL = "delete from mova_user_group where group_id = " & req("gid")
	
	executeUpdate conn,updateSQL
	gotoURL "modiUser.asp?mova_userid=" & req("uid")
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->

