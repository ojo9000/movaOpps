<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<script>
	function recordPos(hang,lie){
		document.mainform.pos.value=hang + "��/" + lie + "��";
	}
</script>

<form name=mainform>
<%
Dim  FRM_import_batch_no,FRM_import_file,FRM_objectCode,FRM_team,FRM_isStart
FRM_isStart = req("isStart")
if req("isStart")="1" then 
		FRM_import_batch_no = getTimestamp() 
	 	session("import_batch_no") = FRM_import_batch_no
else
	FRM_import_batch_no = req("import_batch_no")
end if 
FRM_import_file = req("import_file")
FRM_objectCode = req("objectCode")
FRM_team = req("team")
response.write "���ڵ��룬�˴λ������κ�Ϊ��" & session("import_batch_no") & "<br>"
response.write "��ǰ����λ�ã�<input type=text name=pos value=''>"
session("import_batch_no") = FRM_import_batch_no
session("import_file") = FRM_import_file
session("objectCode") = FRM_objectCode
session("team") = FRM_team
Dim keyName,owner,search_scope,sqlString,FLD_table
sqlString = "select table_name,owner,search_scope from mu_object where object_code='"& session("objectCode") &"'"
executeQuery conn,movaRS,sqlString,1,3

if not (movaRS.eof or movaRS.bof)  then
	FLD_table = movaRS("table_name") 
	keyName = getKeyNameByTable(FLD_table)
	owner =  movaRS("owner")
	search_scope = movaRS("search_scope")
end if 
movaRS.close

 
	
getSerial(ucase(FLD_table) )
Dim xlsConn,xlsDriver,xlsDBPath,xlsRs,xlsFile,xlsSql
' ����xlsConnection����
Set xlsConn = Server.CreateObject("ADODB.Connection")
xlsDriver = "Driver={Microsoft Excel Driver (*.xls)};"
xlsFile= session("import_file")
xlsDBPath = "DBQ=" & Server.MapPath( xlsFile )
'����Open ���������ݿ�
xlsConn.Open xlsDriver & xlsDBPath

'DSN���ӷ�ʽ
'xlsConn.Open "Dsn=test"
'ע�� ����һ��Ҫ���±����ָ��� "[����$]" ��д
xlsSql="Select * From [Sheet1$] "
Set xlsRs=xlsConn.Execute(xlsSql)

IF xlsRs.Eof And xlsRs.Bof Then
	Response.write "û���ҵ�����Ҫ������!!"
Else
	
	sqlString = "Select * From "& FLD_table & " Where owner='" &  owner &"' and  "& keyName &" is null"
executeQuery conn,movaRS,sqlString,1,3
	
	Dim i,j,hasTeam
	i=1
	j=0
	hasTeam = false 
	Do While Not xlsRs.EOF
	 	i=i+1
	 	movaRS.addnew
	 	
	 	for j=0 to xlsRS.fields.count-1
			response.write "<script>recordPos(" & i & ",'" & xlsRS(j).name & "');</script>"
			if (ucase(xlsRS(j).name))="TEAM" then 
				hasTeam = true 
				if xlsRS(j) & "" = "" then 
					movaRS(xlsRS(j).name) = session("team")
				else
					movaRS(xlsRS(j).name)= xlsRS(j) & ""
				end if
			else
				movaRS(xlsRS(j).name)= xlsRS(j) & ""
			end if 
		Next 
		movaRS("createdate") = Now
		movaRS("createUser") = cint(session("userid"))
		movaRS("modifyDate") = now
		movaRS("modifyUser") = cint(session("userid"))
		if FLD_table <>"MU_CUSTOMER" then  movaRS("customer_id")=-1
		movaRS("archive")="F"
		if ucase(FLD_table) = ucase("mu_customer") then 
			movaRS("customer_no") = getSerial(ucase(FLD_table))
		else
			movaRS("opp_no") =getSerial(ucase(FLD_table))
		end if 
		movaRS("object_code") = session("objectCode")
		movaRS("hierarchy_id")=0
		if not hasTeam then 
			movaRS("team") =session("team")
		end if 
		movaRS("search_scope")=search_scope
		movaRS("owner") = owner
		movaRS("import_batch_no") = session("import_batch_no")
		movaRS.Update
		xlsRS.moveNext
	loop
end if 
movaRS.close
xlsRs.close
xlsConn.close
response.write "<br>����ɹ���"
response.write "<br><a href='import.asp?t="& getTimestamp()  &"'>�������ݵ���</a>"
%>
</form>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->