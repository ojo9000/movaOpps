<%

'预定可以替换的schema为dbo. 遇到GO则进行执行。
sub executeSQLFile( conn,MapPath_file )
Dim Fso,myFile,fLine
	Dim ddlSql
	Set Fso = Server.CreateObject("Scripting.FileSystemObject")
	Set myFile = Fso.OpenTextFile(Server.MapPath(MapPath_file),1,True)
	While Not myFile.AtEndOfStream
		fLine = myFile.ReadLine
		fLine =trim(replace(fLine,"[dbo].","[" & application("DB_SCHEMA") & "].",1,-1)) 
		if  trim(fLine) =  "GO" then 
			executeUpdate conn,ddlSql
			ddlSql = ""
		else
			ddlSql = ddlSql & " "  & fLine & " "	
		end if
	Wend
	myFile.Close
	Set myFile = Nothing
	Set Fso = Nothing
	 
	if   Err.number <> 0   then 
		Set myFile = Nothing
		Set Fso = Nothing
	end if 
end sub

sub generateDataSQL(conn,paramMapFile,paramTable,paramImportSQL,haveKey)
Dim importInsertSql  
		Dim fieldNames,fieldValues,pi,stringValue,sqlLine
		fieldNames = ""
		fieldValues = ""
		
		Dim writeFile	
		Dim writeFso
		executeQuery conn,movaRS,paramImportSQL, 1, 1
		for   pi=0 to movaRS.fields.Count-1
			fieldNames = fieldNames &  movaRS.fields(pi).name &","
		Next
		if movaRS.recordCount >0 then 
			Set writeFso = Server.CreateObject("Scripting.FileSystemObject")
			Set writeFile = writeFso.opentextfile(Server.MapPath(paramMapFile),8,true)   '追加写入文件
			writeFile.Write	vbcrlf 
			writeFile.Write	vbcrlf 
			if haveKey then 
				writeFile.write "print ' MARK：" & paramTable &  "'" &vbcrlf 
				writeFile.Write	"GO" & vbcrlf 
				writeFile.write "delete from " & paramTable & vbcrlf 
				writeFile.Write	"GO" & vbcrlf 
				writeFile.Write	"SET IDENTITY_INSERT " & paramTable & " ON " & vbcrlf 
				
				writeFile.Write	"GO" & vbcrlf 
				
			end if
			
			do
				fieldValues = ""
				if movaRS.eof or movaRS.bof then exit do
				for   pi=0 to movaRS.fields.Count-1
					
					'字符串的处理
					if  movaRS.fields(pi).type=200 or  movaRS.fields(pi).type=201 or  movaRS.fields(pi).type=202 or  movaRS.fields(pi).type=129 then 
						if ISnull(movaRS(movaRS.fields(pi).name)) then 
							fieldValues = fieldValues & "null,"
						else
							stringValue = movaRS(movaRS.fields(pi).name)
							stringValue = replace(stringValue,"'","''",1,-1)
							'if movaRS.fields(pi).type=201 then 
							'	stringValue = "xxx"
							'end if 
							fieldValues = fieldValues & "'" &  stringValue  & "',"
						end if
					end if 
					
					'数字的处理 
					if  movaRS.fields(pi).type=3 or movaRS.fields(pi).type=131 then 
						if ISnull(movaRS(movaRS.fields(pi).name))  then 
							fieldValues = fieldValues & "null,"
						else
							fieldValues = fieldValues &  movaRS(movaRS.fields(pi).name) & ","
						end if 
					end if
					
					'日期时间的处理，必须为datetime型
					if  movaRS.fields(pi).type=135 then
						if ISnull(movaRS(movaRS.fields(pi).name)) then 
							fieldValues = fieldValues & "null,"
						else
							fieldValues = fieldValues  & "CONVERT(DATETIME,'"& movaRS(movaRS.fields(pi).name) &"',120)," 						
						end if
					end if 
				Next
				sqlLine = "insert into " & paramTable 
				sqlLine = sqlLine & "(" & left(fieldNames,len(fieldNames)-1) & ")"
				sqlLine = sqlLine & " values "
				
				sqlLine = sqlLine & "(" & left(fieldValues,len(fieldValues)-1) & ")" & vbcrlf
			 	writeFile.Write sqlLine
			 	writeFile.Write	"GO" & vbcrlf 
				movaRS.moveNext
			Loop
	 		if  haveKey then 
	 			writeFile.Write	"SET IDENTITY_INSERT " & paramTable & " OFF " & vbcrlf 
		 		writeFile.Write	"GO" & vbcrlf 
			end if		
			writeFile.close '推送内容写入并关闭写入通道
			Set writeFile = nothing
			Set writeFso = nothing
		end if 
