<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<%
'http://127.0.0.1:85/movaOpps/opp/ajax/cloneField.asp?t=1300556254843&objectTable=MU_CUSTOMER&object_code=M023_K0002&repeatField=customer&opp_id=-1&repeatValue=���Ե�����
%>
<%
'���ݵ�ǰ������ȡ�������ͬ�ļ�¼
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
	sqlString = "select top 1 *  from " & objectTable  
	sqlString = sqlString &  " where archive='F'"
	sqlString = sqlString &  " and owner='"& session("customerNo") &"'"
	sqlString = sqlString &  " and object_code='" & object_code  & "'" 
	sqlString = sqlString &  " and upper(" & repeatField & ") = upper('"& repeatValue &"')"
	sqlString = sqlString &  " and " & getKeyNameByTable(objectTable) & "<>" & opp_id
	sqlString = sqlString &  " order by modifyDate desc " 
	
	'response.write sqlString & "<BR>" & chr(13)
	executeQuery conn,movaRS,sqlString,1,1
	if movaRS.eof or movaRS.bof then 
		response.write ""
	else
		'��ȡҵ��ģ�͵������ֶΣ�������Ҫ��¡���ֶ�
		 
			sqlString = "select field_code from mu_object_field "
			sqlString = sqlString & " where object_id=(select object_id from mu_object where object_code='"& object_code &"')" 
			sqlString = sqlString & " and allow_clone='T' and is_forbidden='F'"
		'	response.write sqlString 
			executeQuery conn,rs,sqlString,1,1
			do 
				if rs.eof or rs.bof then exit do 
				Dim tmpField
				tmpField= trim(ucase(rs("field_code")))
				response.write "_" & tmpField & "^" & movaRS(tmpField) & "|"
				rs.moveNext
			loop 
			rs.close
	end if
	movaRS.close
end if
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->