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
Dim  FLD_plugin_name,FLD_plugin_id,FLD_version
FLD_plugin_name	= req("plugin_name")
FLD_plugin_id	= getParamID(req("plugin_id"))
FLD_version = req("version")




Dim sqlString,keyid
'DataBase Coding....:
sqlString = "Select * From mova_plugin Where  plugin_id=" & FLD_plugin_id
executeQuery conn,movaRS,sqlString,1,3

if movaRS.eof or movaRS.bof  then
	movaRS.addnew
	movaRs("plugin_no") = getSerial("Plugin")
	FLD_version = "1.0.0.1"
	movaRS("createdate") = Now
	movaRS("createUser") = cint(session("userid"))
end if 
'RS seting...: 
movaRS("plugin_name")= FLD_plugin_name
movaRs("version") =  FLD_version
movaRS("modifyDate") = Now
movaRS("modifyUser") = cint(session("userid"))
movaRS.Update
keyid = movaRS("plugin_id")
movaRS.close

gotourl "modifyPlugin.asp?keyid="& keyid

%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
