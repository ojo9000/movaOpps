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

FLD_object_id = req("object_id")
FLD_customer_id = getParamID(req("customer_id"))
FLD_phone_id = getParamID(req("phone_id"))

FLD_phone = req("phone")
FLD_category = req("category")
FLD_description = req("description")


'DataBase Coding....:
sqlString = "Select * From mu_phone Where owner='" &  session("customerNo") &"' and phone_id=" & FLD_phone_id
executeQuery conn,movaRS,sqlString,1,3

if movaRS.eof or movaRS.bof  then
	movaRS.addnew

	movaRS("createdate") = Now
	movaRS("createUser") = cint(session("userid"))
	movaRS("archive")="F"
end if 
'RS seting...: 
		
	movaRS("owner") = session("customerNo")
	movaRS("customer_id") = FLD_customer_id	
	
	movaRS("phone") = FLD_phone
	movaRS("category")= FLD_category
	movaRS("description")= FLD_description
	
if req("del") ="T" then
	movaRS("archive")="T"
end if 
movaRS("modifyDate") = Now
movaRS("modifyUser") = cint(session("userid"))
movaRS.Update
keyid = movaRS("phone_id")
movaRS.close

gotourl "opp.asp?objectId=" & FLD_object_id & chr(38) & "id=" & FLD_customer_id & chr(38) &  "cid=" & FLD_customer_id

%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
