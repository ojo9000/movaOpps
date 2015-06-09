<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" --> 
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/core/pub/setup.asp" -->
<%
		Dim paramMapFile,paramTable,paramImportSQL,haveKey
 		
 		paramMapFile = "/movaOpps/plugins/gen/install/init1.sql"
 		'重新创建基础数据文件
 		newTxtFile paramMapFile
		
		paramTable = "mova_function"
		paramImportSQL = "SELECT * FROM mova_function WHERE "
		paramImportSQL = paramImportSQL & " (category NOT LIKE 'M00_%' "
		paramImportSQL = paramImportSQL & " AND category NOT LIKE  'extMenu%'"
		paramImportSQL = paramImportSQL & " and is_pub='T' and plugin_no is null) "
		paramImportSQL = paramImportSQL & " OR category = 'M00_K0001' "
		haveKey=true
		generateDataSQL conn,paramMapFile,paramTable,paramImportSQL,haveKey
		
		paramTable = "mova_picklist"
		paramImportSQL = "select * from " & paramTable & " where 1=1"
		haveKey=true
		generateDataSQL conn,paramMapFile,paramTable,paramImportSQL,haveKey
		
		paramTable = "mova_role"
		paramImportSQL = "select top 1 * from " & paramTable & " where 1=1"
		haveKey=true
		generateDataSQL conn,paramMapFile,paramTable,paramImportSQL,haveKey
		
		paramTable = "mova_serialno"
		paramImportSQL = "select * from " & paramTable & " where 1=1"
		haveKey=false
		generateDataSQL conn,paramMapFile,paramTable,paramImportSQL,haveKey
		
		paramTable = "mova_team"
		paramImportSQL = "select top 1 * from " & paramTable & " where 1=1"
		haveKey=true
		generateDataSQL conn,paramMapFile,paramTable,paramImportSQL,haveKey
		
		paramTable = "mova_user"
		paramImportSQL = "select top 1 * from " & paramTable & " where 1=1"
		haveKey=true
		generateDataSQL conn,paramMapFile,paramTable,paramImportSQL,haveKey
		
		paramTable = "mu_config"
		paramImportSQL = "select * from " & paramTable & " where 1=1"
		haveKey=true
		generateDataSQL conn,paramMapFile,paramTable,paramImportSQL,haveKey
		
		paramTable = "mu_field_set"
		paramImportSQL = "select * from " & paramTable & " where 1=1"
		haveKey=true
		generateDataSQL conn,paramMapFile,paramTable,paramImportSQL,haveKey
		
		paramTable = "mu_item"
		paramImportSQL = "select * from " & paramTable & " where is_pub='T' and archive='F'"
		haveKey=true
		generateDataSQL conn,paramMapFile,paramTable,paramImportSQL,haveKey
		
		paramTable = "mu_item_list"
		paramImportSQL = "select * from " & paramTable & " where archive='F' and item_id in "
		paramImportSQL = paramImportSQL & " ("
		paramImportSQL = paramImportSQL & " select item_id from mu_item where is_pub='T' and archive='F'  "
		paramImportSQL = paramImportSQL & " )"
		haveKey=true
		generateDataSQL conn,paramMapFile,paramTable,paramImportSQL,haveKey
		
		paramTable = "mu_object"
		paramImportSQL = "select * from " & paramTable & " where object_id=1"
		haveKey=true
		generateDataSQL conn,paramMapFile,paramTable,paramImportSQL,haveKey
		
		paramTable = "mu_object_field"
		paramImportSQL = "select * from " & paramTable & " where  object_id=1"
		haveKey=true
		generateDataSQL conn,paramMapFile,paramTable,paramImportSQL,haveKey
		response.write "已经生成了初始化脚本！<br><a href='../plugin.asp?t=" & getTime() &"'>点击返回</a>"  
		'gotoURL "../plugin.asp?t=" & getTime() 
%>
 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->