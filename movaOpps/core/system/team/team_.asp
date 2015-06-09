<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<% chkAccountStr "roleSys" %>

<%
'debug(1)
'Dim Form£º
Dim FLD_object,FLD_rolename,FLD_rolecode,FLD_description,FLD_firstPage,FLD_submit
Dim FLD_team_name,FLD_status,FLD_team_id
'Get Post Param:
FLD_team_name = req("team_name")
FLD_status = req("status")
FLD_team_id= req("team_id")
'Get Get Param:


'DataBase Coding....:
openDatabase
Sql = "Select * From mova_team Where team_id =" & FLD_team_id
movaRS.open Sql,conn,1,3
if movaRS.eof or movaRS.bof then 
	movaRS.addnew
	movaRS("createdate") = Now
	movaRS("createUser") = cint(session("userid"))
	FLD_rolecode="Active"
end if 
'RS seting...:
movaRS("team_name")= FLD_team_name
movaRS("status")= FLD_status

movaRS("modifyDate") = Now
movaRS("modifyUser") = cint(session("userid"))
movaRS.Update
 


closeDatabase



gotoUrl "listTeam.asp"
%>