<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/md5.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<% chkAccountStr "info_User" %>
<%
' 	debug(1)
%>

<%
	'Dim Form：
	Dim FLD_password,FLD_sex,FLD_login,FLD_department,FLD_submit,FLD_username,FLD_phone,FLD_mail,FLD_mova_userid,FLD_status
	Dim sqlString,keyid
	'Get Post Param:
	FLD_password = md5(req("password"))
	FLD_mova_userid= session("userid")
	FLD_username = req("username")
	FLD_phone = req("phone")
	FLD_mail = req("mail")
	FLD_login = req("login")
	
	
	'Get Get Param:
	
	
	'DataBase Coding....:
	openDatabase
	
	sqlString = "select * from mova_user where login='" & FLD_login & "' and mova_userid<>" & FLD_mova_userid
	'response.write sqlString
	set movaRS1=conn.execute( sqlString) 
	if not (movaRS1.eof or movaRS1.bof) then
		closeDatabase
		msgbox "该用户已经存在","modiUser.asp?mova_userid=" & FLD_mova_userid 
	 
	 
	end if
 
	
	Sql = "Select * From mova_user Where mova_userid =" & FLD_mova_userid
	if not isAdministrator() then 
				Sql = Sql & " and team_id=" & session("team") 
	end if 
	Set movaRS = Server.CreateObject("ADODB.recordset")
	movaRS.open Sql,conn,1,3
	'RS seting...:
	if not ( req("password")="" or isNull(req("password")) )then
		movaRS("password")= FLD_password
	end if 
	movaRS("username")= FLD_username
	movaRS("phone")= FLD_phone
	movaRS("mail")= FLD_mail
	movaRS("modifyDate") = Now
	movaRS("modifyUser") = cint(session("userid"))
	movaRS.Update
	keyid = movaRS("mova_userid")
	
	closeDatabase 
	
 	gotoUrl "./"
%>