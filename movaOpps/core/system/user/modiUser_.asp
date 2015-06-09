<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/md5.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<% chkAccountStr "userSys" %>
<%
' 	debug(1)
%>

<%
	'Dim Form：
	Dim FLD_password,FLD_sex,FLD_login,FLD_department,FLD_submit,FLD_username,FLD_phone,FLD_mail,FLD_mova_userid,FLD_status
	Dim FLD_mova_roleid,FLD_mac_addr,FLD_opp_type,FLD_param1,FLD_param2,FLD_param3,FLD_qq,FLD_team_id
	Dim sqlString,keyid
	'Get Post Param:
	FLD_password = md5(req("password"))
	FLD_mova_userid= req("mova_userid")
	FLD_sex = req("sex")
	FLD_login = req("login")
	FLD_department = req("department")
	FLD_submit = req("submit")
	FLD_username = req("username")
	FLD_phone = req("phone")
	FLD_mail = req("mail")
	FLD_status= req("status")
	FLD_mova_roleid= req("mova_roleid")
	FLD_mac_addr = req("mac_addr")
	
	FLD_opp_type = req("opp_type")
	FLD_param1= req("param1")
	FLD_param2= req("param2")
	FLD_param3 = req("param3")
	FLD_qq = req("qq")
	  


	if req("team_id")="" then
		FLD_team_id = 0
	else
		FLD_team_id = cint(req("team_id"))
	end if 
	FLD_mova_roleid= cint(FLD_mova_roleid)
	
	
	'Get Get Param:
	
	
	'DataBase Coding....:
	openDatabase
	
	sqlString = "select * from mova_user where login='" & FLD_login & "' and mova_userid<>" & FLD_mova_userid
	'response.write sqlString
	set movaRS1=conn.execute( sqlString) 
	if not (movaRS1.eof or movaRS1.bof) then
		closeDatabase
		msgbox "该用户已经存在","modiUser.asp?mova_userid=" & FLD_mova_userid 
		response.end
	 
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
	movaRS("sex")= FLD_sex
	movaRS("login")= FLD_login
	movaRS("department")= FLD_department
	movaRS("username")= FLD_username
	movaRS("phone")= FLD_phone
	movaRS("mail")= FLD_mail
	movaRS("status")= FLD_status
	movaRS("mova_roleid")= FLD_mova_roleid
	if isAdministrator() then 
		movaRS("team_id") = FLD_team_id
	end if 
	
	movaRS("opp_type")=FLD_opp_type
	movaRS("param1")=FLD_param1
	movaRS("param2")=FLD_param2
	movaRS("param3")=FLD_param3
	movaRS("qq")=FLD_qq

  movaRS("mac_addr")=FLD_mac_addr
	movaRS("modifyDate") = Now
	movaRS("modifyUser") = cint(session("userid"))
	movaRS.Update
	keyid = movaRS("mova_userid")
	
	closeDatabase 
	
	gotoUrl "modiUser.asp?mova_userid=" & keyid
%>