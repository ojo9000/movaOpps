<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<%
'�����Ӧ�ֶε������Ƿ����ظ�
'���������  objectTable/ object_id /repeatField / repeatValue

Dim objectTable,object_id,repeatField,repeatValue,opp_id,object_code
objectTable= req("objectTable")  & ""
object_code = req("object_code")  & ""
repeatField = req("repeatField")  & ""
repeatValue = req("repeatValue")  & ""
opp_id = req("opp_id") & "" 

'�����һ�����Ϊ�գ��򷵻ش���
if objectTable & object_id  & repeatField & repeatValue & opp_id  ="" then 
	response.write "<font color='red'>�����쳣�����ܼ���ظ���</font>"
else
	Dim sqlString
	sqlString = "select count(*) as resultCount from " & objectTable  
	sqlString = sqlString &  " where archive='F'"
	sqlString = sqlString &  " and owner='"& session("customerNo") &"'"
	sqlString = sqlString &  " and object_code='" & object_code  & "'" 
	sqlString = sqlString &  " and upper(" & repeatField & ") like  upper('%"& repeatValue &"%')"
	sqlString = sqlString &  " and " & getKeyNameByTable(objectTable) & "<>" & opp_id
	
	'response.write sqlString & "<BR>" & chr(13)
	executeQuery conn,movaRS,sqlString,1,1
	if movaRS("resultCount") >0 then 
		response.write "<br><font color='red'>������"& movaRS("resultCount") &"���ظ�¼��</font>"
	else
		response.write "<font color='green'>û�з����ظ�</font>"
	end if
	movaRS.close
end if
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->