end sub 
Dim textSQLinsert
function getFieldValue(fTable,fKeyName,fRS,fi)
	Dim returnValue ,stringValue
	returnValue  = ""
	stringValue = ""
	if  fRS.fields(fi).type=200 or  fRS.fields(fi).type=201 or  fRS.fields(fi).type=202 or  fRS.fields(fi).type=129 then 
		if ISnull(fRS(fRS.fields(fi).name)) then 
			returnValue = returnValue & "null,"
		else
			stringValue = fRS(fRS.fields(fi).name)
			stringValue = replace(stringValue,"'","''",1,-1)
			'stringValue = replace(stringValue,vbcrlf,"'+ char(13) +'",1,-1)
			 
			if fRS.fields(fi).type=201 then
				returnValue = returnValue & "'',"
						textSQLinsert = textSQLinsert & "DECLARE @ptrval binary(16)" & vbcrlf
						textSQLinsert = textSQLinsert & "select @ptrval=textptr("&fTable &"."&fRS.fields(fi).name&")  from "&fTable &" where "&fKeyName&"=[~"& fKeyName &"~]" & vbcrlf
						textSQLinsert = textSQLinsert & "WRITETEXT "&fTable &"."&fRS.fields(fi).name&" @ptrval '"&stringValue&"'" & vbcrlf
 						textSQLinsert = textSQLinsert & "GO" &   vbcrlf
			else
				returnValue = returnValue & "'" &  stringValue  & "',"
			end if 
		end if
	end if 
	
	'数字的处理 
	if  fRS.fields(fi).type=3 or fRS.fields(fi).type=131 then 
		if ISnull(fRS(fRS.fields(fi).name))  then 
			returnValue = returnValue & "null,"
		else
			returnValue = returnValue &  fRS(fRS.fields(fi).name) & ","
		end if 
	end if
	
	'日期时间的处理，必须为datetime型
	if  fRS.fields(fi).type=135 then
		if ISnull(fRS(fRS.fields(fi).name)) then 
			returnValue = returnValue & "null,"
		else
			returnValue = returnValue  & "CONVERT(DATETIME,'"& fRS(fRS.fields(fi).name) &"',120)," 						
		end if
	end if 
	getFieldValue = returnValue 
end function

sub delPlugin(pluginNo)
	if trim(pluginNO & " ")<>"" then 
		executeUpdate conn,"delete  mu_object where plugin_no='"& pluginNo  &"'"
		executeUpdate conn,"delete  mu_object_field where plugin_no='"& pluginNo  &"'"
		executeUpdate conn,"delete  mu_mpl_search where plugin_no='"& pluginNo  &"'"
		executeUpdate conn,"delete  mu_mpl_condition where plugin_no='"& pluginNo  &"'"
		executeUpdate conn,"delete  mu_mpl_group where plugin_no='"& pluginNo  &"'"
		executeUpdate conn,"delete  mu_mpl_order where plugin_no='"& pluginNo  &"'"
		executeUpdate conn,"delete  mu_mpl_pre_condition where plugin_no='"& pluginNo  &"'"
		executeUpdate conn,"delete  mu_mpl_select where plugin_no='"& pluginNo  &"'"
		executeUpdate conn,"delete  mu_item where plugin_no='"& pluginNo  &"'"
		executeUpdate conn,"delete  mu_item_list where plugin_no='"& pluginNo  &"'"
		executeUpdate conn,"delete  mova_function where plugin_no='"& pluginNo  &"'"
		executeUpdate conn,"delete  mova_plugin where plugin_no='"& pluginNo  &"'"
	end if  
