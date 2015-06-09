<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/md5.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<% chkAccountStr "userSys" %>
<%
'	debug(1)
%>

<%
	'Dim Form：
	Dim FLD_object,FLD_password,FLD_repassword,FLD_sex,FLD_login,FLD_department,FLD_submit,FLD_username,FLD_phone,FLD_mail,FLD_mova_roleid,FLD_status
	Dim FLD_mac_addr,FLD_opp_type,FLD_param1,FLD_param2,FLD_param3,FLD_qq,FLD_team_id,FLD_customerNo,xkeyid
	Dim sqlString,keyid
	
	'Get Post Param:
	FLD_password = md5(req("password"))
	FLD_sex = req("sex")
	FLD_login = req("login")
	FLD_department = req("department")
	FLD_submit = req("submit")
	FLD_username = req("username")
	FLD_phone = req("phone")
	FLD_mail = req("mail")
	
	FLD_mova_roleid = cint(req("mova_roleid"))
	if req("team_id")="" then
		FLD_team_id = 0
	else
		FLD_team_id = cint(req("team_id"))
	end if 
	
	FLD_customerNo = session("customerNo")
	'Get Get Param:
	
	
	'DataBase Coding....:
	openDatabase
	Sql = "Select * From mova_user Where mova_userid is null"
	movaRS.open Sql,conn,1,3
	movaRS.addnew
	'RS seting...:

	movaRS("password")= FLD_password
	movaRS("sex")= FLD_sex
	movaRS("login")= FLD_login
	movaRS("department")= FLD_department
	movaRS("username")= FLD_username
	movaRS("phone")= FLD_phone
	movaRS("mail")= FLD_mail
	movaRS("mova_roleid") = FLD_mova_roleid
	movaRS("status") = "T"
	movaRS("isDel") = "F"
	if isAdministrator() then 
		movaRS("team_id") = FLD_team_id
	else
		movaRS("team_id") = cint(session("team"))
	end if
	
	movaRS("customer_no")=FLD_customerNo


	sqlString = "select * from mova_user where login='" & FLD_login & "'"
	set movaRS1=conn.execute(sqlString)
	if not (movaRS1.eof or movaRS1.bof) then
		closeDatabase
		msgbox "该用户已经存在","addUser.asp"
		response.end
	end if

	movaRS("createdate") = Now
	movaRS("createUser") = cint(session("userid"))
	movaRS("modifyDate") = Now
	movaRS("modifyUser") = cint(session("userid"))
	movaRS.Update
	xkeyid = movaRS("mova_userid")
	
	closeDatabase 
	
	gotoUrl "listUser.asp"
%>