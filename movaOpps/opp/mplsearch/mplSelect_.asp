<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->

<%
  'debug 1   
  'Dim Form£º
Dim FLD_archive,FLD_object,FLD_field_code,FLD_mu_mpl_select_id,FLD_mu_mpl_search_id,FLD_field_name,FLD_allow_count,FLD_sort_no
'Get Post Param:
FLD_archive = req("archive")
FLD_field_code = req("field_code")
FLD_mu_mpl_select_id = req("mu_mpl_select_id")
FLD_mu_mpl_search_id = req("mu_mpl_search_id")
FLD_field_name = req("field_name")
FLD_allow_count = req("allow_count")
FLD_sort_no = req("sort_no")


'Get Get Param:


'DataBase Coding....:
Dim sqlString
sqlString = "Select * From mu_mpl_select Where mu_mpl_select_id ="&FLD_mu_mpl_select_id
executeQuery conn,movaRS,sqlString,1,3
if movaRS.bof or movaRS.eof then 
	movaRS.addnew
	movaRS("createdate") = Now
	movaRS("createUser") = cint(session("userid"))
end if 
'RS seting...:
movaRS("archive")= FLD_archive
movaRS("field_code")= FLD_field_code
movaRS("mu_mpl_search_id")= cint(FLD_mu_mpl_search_id)
movaRS("field_name")= FLD_field_name
movaRS("allow_count")= FLD_allow_count
movaRS("sort_no")= cint(FLD_sort_no)



movaRS("modifyDate") = Now
movaRS("modifyUser") = cint(session("userid"))
movaRS.Update
Dim keyid

keyid = movaRS("mu_mpl_select_id")
movaRS.close

gotoURL "./modifyMpl.asp?id=" & FLD_mu_mpl_search_id

 
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
