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
Dim FLD_item_id,FLD_item_name,FLD_field_type,FLD_item_code,FLD_is_pub
Dim sqlString,keyid
FLD_item_id=getParamID(req("item_id"))
FLD_item_name = req("item_name")
FLD_field_type = req("field_type")
FLD_is_pub = req("is_pub")
if FLD_item_id = -1 then 
	FLD_item_code= session("customerNo") & "_" + getSerial("Item")
end if 

'DataBase Coding....:
sqlString = "Select * From mu_item Where owner='" &  session("customerNo") &"' and item_id=" & FLD_item_id
executeQuery conn,movaRS,sqlString,1,3

if movaRS.eof or movaRS.bof  then
	movaRS.addnew
	movaRS("item_code") = session("customerNo") & "_" + getSerial("Item")
	movaRS("owner")= session("customerNo")
	movaRS("createdate") = Now
	movaRS("createUser") = cint(session("userid"))
	movaRS("archive")="F"
end if 
'RS seting...: 
movaRS("item_name")= FLD_item_name
movaRS("field_type") = FLD_field_type
if req("del") ="T" then
	movaRS("archive")="T"
end if 
movaRS("is_pub") = FLD_is_pub 
movaRS("modifyDate") = Now
movaRS("modifyUser") = cint(session("userid"))
movaRS.Update
keyid = movaRS("item_id")
movaRS.close

gotourl "listItem.asp?itemId="& keyid

%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
