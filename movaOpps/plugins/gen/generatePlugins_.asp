<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/core/pub/setup.asp" -->
  
<%
	Dim FRM_plugin_id , objectString
	FRM_plugin_id=getParamID(req("keyid"))

	objectString = ""
	objectString = objectString & "SELECT o.[object_id],o.object_code,o.object_name,b.plugin_no,b.version,b.plugin_name,b.version,b.author "
	objectString = objectString & "FROM mova_plugin_object a,mova_plugin b ,mu_object o  "
	objectString = objectString & "WHERE a.plugin_no=b.plugin_no AND o.object_code = a.object_code "
	objectString = objectString & "AND b.plugin_id="& FRM_plugin_id  &" AND o.is_publish='T' AND o.archive='F'"
	'response.write objectString
	executeQuery conn,movaRS1,objectString, 1, 1
	
	Dim FRM_version,FRM_plugin_no,FRM_plugin_name,FRM_author
	if movaRS1.recordCount>0 then 
		FRM_version =  replace(movaRS1("version"),".","_",1,-1,1)
		FRM_plugin_no = movaRS1("plugin_no")
		FRM_plugin_name = movaRS1("plugin_name")
		FRM_author =  movaRS1("author") 
		if FRM_author& "" = "" then 
			FRM_author = "Micros"
		end if 
		
		'重新创建插件文件
		dim fs,tfile,fPath 
		fPath = "/movaOpps/plugins/gen/script/"
		set fs=Server.CreateObject("Scripting.FileSystemObject")
		set tfile=fs.CreateTextFile(Server.MapPath(fPath & FRM_plugin_no&"_" & FRM_version & ".sc"))
		
		tfile.WriteLine("~~##Plugin" & "##" & FRM_plugin_no & "##" & FRM_plugin_name & "##" & FRM_version & "##" & FRM_author &  "##")
		tfile.close
		set tfile=nothing
		set fs=nothing
	end if 
	
	do 
		if movaRS1.eof or movaRS1.bof then exit do
		genSQL movaRS1("object_id"),movaRS1("object_code"),movaRS1("object_name"),movaRS1("plugin_no"),FRM_version
		movaRS1.Movenext
	Loop
	movaRS1.close

