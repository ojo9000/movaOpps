<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->

<%
'debug 1   
'Dim Form£º
Dim FLD_archive,FLD_object,FLD_field_code,FLD_mu_mpl_condition_id,FLD_mu_mpl_search_id,FLD_field_name,FLD_right_bracket,FLD_and_or,FLD_left_bracket,FLD_matching_value,FLD_sort_no,FLD_condition,FLD_is_Numeric
'Get Post Param:
FLD_archive = req("archive")
FLD_field_code = req("field_code")
FLD_mu_mpl_condition_id = req("mu_mpl_condition_id")
FLD_mu_mpl_search_id = req("mu_mpl_search_id")
FLD_field_name = req("field_name")
FLD_right_bracket = req("right_bracket")
FLD_and_or = req("and_or")
FLD_left_bracket = req("left_bracket")
FLD_matching_value = req("matching_value")
FLD_sort_no = req("sort_no")
FLD_condition = req("condition")
FLD_is_Numeric = isNumericField(req("object_id"),req("field_code")) 

'Get Get Param:
Dim sqlString

'DataBase Coding....:
sqlString = "Select * From mu_mpl_condition Where mu_mpl_condition_id ="& FLD_mu_mpl_condition_id
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
movaRS("field_name")= FLD_field_name
movaRS("right_bracket")= FLD_right_bracket
movaRS("and_or")= FLD_and_or
movaRS("left_bracket")= FLD_left_bracket
movaRS("matching_value")= FLD_matching_value
movaRS("sort_no")= cint(FLD_sort_no)
movaRS("condition")= FLD_condition
if FLD_is_Numeric<>"" then 
	movaRS("is_Numeric") = FLD_is_Numeric
end if 


Dim keyid
movaRS("modifyDate") = Now
movaRS("modifyUser") = cint(session("userid"))
movaRS.Update
keyid = movaRS("mu_mpl_condition_id")
movaRS.close

gotoURL "./modifyMpl.asp?id=" & FLD_mu_mpl_search_id

 
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
