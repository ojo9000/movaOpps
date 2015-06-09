<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/core/pub/setup.asp" -->
<%
 
	Dim arrayObjectTitle,arrayParam
	Dim FRM_objectCode
	
	FRM_objectCode=""
	
	Dim FRM_version,FRM_pluginNo,FRM_pluginName,FRM_author
	FRM_pluginNo=""
	FRM_version=""
	FRM_pluginName=""
	FRM_author =""
	
	
	Dim FRM_ObjectId,FRM_functionParentId,FRM_itemId,FRM_muMplSearchId,FRM_fieldId
	FRM_ObjectID ="0"
	FRM_functionParentID = "0"
	FRM_itemID = "0" 
	FRM_muMplSearchId = "0"
	
	Dim skipSQL
	skipSQL= false

	Dim Fso,myFile,fLine,mappathFile
	mappathFile =req("import_file")
	response.write "<BR>"& "正在安装插件，请稍等..."
	Dim mutInstallSql
	mutInstallSql = ""
	Set Fso = Server.CreateObject("Scripting.FileSystemObject")
	Set myFile = Fso.OpenTextFile(Server.MapPath(mappathFile),1,True)
	While Not myFile.AtEndOfStream
		fLine = myFile.ReadLine
		skipSQL = false
		if instr(fLine,"~~##Plugin")=1 then 
			skipSQL = true
			arrayObjectTitle =split(fLine,"##")
			FRM_pluginNo=arrayObjectTitle(2)
			FRM_version=arrayObjectTitle(4)
			FRM_pluginName=arrayObjectTitle(3)
			FRM_author =arrayObjectTitle(5) 
			response.write FRM_pluginNo
			delPlugin FRM_pluginNo 
		end if
		
		if instr(fLine,"~~##~~##")=1 then 
			skipSQL = true
			arrayObjectTitle =split(fLine,"##")
			 
			FRM_pluginNo = arrayObjectTitle(2)
			FRM_objectCode = arrayObjectTitle(3)
		end if
		
		if instr(fLine,"~~##!!GET_PARAM")=1 then  '~~##!!GET_PARAM:OBJECT_ID
			skipSQL = true
			arrayParam = split(fLine,":")
			if arrayParam(1)="FIELD_ID" then 
				FRM_fieldId = getOneField("select max(FIELD_ID) from mu_object_field")
			end if
			if arrayParam(1)="OBJECT_ID" then 
				FRM_ObjectId = getOneField("select max(object_id) from mu_object")
			end if
			if arrayParam(1)="PARENT_ID" then 
				FRM_functionParentId = getOneField("SELECT MAX(mova_functionid) FROM mova_function")
			end if 
			if arrayParam(1)="ITEM_ID" then 
				FRM_itemId = getOneField("SELECT  MAX(mi.item_id) FROM mu_item mi")
			end if 
			if arrayParam(1)="MU_MPL_SEARCH_ID" then 
				FRM_muMplSearchId = getOneField("select max(MU_MPL_SEARCH_ID) from MU_MPL_SEARCH")
			end if 
			
		end if
		if not skipSQL then 
			if  fLine =  "GO" then 
				if instr(mutInstallSql,"[~FIELD_ID~]")>0 then
					mutInstallSql =  replace(mutInstallSql,"[~FIELD_ID~]",FRM_fieldId,1,-1,1)
				end if
				if instr(mutInstallSql,"[~OBJECT_ID~]")>0 then
					mutInstallSql =  replace(mutInstallSql,"[~OBJECT_ID~]",FRM_ObjectId,1,-1,1)
				end if
				if instr(mutInstallSql,"[~FUNCTION_PARENT_ID~]")>0 then 
					mutInstallSql =  replace(mutInstallSql,"[~FUNCTION_PARENT_ID~]",FRM_functionParentId,1,-1,1)
				end if
				if instr(mutInstallSql,"[~ITEM_ID~]")>0 then 
					mutInstallSql =  replace(mutInstallSql,"[~ITEM_ID~]",FRM_itemId,1,-1,1)
				end if
				if instr(mutInstallSql,"[~MU_MPL_SEARCH_ID~]")>0 then 
					mutInstallSql =  replace(mutInstallSql,"[~MU_MPL_SEARCH_ID~]",FRM_muMplSearchId,1,-1,1)
				end if
				executeUpdate conn,mutInstallSql
				mutInstallSql = ""
			else
				mutInstallSql = mutInstallSql &  fLine  & vbcrlf
			end if 
		end if 
	Wend
	myFile.Close
	Set myFile = Nothing
	Set Fso = Nothing
	 
	if   Err.number <> 0   then 
		reponse.write "<br>插件安装失败！"
		Set myFile = Nothing
		Set Fso = Nothing
	else
		Dim insertPluginSQL
		insertPluginSQL = "insert into mova_plugin (plugin_name,plugin_no,version,author,createdate,createuser) values ("
		insertPluginSQL = insertPluginSQL & "'" &FRM_pluginName & "',"
		insertPluginSQL = insertPluginSQL & "'" &FRM_pluginNo & "',"
		insertPluginSQL = insertPluginSQL & "'" &FRM_version & "',"
		insertPluginSQL = insertPluginSQL & "'" &FRM_author& "',"
		insertPluginSQL = insertPluginSQL & " GETDATE() ,"
		insertPluginSQL = insertPluginSQL & cint(session("userid"))
		insertPluginSQL = insertPluginSQL & ")"
		executeUpdate conn,insertPluginSQL
		response.write "<BR>"& "插件安装成功。"
		gotoURL "./?t=" & getTime() 
	end if 
%>		 
 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->