sub genSQL(objectID,objectCode,objectName,pluginNo,pluginVersion)
	Dim FRM_objectid,FRM_objectCode,FRM_objectName
	FRM_objectid = objectID
	FRM_objectCode = objectCode
	FRM_objectName = objectName
	
	dim writeFso,scriptFile,fPath
	Set writeFso = Server.CreateObject("Scripting.FileSystemObject")
	fPath = "/movaOpps/plugins/gen/script/"
	set scriptFile = writeFso.opentextfile(Server.MapPath(fPath & pluginNo & "_" &  pluginVersion & ".sc"),8,true) 
 	scriptFile.WriteLine("~~##~~" & "##" & pluginNo & "##" & FRM_objectCode & "##" & FRM_objectName & "##")
	
	Dim insertTable,selectSQL,insertSQL ,masterKey,fieldNames,fieldValues, pi,fieldName
	Dim isSpecialField
	insertSQL = ""
	
	
	'生成 mu_object 插入语句
	insertTable = "mu_object"
	masterKey = "OBJECT_ID"
	selectSQL = "SELECT * FROM mu_object WHERE object_code='"& FRM_objectCode  &"' AND archive='F'"

	executeQuery conn,movaRS,selectSQL, 1, 1
	do
		fieldNames = ""
		fieldValues = ""
		insertSQL = ""
		textSQLinsert = ""
		if movaRS.eof or movaRS.bof then exit do 
		for pi=0 to movaRS.fields.Count-1
			fieldName = ucase(movaRS.fields(pi).name)
			if fieldName= masterKey or fieldName="CREATEDATE" OR fieldName="CREATEUSER" OR fieldName="MODIFYDATE" OR fieldName="MODIFYUSER" then
				'跳过 修改新增的字段，以及主键
			else
					isSpecialField = false
					fieldNames = fieldNames & 	fieldName & ","
					
					if fieldName = "PLUGIN_NO" then 
							isSpecialField = true 
							fieldValues = fieldValues & "'"& pluginNo & "',"
					end if
					if not isSpecialField then
						fieldValues = fieldValues & getFieldValue(insertTable,masterKey,movaRS,pi)
					end if 
			end if
		Next
 
		
		scriptFile.WriteLine	"SET IDENTITY_INSERT " & insertTable & " OFF "
	 	scriptFile.WriteLine	"GO"
		insertSQL = "insert into " & insertTable 
		insertSQL = insertSQL & "(" & left(fieldNames,len(fieldNames)-1) & ")"
		insertSQL = insertSQL & " values "
		insertSQL = insertSQL & "(" & left(fieldValues,len(fieldValues)-1) & ")"  
		scriptFile.WriteLine insertSQL
		scriptFile.WriteLine	"GO"  
		scriptFile.WriteLine ""
		scriptFile.WriteLine "~~##!!GET_PARAM:OBJECT_ID"
		scriptFile.WriteLine textSQLinsert


		movaRS.moveNext
	loop
	
	'生成 业务模型的根功能点
	insertTable = "mova_function"
	masterKey = "MOVA_FUNCTIONID"
	selectSQL = "SELECT * FROM mova_function WHERE category='"& FRM_objectCode  &"' AND parent_id=0 " 

	executeQuery conn,movaRS,selectSQL, 1, 1
	do
		fieldNames = ""
		fieldValues = ""
		insertSQL = ""
		textSQLinsert = ""
		if movaRS.eof or movaRS.bof then exit do 
		for pi=0 to movaRS.fields.Count-1
			fieldName = ucase(movaRS.fields(pi).name)
			if fieldName= masterKey or fieldName="CREATEDATE" OR fieldName="CREATEUSER" OR fieldName="MODIFYDATE" OR fieldName="MODIFYUSER" then
				'跳过 修改新增的字段，以及主键
			else
					isSpecialField = false
					fieldNames = fieldNames & 	fieldName & ","
					
					if fieldName = "PLUGIN_NO" then 
							isSpecialField = true 
							fieldValues = fieldValues & "'"& pluginNo & "',"
					end if
					if fieldName = "CODE" then 
							isSpecialField = true 
							fieldValues = fieldValues & "'"& FRM_objectCode & "',"
					end if
					if not isSpecialField then
						fieldValues = fieldValues & getFieldValue(insertTable,masterKey,movaRS,pi)
					end if 
			end if
		Next
		
		scriptFile.WriteLine	"SET IDENTITY_INSERT " & insertTable & " OFF "
	 	scriptFile.WriteLine	"GO"
		insertSQL = "insert into " & insertTable 
		insertSQL = insertSQL & "(" & left(fieldNames,len(fieldNames)-1) & ")"
		insertSQL = insertSQL & " values "
		insertSQL = insertSQL & "(" & left(fieldValues,len(fieldValues)-1) & ")"  
		scriptFile.WriteLine insertSQL
		scriptFile.WriteLine	"GO"  
		scriptFile.WriteLine ""
		scriptFile.WriteLine "~~##!!GET_PARAM:PARENT_ID"
		scriptFile.WriteLine
		movaRS.moveNext
	loop
	
	'生成非自定义查询的功能点
	insertTable = "mova_function"
	masterKey = "MOVA_FUNCTIONID"
	selectSQL = "SELECT * FROM mova_function WHERE category='"& FRM_objectCode  &"'AND parent_id<>0 AND code not LIKE 'Dy_%_Mpl%'"
	Dim functionType,arrayCode,functionName
	executeQuery conn,movaRS,selectSQL, 1, 1
	do
		fieldNames = ""
		fieldValues = ""
		insertSQL = ""
		textSQLinsert = ""
		if movaRS.eof or movaRS.bof then exit do 
		for pi=0 to movaRS.fields.Count-1
			fieldName = ucase(movaRS.fields(pi).name)
			if fieldName= masterKey or fieldName="CREATEDATE" OR fieldName="CREATEUSER" OR fieldName="MODIFYDATE" OR fieldName="MODIFYUSER" then
				'跳过 修改新增的字段，以及主键
			else
					isSpecialField = false
					functionName  = ""
					fieldNames = fieldNames & 	fieldName & ","
					
					if fieldName = "PLUGIN_NO" then 
							isSpecialField = true 
							fieldValues = fieldValues & "'"& pluginNo & "',"
					end if
					
					if fieldName = "PARENT_ID" then 
							isSpecialField = true 
							fieldValues = fieldValues & "[~FUNCTION_PARENT_ID~],"
					end if
					
					
					if fieldName = "CODE" then 
							isSpecialField = true 
							arrayCode = split(movaRS(pi),"_")
							if ubound(arrayCode)=2 then 
								functionName = arrayCode(0) & "_[~OBJECT_ID~]" & "_" & arrayCode(2)
								fieldValues = fieldValues & "'" & functionName & "',"
							else
								fieldValues = fieldValues & "'#ERROR#"& movaRS(masterKey) &"',"
							end if 
					end if
					
					if fieldName = "URL" then 
							isSpecialField = true 
							arrayCode = split(movaRS("CODE"),"_")
							if ubound(arrayCode)=2 then 
							 	if arrayCode(2)="New" then 
									fieldValues = fieldValues & "'/movaOpps/opp/opp.asp?objectId=[~OBJECT_ID~]',"
								else	
									if arrayCode(2)="Search" then 
										fieldValues = fieldValues & "'/movaOpps/opp/searchOpp.asp?objectId=[~OBJECT_ID~]" & "&isStart=2&def=Last',"
									else
										fieldValues = fieldValues & getFieldValue(insertTable,masterKey,movaRS,pi)
									end if 
								end if 
							else
								fieldValues = fieldValues & "'#ERROR#"& movaRS(masterKey) &"',"
							end if 
					end if
					if fieldName = "CATEGORY" then 
							isSpecialField = true 
							fieldValues = fieldValues & "'"& FRM_objectCode & "',"
					end if
					if not isSpecialField then
						fieldValues = fieldValues & getFieldValue(insertTable,masterKey,movaRS,pi)
					end if 
			end if
		Next
		
		scriptFile.WriteLine	"SET IDENTITY_INSERT " & insertTable & " OFF "
	 	scriptFile.WriteLine	"GO"
		insertSQL = "insert into " & insertTable 
		insertSQL = insertSQL & "(" & left(fieldNames,len(fieldNames)-1) & ")"
		insertSQL = insertSQL & " values "
		insertSQL = insertSQL & "(" & left(fieldValues,len(fieldValues)-1) & ")"  
		scriptFile.WriteLine insertSQL
		scriptFile.WriteLine	"GO"  
		
		scriptFile.WriteLine
		movaRS.moveNext
	loop
	scriptFile.WriteLine ""
	
	'生成 mu_object_field
	insertTable = "mu_object_field"
	masterKey = "FIELD_ID"
	selectSQL = "SELECT * FROM mu_object_field WHERE [object_id] = (SELECT TOP 1  [object_id] FROM mu_object WHERE object_code='"& FRM_objectCode  &"' AND archive='F') AND archive='F' "
	
	executeQuery conn,movaRS,selectSQL, 1, 1
	scriptFile.WriteLine	"SET IDENTITY_INSERT " & insertTable & " OFF "
	scriptFile.WriteLine	"GO"
	do
		fieldNames = ""
		fieldValues = ""
		insertSQL = ""
		textSQLinsert = ""
		if movaRS.eof or movaRS.bof then exit do 
		for pi=0 to movaRS.fields.Count-1
			fieldName = ucase(movaRS.fields(pi).name)
			if fieldName= masterKey or fieldName="CREATEDATE" OR fieldName="CREATEUSER" OR fieldName="MODIFYDATE" OR fieldName="MODIFYUSER" then
				'跳过 修改新增的字段，以及主键
			else
					isSpecialField = false
					fieldNames = fieldNames & 	fieldName & ","
					
					if fieldName = "PLUGIN_NO" then 
							isSpecialField = true 
							fieldValues = fieldValues & "'"& pluginNo & "',"
					end if
					if fieldName = "OBJECT_ID" then 
							isSpecialField = true 
							fieldValues = fieldValues & "[~OBJECT_ID~],"
					end if
					if not isSpecialField then
						fieldValues = fieldValues & getFieldValue(insertTable,masterKey,movaRS,pi)
					end if 
			end if
		Next
		insertSQL = "insert into " & insertTable 
		insertSQL = insertSQL & "(" & left(fieldNames,len(fieldNames)-1) & ")"
		insertSQL = insertSQL & " values "
		insertSQL = insertSQL & "(" & left(fieldValues,len(fieldValues)-1) & ")"
		scriptFile.WriteLine insertSQL
		scriptFile.WriteLine	"GO"
		scriptFile.WriteLine "~~##!!GET_PARAM:FIELD_ID"
		scriptFile.WriteLine textSQLinsert 
		movaRS.moveNext
	loop
	scriptFile.WriteLine ""
	
	
	'生成 mu_item
	insertTable = "mu_item"
	masterKey = "ITEM_ID"
	selectSQL = "SELECT * FROM mu_item WHERE item_code IN ( SELECT DISTINCT field_type FROM mu_object_field WHERE [object_id] = (SELECT [object_id] FROM mu_object WHERE object_code='"& FRM_objectCode  &"' AND archive='F') AND archive='F' AND FIELD_TYPE<>'VARCHAR' AND FIELD_TYPE<>'INT' AND FIELD_TYPE<>'TIME' AND FIELD_TYPE<>'TEXT') AND archive='F' AND is_public='F'"

	executeQuery conn,movaRS,selectSQL, 1, 1
	scriptFile.WriteLine	"SET IDENTITY_INSERT " & insertTable & " OFF "
	scriptFile.WriteLine	"GO"
	do
		insertTable = "mu_item"
		masterKey = "ITEM_ID"
		fieldNames = ""
		fieldValues = ""
		insertSQL = ""
		textSQLinsert = ""
		if movaRS.eof or movaRS.bof then exit do 
		for pi=0 to movaRS.fields.Count-1
			fieldName = ucase(movaRS.fields(pi).name)
			if fieldName= masterKey or fieldName="CREATEDATE" OR fieldName="CREATEUSER" OR fieldName="MODIFYDATE" OR fieldName="MODIFYUSER" then
				'跳过 修改新增的字段，以及主键
			else
				isSpecialField = false
				fieldNames = fieldNames & 	fieldName & ","
				if fieldName = "PLUGIN_NO" then 
					isSpecialField = true 
					fieldValues = fieldValues & "'"& pluginNo & "',"
				end if
				if not isSpecialField then
					fieldValues = fieldValues & getFieldValue(insertTable,masterKey,movaRS,pi)
				end if 
			end if
		Next
		insertSQL = "insert into " & insertTable 
		insertSQL = insertSQL & "(" & left(fieldNames,len(fieldNames)-1) & ")"
		insertSQL = insertSQL & " values "
		insertSQL = insertSQL & "(" & left(fieldValues,len(fieldValues)-1) & ")"  
		scriptFile.WriteLine insertSQL
		scriptFile.WriteLine	"GO"  
		scriptFile.WriteLine "~~##!!GET_PARAM:ITEM_ID"
		
		'嵌套循环生成
					'生成 mu_item_list
					insertTable = "mu_item_list"
					masterKey = "ITEM_LIST_ID"
					selectSQL = "SELECT * FROM mu_item_list WHERE item_id IN ( SELECT item_id FROM mu_item WHERE item_code IN ( SELECT DISTINCT field_type FROM mu_object_field WHERE [object_id] = (SELECT [object_id] FROM mu_object WHERE object_code='"& FRM_objectCode  &"' AND archive='F') AND archive='F' AND FIELD_TYPE<>'VARCHAR' AND FIELD_TYPE<>'INT' AND FIELD_TYPE<>'TIME' AND FIELD_TYPE<>'TEXT') AND archive='F' ) AND archive='F' and item_code='"& movaRS("item_code") &"'"
  				
					executeQuery conn,rs1,selectSQL, 1, 1
					scriptFile.WriteLine	"SET IDENTITY_INSERT " & insertTable & " OFF "
					scriptFile.WriteLine	"GO"
					do
						fieldNames = ""
						fieldValues = ""
						insertSQL = ""
						if rs1.eof or rs1.bof then exit do 
						for pi=0 to rs1.fields.Count-1
							fieldName = ucase(rs1.fields(pi).name)
							if fieldName= masterKey or fieldName="CREATEDATE" OR fieldName="CREATEUSER" OR fieldName="MODIFYDATE" OR fieldName="MODIFYUSER" then
								'跳过 修改新增的字段，以及主键
							else
								isSpecialField = false
								fieldNames = fieldNames & 	fieldName & ","
								if fieldName = "PLUGIN_NO" then 
									isSpecialField = true 
									fieldValues = fieldValues & "'"& pluginNo & "',"
								end if
								if fieldName = "ITEM_ID" then 
									isSpecialField = true 
									fieldValues = fieldValues & "[~ITEM_ID~],"
								end if
								if not isSpecialField then
									fieldValues = fieldValues & getFieldValue(insertTable,masterKey,rs1,pi)
								end if 
							end if
						Next
						insertSQL = "insert into " & insertTable 
						insertSQL = insertSQL & "(" & left(fieldNames,len(fieldNames)-1) & ")"
						insertSQL = insertSQL & " values "
						insertSQL = insertSQL & "(" & left(fieldValues,len(fieldValues)-1) & ")"  
						scriptFile.WriteLine insertSQL
						scriptFile.WriteLine	"GO" 
						rs1.moveNext
					loop
		'嵌套循环生成结束
					scriptFile.WriteLine ""
		
		movaRS.moveNext
	loop
	scriptFile.WriteLine ""

	
	 
	'生成 mu_mpl_search
	insertTable = "mu_mpl_search"
	masterKey = "MU_MPL_SEARCH_ID"
	selectSQL = "SELECT * FROM mu_mpl_search mms  WHERE [object_CODE] = '"& FRM_objectCode  &"' AND archive='F'"
	executeQuery conn,movaRS,selectSQL, 1, 1
	scriptFile.WriteLine	"SET IDENTITY_INSERT " & insertTable & " OFF "
	scriptFile.WriteLine	"GO"
	
	Dim mpl_searchID 
	do
		insertTable = "mu_mpl_search"
		masterKey = "MU_MPL_SEARCH_ID"
		fieldNames = ""
		fieldValues = ""
		insertSQL = ""
		if movaRS.eof or movaRS.bof then exit do 
		mpl_searchID = movaRS(masterKey)
		for pi=0 to movaRS.fields.Count-1
			fieldName = ucase(movaRS.fields(pi).name)
			if fieldName= masterKey or fieldName="CREATEDATE" OR fieldName="CREATEUSER" OR fieldName="MODIFYDATE" OR fieldName="MODIFYUSER" then
				'跳过 修改新增的字段，以及主键
			else
				isSpecialField = false
				fieldNames = fieldNames & 	fieldName & ","
				if fieldName = "PLUGIN_NO" then 
					isSpecialField = true 
					fieldValues = fieldValues & "'"& pluginNo & "',"
				end if
				if not isSpecialField then
					fieldValues = fieldValues & getFieldValue(insertTable,masterKey,movaRS,pi)
				end if 
			end if
		Next
		insertSQL = "insert into " & insertTable 
		insertSQL = insertSQL & "(" & left(fieldNames,len(fieldNames)-1) & ")"
		insertSQL = insertSQL & " values "
		insertSQL = insertSQL & "(" & left(fieldValues,len(fieldValues)-1) & ")"  
		scriptFile.WriteLine insertSQL
		scriptFile.WriteLine	"GO"
		scriptFile.WriteLine ""
		scriptFile.WriteLine "~~##!!GET_PARAM:MU_MPL_SEARCH_ID"
		
		'嵌套循环生成
					'嵌套生成 mu_mpl_condition
					insertTable = "mu_mpl_condition"
					masterKey = "MU_MPL_CONDITION_ID"
					selectSQL = "SELECT * FROM mu_mpl_condition mmc WHERE mu_mpl_search_id="& mpl_searchID &" AND archive='F'" 
  				
					executeQuery conn,rs1,selectSQL, 1, 1
					scriptFile.WriteLine	"SET IDENTITY_INSERT " & insertTable & " OFF "
					scriptFile.WriteLine	"GO"
					do
						fieldNames = ""
						fieldValues = ""
						insertSQL = ""
						if rs1.eof or rs1.bof then exit do 
						for pi=0 to rs1.fields.Count-1
							fieldName = ucase(rs1.fields(pi).name)
							if fieldName= masterKey or fieldName="CREATEDATE" OR fieldName="CREATEUSER" OR fieldName="MODIFYDATE" OR fieldName="MODIFYUSER" then
								'跳过 修改新增的字段，以及主键
							else
								isSpecialField = false
								fieldNames = fieldNames & 	fieldName & ","
								if fieldName = "PLUGIN_NO" then 
									isSpecialField = true 
									fieldValues = fieldValues & "'"& pluginNo & "',"
								end if
								if fieldName = "MU_MPL_SEARCH_ID" then 
									isSpecialField = true 
									fieldValues = fieldValues & "[~MU_MPL_SEARCH_ID~],"
								end if
								if not isSpecialField then
									fieldValues = fieldValues & getFieldValue(insertTable,masterKey,rs1,pi)
								end if 
							end if
						Next
						insertSQL = "insert into " & insertTable 
						insertSQL = insertSQL & "(" & left(fieldNames,len(fieldNames)-1) & ")"
						insertSQL = insertSQL & " values "
						insertSQL = insertSQL & "(" & left(fieldValues,len(fieldValues)-1) & ")"  
						scriptFile.WriteLine insertSQL
						scriptFile.WriteLine	"GO"  
						rs1.moveNext
						
					loop
					
					'嵌套生成 mu_mpl_group
					insertTable = "mu_mpl_group"
					masterKey = "MU_MPL_GROUP_ID"
					selectSQL = "SELECT * FROM mu_mpl_group mmg WHERE mu_mpl_search_id="& mpl_searchID &" AND archive='F'" 
  				
					executeQuery conn,rs1,selectSQL, 1, 1
					scriptFile.WriteLine	"SET IDENTITY_INSERT " & insertTable & " OFF "
					scriptFile.WriteLine	"GO"
					do
						fieldNames = ""
						fieldValues = ""
						insertSQL = ""
						if rs1.eof or rs1.bof then exit do 
						for pi=0 to rs1.fields.Count-1
							fieldName = ucase(rs1.fields(pi).name)
							if fieldName= masterKey or fieldName="CREATEDATE" OR fieldName="CREATEUSER" OR fieldName="MODIFYDATE" OR fieldName="MODIFYUSER" then
								'跳过 修改新增的字段，以及主键
							else
								isSpecialField = false
								fieldNames = fieldNames & 	fieldName & ","
								if fieldName = "PLUGIN_NO" then 
									isSpecialField = true 
									fieldValues = fieldValues & "'"& pluginNo & "',"
								end if
								if fieldName = "MU_MPL_SEARCH_ID" then 
									isSpecialField = true 
									fieldValues = fieldValues & "[~MU_MPL_SEARCH_ID~],"
								end if
								if not isSpecialField then
									fieldValues = fieldValues & getFieldValue(insertTable,masterKey,rs1,pi)
								end if 
							end if
						Next
						insertSQL = "insert into " & insertTable 
						insertSQL = insertSQL & "(" & left(fieldNames,len(fieldNames)-1) & ")"
						insertSQL = insertSQL & " values "
						insertSQL = insertSQL & "(" & left(fieldValues,len(fieldValues)-1) & ")"  
						scriptFile.WriteLine insertSQL
						scriptFile.WriteLine	"GO"  
						rs1.moveNext
						
					loop
					
					
					'嵌套生成 mu_mpl_order
					insertTable = "mu_mpl_order"
					masterKey = "MU_MPL_ORDER_ID"
					selectSQL = "SELECT * FROM mu_mpl_order mmo WHERE mu_mpl_search_id="& mpl_searchID &" AND archive='F'" 
  				
					executeQuery conn,rs1,selectSQL, 1, 1
					scriptFile.WriteLine	"SET IDENTITY_INSERT " & insertTable & " OFF "
					scriptFile.WriteLine	"GO"
					do
						fieldNames = ""
						fieldValues = ""
						insertSQL = ""
						textSQLinsert = ""
						if rs1.eof or rs1.bof then exit do 
						for pi=0 to rs1.fields.Count-1
							fieldName = ucase(rs1.fields(pi).name)
							if fieldName= masterKey or fieldName="CREATEDATE" OR fieldName="CREATEUSER" OR fieldName="MODIFYDATE" OR fieldName="MODIFYUSER" then
								'跳过 修改新增的字段，以及主键
							else
								isSpecialField = false
								fieldNames = fieldNames & 	fieldName & ","
								if fieldName = "PLUGIN_NO" then 
									isSpecialField = true 
									fieldValues = fieldValues & "'"& pluginNo & "',"
								end if
								if fieldName = "MU_MPL_SEARCH_ID" then 
									isSpecialField = true 
									fieldValues = fieldValues & "[~MU_MPL_SEARCH_ID~],"
								end if
								if not isSpecialField then
									fieldValues = fieldValues & getFieldValue(insertTable,masterKey,rs1,pi)
								end if 
							end if
						Next
						insertSQL = "insert into " & insertTable 
						insertSQL = insertSQL & "(" & left(fieldNames,len(fieldNames)-1) & ")"
						insertSQL = insertSQL & " values "
						insertSQL = insertSQL & "(" & left(fieldValues,len(fieldValues)-1) & ")"  
						scriptFile.WriteLine insertSQL
						scriptFile.WriteLine	"GO"  
						rs1.moveNext
						
					loop
					
					
					'嵌套生成 mu_mpl_pre_condition
					insertTable = "mu_mpl_pre_condition"
					masterKey = "MU_MPL_PRE_CONDITION_ID"
					selectSQL = "SELECT * FROM mu_mpl_pre_condition mmpc WHERE mu_mpl_search_id="& mpl_searchID &" AND archive='F'" 
  				
					executeQuery conn,rs1,selectSQL, 1, 1
					scriptFile.WriteLine	"SET IDENTITY_INSERT " & insertTable & " OFF "
					scriptFile.WriteLine	"GO"
					do
						fieldNames = ""
						fieldValues = ""
						insertSQL = ""
						if rs1.eof or rs1.bof then exit do 
						for pi=0 to rs1.fields.Count-1
							fieldName = ucase(rs1.fields(pi).name)
							if fieldName= masterKey or fieldName="CREATEDATE" OR fieldName="CREATEUSER" OR fieldName="MODIFYDATE" OR fieldName="MODIFYUSER" then
								'跳过 修改新增的字段，以及主键
							else
								isSpecialField = false
								fieldNames = fieldNames & 	fieldName & ","
								if fieldName = "PLUGIN_NO" then 
									isSpecialField = true 
									fieldValues = fieldValues & "'"& pluginNo & "',"
								end if
								if fieldName = "MU_MPL_SEARCH_ID" then 
									isSpecialField = true 
									fieldValues = fieldValues & "[~MU_MPL_SEARCH_ID~],"
								end if
								if not isSpecialField then
									fieldValues = fieldValues & getFieldValue(insertTable,masterKey,rs1,pi)
								end if 
							end if
						Next
						insertSQL = "insert into " & insertTable 
						insertSQL = insertSQL & "(" & left(fieldNames,len(fieldNames)-1) & ")"
						insertSQL = insertSQL & " values "
						insertSQL = insertSQL & "(" & left(fieldValues,len(fieldValues)-1) & ")"  
						scriptFile.WriteLine insertSQL
						scriptFile.WriteLine	"GO"  
						rs1.moveNext
						
					loop
					
					'嵌套生成 mu_mpl_select
					insertTable = "mu_mpl_select"
					masterKey = "MU_MPL_SELECT_ID"
					selectSQL = "SELECT * FROM mu_mpl_select mms WHERE mu_mpl_search_id="& mpl_searchID &"  AND archive='F'" 
  				
					executeQuery conn,rs1,selectSQL, 1, 1
					scriptFile.WriteLine	"SET IDENTITY_INSERT " & insertTable & " OFF "
					scriptFile.WriteLine	"GO"
					do
						fieldNames = ""
						fieldValues = ""
						insertSQL = ""
						textSQLinsert = ""
						if rs1.eof or rs1.bof then exit do 
						for pi=0 to rs1.fields.Count-1
							fieldName = ucase(rs1.fields(pi).name)
							if fieldName= masterKey or fieldName="CREATEDATE" OR fieldName="CREATEUSER" OR fieldName="MODIFYDATE" OR fieldName="MODIFYUSER" then
								'跳过 修改新增的字段，以及主键
							else
								isSpecialField = false
								fieldNames = fieldNames & 	fieldName & ","
								if fieldName = "PLUGIN_NO" then 
									isSpecialField = true 
									fieldValues = fieldValues & "'"& pluginNo & "',"
								end if
								if fieldName = "MU_MPL_SEARCH_ID" then 
									isSpecialField = true 
									fieldValues = fieldValues & "[~MU_MPL_SEARCH_ID~],"
								end if
								if not isSpecialField then
									fieldValues = fieldValues & getFieldValue(insertTable,masterKey,rs1,pi)
								end if 
							end if
						Next
						insertSQL = "insert into " & insertTable 
						insertSQL = insertSQL & "(" & left(fieldNames,len(fieldNames)-1) & ")"
						insertSQL = insertSQL & " values "
						insertSQL = insertSQL & "(" & left(fieldValues,len(fieldValues)-1) & ")"  
						scriptFile.WriteLine insertSQL
						scriptFile.WriteLine	"GO"  
						rs1.moveNext
						
					loop
					
					'嵌套生成自定义查询的功能点
					insertTable = "mova_function"
					masterKey = "MOVA_FUNCTIONID"
					selectSQL = "SELECT * FROM mova_function WHERE category='"& FRM_objectCode  &"'AND parent_id<>0 AND code LIKE 'Dy_%_Mpl"& mpl_searchID &"%'"
 
					executeQuery conn,rs1,selectSQL, 1, 1
					do
						fieldNames = ""
						fieldValues = ""
						insertSQL = ""
						textSQLinsert = ""
						if rs1.eof or rs1.bof then exit do 
						for pi=0 to rs1.fields.Count-1
							fieldName = ucase(rs1.fields(pi).name)
							if fieldName= masterKey or fieldName="CREATEDATE" OR fieldName="CREATEUSER" OR fieldName="MODIFYDATE" OR fieldName="MODIFYUSER" then
								'跳过 修改新增的字段，以及主键
							else
									isSpecialField = false
									functionName  = ""
									fieldNames = fieldNames & 	fieldName & ","
									
									if fieldName = "PLUGIN_NO" then 
											isSpecialField = true 
											fieldValues = fieldValues & "'"& pluginNo & "',"
									end if
									if fieldName = "PARENT_ID" then 
											isSpecialField = true 
											fieldValues = fieldValues & "[~FUNCTION_PARENT_ID~],"
									end if
									if fieldName = "CODE" then 
											isSpecialField = true 
											arrayCode = split(rs1(pi),"_")
											if ubound(arrayCode)=2 then 
												functionName = arrayCode(0) & "_[~OBJECT_ID~]" & "_Mpl" & mpl_searchID
												fieldValues = fieldValues & "'" & functionName & "',"
											else
												functionName = arrayCode(0) & "[~OBJECT_ID~]" & "_Mpl" & mpl_searchID & "_D"
												fieldValues = fieldValues & "'" & functionName & "',"
											end if 
									end if
									
									if fieldName = "URL" then 
											isSpecialField = true 
											arrayCode = split(rs1("CODE"),"_")
											if ubound(arrayCode)=2 then 
												fieldValues = fieldValues & "'/movaOpps/opp/mpl.asp?isStart=0&object_id=[~OBJECT_ID~]&id=[~MU_MPL_SEARCH_ID~]',"
											else
												fieldValues = fieldValues & getFieldValue(insertTable,masterKey,rs1,pi)
											end if 
									end if
									if fieldName = "CATEGORY" then 
											isSpecialField = true 
											fieldValues = fieldValues & "'"& FRM_objectCode & "',"
									end if
									if not isSpecialField then
										fieldValues = fieldValues & getFieldValue(insertTable,masterKey,rs1,pi)
									end if 
							end if
						Next
						
						scriptFile.WriteLine	"SET IDENTITY_INSERT " & insertTable & " OFF "
					 	scriptFile.WriteLine	"GO"
						insertSQL = "insert into " & insertTable 
						insertSQL = insertSQL & "(" & left(fieldNames,len(fieldNames)-1) & ")"
						insertSQL = insertSQL & " values "
						insertSQL = insertSQL & "(" & left(fieldValues,len(fieldValues)-1) & ")"  
						scriptFile.WriteLine insertSQL
						scriptFile.WriteLine	"GO"  
						scriptFile.WriteLine
						rs1.moveNext
					loop
					
		'嵌套循环生成结束
					scriptFile.WriteLine ""
					
		movaRS.moveNext
	loop
	scriptFile.WriteLine ""

	
	'生成 业务模型的其他功能点
	insertTable = "mova_function"
	masterKey = "MOVA_FUNCTIONID"
	selectSQL = "SELECT * FROM mova_function WHERE category='"& FRM_objectCode  &"' AND parent_id<>0 " 
	executeQuery conn,movaRS,selectSQL, 1, 1
	do
		fieldNames = ""
		fieldValues = ""
		insertSQL = ""
		textSQLinsert = ""
		if movaRS.eof or movaRS.bof then exit do 
		for pi=0 to movaRS.fields.Count-1
			fieldName = ucase(movaRS.fields(pi).name)
			if fieldName= masterKey or fieldName="CREATEDATE" OR fieldName="CREATEUSER" OR fieldName="MODIFYDATE" OR fieldName="MODIFYUSER" then
				'跳过 修改新增的字段，以及主键
			else
					isSpecialField = false
					fieldNames = fieldNames & 	fieldName & ","
					
					if fieldName = "PLUGIN_NO" then 
							isSpecialField = true 
							fieldValues = fieldValues & "'"& pluginNo & "',"
					end if
					if not isSpecialField then
						fieldValues = fieldValues & getFieldValue(insertTable,masterKey,movaRS,pi)
					end if 
			end if
		Next
		
		scriptFile.WriteLine	"SET IDENTITY_INSERT " & insertTable & " OFF "
	 	scriptFile.WriteLine	"GO"
		insertSQL = "insert into " & insertTable 
		insertSQL = insertSQL & "(" & left(fieldNames,len(fieldNames)-1) & ")"
		insertSQL = insertSQL & " values "
		insertSQL = insertSQL & "(" & left(fieldValues,len(fieldValues)-1) & ")"  
		scriptFile.WriteLine insertSQL
		scriptFile.WriteLine	"GO"  

		scriptFile.WriteLine
		movaRS.moveNext
	loop
	scriptFile.WriteLine ""
	
	
	
	scriptFile.close
	Set scriptFile = nothing
	Set writeFso = nothing
	response.write "已经生成了插件脚本！"
	gotoURL "plugin.asp?t=" & getTime() 
end Sub
%>  
 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->