end sub
'Constant	Value	Description
'adEmpty	0	No value
'adSmallInt	2	A 2-byte signed integer.
'adInteger	3	A 4-byte signed integer.
'adSingle	4	A single-precision floating-point value.
'adDouble	5	A double-precision floating-point value.
'adCurrency	6	A currency value
'adDate	7	The number of days since December 30, 1899 + the fraction of a day.
'adBSTR	8	A null-terminated character string.
'adIDispatch	9	A pointer to an IDispatch interface on a COM object. Note: Currently not supported by ADO.
'adError	10	A 32-bit error code
'adBoolean	11	A boolean value.
'adVariant	12	An Automation Variant. Note: Currently not supported by ADO.
'adIUnknown	13	A pointer to an IUnknown interface on a COM object. Note: Currently not supported by ADO.
'adDecimal	14	An exact numeric value with a fixed precision and scale.
'adTinyInt	16	A 1-byte signed integer.
'adUnsignedTinyInt	17	A 1-byte unsigned integer.
'adUnsignedSmallInt	18	A 2-byte unsigned integer.
'adUnsignedInt	19	A 4-byte unsigned integer.
'adBigInt	20	An 8-byte signed integer.
'adUnsignedBigInt	21	An 8-byte unsigned integer.
'adFileTime	64	The number of 100-nanosecond intervals since January 1,1601
'adGUID	72	A globally unique identifier (GUID)
'adBinary	128	A binary value.
'adChar	129	A string value.
'adWChar	130	A null-terminated Unicode character string.
'adNumeric	131	An exact numeric value with a fixed precision and scale.
'adUserDefined	132	A user-defined variable.
'adDBDate	133	A date value (yyyymmdd).
'adDBTime	134	A time value (hhmmss).
'adDBTimeStamp	135	A date/time stamp (yyyymmddhhmmss plus a fraction in billionths).
'adChapter	136	A 4-byte chapter value that identifies rows in a child rowset
'adPropVariant	138	An Automation PROPVARIANT.
'adVarNumeric	139	A numeric value (Parameter object only).
'adVarChar	200	A string value (Parameter object only).
'adLongVarChar	201	A long string value.
'adVarWChar	202	A null-terminated Unicode character string.
'adLongVarWChar	203	A long null-terminated Unicode string value.
'adVarBinary	204	A binary value (Parameter object only).
'adLongVarBinary	205	A long binary value.
'AdArray	0x2000	A flag value combined with another data type constant. Indicates an array of that other data type.


'drop table [dbo].[mova_function]
'drop table [dbo].[mova_log]
'drop table [dbo].[mova_picklist]
'drop table [dbo].[mova_plugin]
'drop table [dbo].[mova_role]
'drop table [dbo].[mova_role_reuse]
'drop table [dbo].[mova_rolefunction]
'drop table [dbo].[mova_serialno]
'drop table [dbo].[mova_team]
'drop table [dbo].[mova_user]
'drop table [dbo].[mova_user_team]
'drop table [dbo].[mu_config]
'drop table [dbo].[mu_customer]
'drop table [dbo].[mu_ext_menu]
'drop table [dbo].[mu_field_set]
'drop table [dbo].[mu_item]
'drop table [dbo].[mu_item_list]
'drop table [dbo].[mu_knowledge]
'drop table [dbo].[mu_log]
'drop table [dbo].[mu_mpl_condition]
'drop table [dbo].[mu_mpl_group]
'drop table [dbo].[mu_mpl_order]
'drop table [dbo].[mu_mpl_pre_condition]
'drop table [dbo].[mu_mpl_search]
'drop table [dbo].[mu_mpl_select]
'drop table [dbo].[mu_object]
'drop table [dbo].[mu_object_field]
'drop table [dbo].[mu_object_master_field]
 
%>
