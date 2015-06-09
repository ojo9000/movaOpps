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
Dim  FLD_plugin_no,FLD_object_code 
FLD_plugin_no	= req("plugin_no")
FLD_object_code = req("object_code")
keyid = req("keyid")




Dim sqlString,keyid
'DataBase Coding....:
sqlString = "Select * From mova_plugin_object Where plugin_no='"&FLD_plugin_no&"' and object_code='"& FLD_object_code &"'"
executeQuery conn,movaRS,sqlString,1,3

if movaRS.eof or movaRS.bof  then
	movaRS.addnew
end if 
'RS seting...: 
movaRS("plugin_no")= FLD_plugin_no
movaRs("object_code") =  FLD_object_code
movaRS.Update
movaRS.close

gotourl "modifyPlugin.asp?keyid="& keyid

%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
