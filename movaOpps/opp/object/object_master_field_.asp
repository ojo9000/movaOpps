<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->

<%
'debug 1
'Dim Form£º 
'--------------------------------------------------------------------------------
'Dim Form£º
Dim FLD_object_id,FLD_archive,FLD_object,FLD_field_id,FLD_sort_no
'Get Post Param:
FLD_object_id = req("object_id")
FLD_archive = req("archive")
FLD_field_id = req("field_id")
FLD_sort_no = req("sort_no")
FLD_mu_object_master_field_id = req("mu_object_master_field_id")

'Get Get Param:

if FLD_field_id&"" <>"" then 
	'DataBase Coding....:
	if FLD_mu_object_master_field_id="" then  
		sqlString = "Select * From mu_object_master_field Where mu_object_master_field_id is null"
	else
		sqlString = "Select * From mu_object_master_field Where mu_object_master_field_id ="&FLD_mu_object_master_field_id
	end if 
	executeQuery conn,movaRS,sqlString,1,3
	if movaRS.eof or movaRS.bof then 
		movaRS.addnew
		movaRS("createdate") = Now
		movaRS("createUser") = cint(session("userid"))
		movaRS("object_id") = cint(FLD_object_id)
		movaRS("owner")= session("customerNo")
	end if 
	'RS seting...:
	movaRS("archive")= FLD_archive
	movaRS("field_id")= cint(FLD_field_id)
	movaRS("sort_no")= FLD_sort_no
	
	
	movaRS("modifyDate") = Now
	movaRS("modifyUser") = cint(session("userid"))
	movaRS.Update
	keyid = movaRS("mu_object_master_field_id")
	movaRS.close
end if 
gotoURL "./objectAdv.asp?id=" & FLD_object_id
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
