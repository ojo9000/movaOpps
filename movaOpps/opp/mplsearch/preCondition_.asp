<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->

<%
 ' debug 1 


 
  
 
 'Dim Form£º
Dim FLD_archive,FLD_object,FLD_field_code,FLD_mu_mpl_pre_condition_id,FLD_mu_mpl_search_id,FLD_field_name,FLD_search_type
Dim FLD_sort_no,FLD_is_Numeric,sqlString
'Get Post Param:
FLD_archive = req("archive")
FLD_field_code = req("field_code")
FLD_mu_mpl_pre_condition_id = req("mu_mpl_pre_condition_id")
FLD_mu_mpl_search_id = req("mu_mpl_search_id")
FLD_field_name = req("field_name")
FLD_search_type = req("search_type")
FLD_sort_no = req("sort_no")
FLD_is_Numeric = isNumericField(req("object_id"),FLD_field_code) 

'Get Get Param:


'DataBase Coding....:
sqlString = "Select * From mu_mpl_pre_condition Where archive='F' and mu_mpl_pre_condition_id ="& FLD_mu_mpl_pre_condition_id
executeQuery conn,movaRS,sqlString,1,3
if movaRs.eof or movaRS.bof then 
	movaRS.addnew
	movaRS("createdate") = Now
	movaRS("createUser") = cint(session("userid"))
end if 

'RS seting...:
movaRS("archive")= FLD_archive
movaRS("field_code")= FLD_field_code
movaRS("mu_mpl_search_id")= cint(FLD_mu_mpl_search_id)
movaRS("sort_no") = cint(FLD_sort_no)
movaRS("field_name")= FLD_field_name
movaRS("search_type")= FLD_search_type
if FLD_is_Numeric<>"" then 
	movaRS("is_Numeric") = FLD_is_Numeric
end if 


movaRS("modifyDate") = Now
movaRS("modifyUser") = cint(session("userid"))
movaRS.Update
Dim keyid
keyid = movaRS("mu_mpl_pre_condition_id")
movaRS.close

gotoURL "./modifyMpl.asp?id=" & FLD_mu_mpl_search_id

 
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
