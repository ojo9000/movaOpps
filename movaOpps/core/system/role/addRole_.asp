<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<% chkAccountStr "roleSys" %>

<%
'debug(1)
'Dim Form£º
Dim FLD_object,FLD_rolename,FLD_rolecode,FLD_description,FLD_firstPage,FLD_submit
Dim keyid
'Get Post Param:
FLD_rolename = req("rolename")
FLD_rolecode = req("rolecode")
FLD_description = req("description")
FLD_firstPage = req("firstPage")


'Get Get Param:


'DataBase Coding....:
openDatabase
Sql = "Select * From mova_role Where mova_roleid is null"
movaRS.open Sql,conn,1,3
movaRS.addnew
'RS seting...:
movaRS("rolename")= FLD_rolename
movaRS("rolecode")= FLD_rolecode
movaRS("description")= FLD_description
movaRS("firstPage")= FLD_firstPage


movaRS("createdate") = Now
movaRS("createUser") = cint(session("userid"))
movaRS("modifyDate") = Now
movaRS("modifyUser") = cint(session("userid"))
movaRS.Update
keyid = movaRS("mova_roleid")
movaRS.close


closeDatabase
gotoUrl "modiRole.asp?mova_roleid=" & keyid 
%>