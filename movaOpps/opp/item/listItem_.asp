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
Dim FLD_item_id,FLD_id,FLD_txt,FLD_item_code,FLD_sort_no
Dim sqlString
FLD_item_id=getParamID(req("item_id"))
FLD_id=getParamID(req("id"))
FLD_txt = req("txt")
FLD_item_code = req("item_code")

FLD_sort_no= getParamID(req("sort_no"))

'DataBase Coding....:
sqlString = "Select * From mu_item_list Where owner='" &  session("customerNo") &"' and  item_list_id=" & FLD_id
executeQuery conn,movaRS,sqlString,1,3

if movaRS.eof or movaRS.bof  then
	movaRS.addnew
	movaRS("item_id") = FLD_item_id
	movaRS("owner")= session("customerNo")
	movaRS("createdate") = Now
	movaRS("createUser") = cint(session("userid"))
	movaRS("archive")="F"
end if 
'RS seting...: 
movaRS("txt")= FLD_txt
movaRS("sort_no")=FLD_sort_no
movaRS("item_code") = FLD_item_code
movaRS("modifyDate") = Now
movaRS("modifyUser") = cint(session("userid"))


if req("del") ="T" then
	movaRS("archive")="T"
end if 


movaRS.Update
movaRS.close

gotourl "listItem.asp?itemId="& FLD_item_id

%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
