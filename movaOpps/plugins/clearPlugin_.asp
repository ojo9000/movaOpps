<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/core/pub/setup.asp" -->

<%
'debug 1
'Dim Form£º

'Get Get Param:
Dim  FLD_plugin_id,FRM_plugin_no,FRM_saveData
FLD_plugin_id	= getParamID(req("keyid"))
FRM_plugin_no = req("plugin_no")
FRM_saveData = req("saveData")
Dim sqlString 
if FRM_saveData = "0" then
	executeQuery conn,movaRS,"SELECT object_code,table_name FROM mu_object WHERE plugin_no='" & FRM_plugin_no &"'", 1, 1
	do 
		if movaRS.eof or movaRS.bof then exit do
		executeUpdate conn,  "delete from " & movaRS("table_name") & " where object_code='" & movaRS("object_code") & "'" 
		movaRS.MoveNext
	Loop
end if 
delPlugin FRM_plugin_no
gotourl "./"

%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
