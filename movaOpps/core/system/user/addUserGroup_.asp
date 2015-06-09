<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<%
	Dim insertSQL
	insertSQL = "insert into mova_user_group (mova_userid,group_id,createdate,createuser) values ( " & req("mova_userid") & "," & req("group") & ",getdate()," & session("userid") & ")"
	
	
	executeUpdate conn,insertSQL
	gotoURL "modiUser.asp?mova_userid=" & req("mova_userid")
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->

