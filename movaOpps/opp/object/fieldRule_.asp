<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->

<%
'debug 1
'Dim Form£º

'Get Get Param:

FLD_object_id=getParamID(req("object_id"))
FLD_field_id = req("field_id")
FLD_con_object_rule_id=req("object_rule_id")
FLD_con_role = req("con_role")
FLD_con_field = req("con_field")
FLD_con_value = req("con_value")
FLD_con_edit = req("con_edit")
FLD_con_delete = req("con_delete")
FLD_archive = req("archive")
FLD_type = req("type")

'DataBase Coding....:
sqlString = "Select * From mu_object_rule Where object_rule_id =" & FLD_con_object_rule_id
response.write sqlString 
executeQuery conn,movaRS,sqlString,1,3

if movaRS.eof or movaRS.bof  then
	movaRS.addnew
	movaRS("object_id") = FLD_object_id
	movaRS("type") = FLD_type
	movaRS("createdate") = Now
	movaRS("createUser") = cint(session("userid"))
end if 
	movaRS("con_role")= FLD_con_role
	movaRS("con_field")= FLD_con_field
	movaRS("con_value")= FLD_con_value
	movaRS("con_edit")= FLD_con_edit
	movaRS("con_delete")= FLD_con_delete
	
	movaRS("archive")=FLD_archive
	
movaRS("modifyDate") = Now
movaRS("modifyUser") = cint(session("userid"))

movaRS.Update 

 gotourl "field.asp?objectId="& FLD_object_id & "&id=" & FLD_field_id
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
