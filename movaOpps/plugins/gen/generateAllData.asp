<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" --> 
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/core/pub/setup.asp" -->
<%
		Dim paramMapFile,paramTable,paramImportSQL,haveKey
 		
 		Dim tableList 
 		
 		'tableList= "mova_function,mova_log,mova_picklist,mova_plugin,mova_plugin_object,mova_role,mova_role_reuse,mova_rolefunction,mova_serialno,mova_team,mova_test,mova_user,mova_user_team,mu_config,mu_ext_menu,mu_field_set,mu_item,mu_item_list,mu_knowledge,mu_mpl_condition,mu_mpl_group,mu_mpl_order,mu_mpl_pre_condition,mu_mpl_search,mu_mpl_select,mu_object,mu_object_field,mu_object_master_field,mu_object_rule,mu_phone,test,mu_opp1,mu_opp2,mu_opp3,mu_opp5,mu_opp6,mu_opp8"
 
 tableList= "mova_function,mova_log,mova_picklist,mova_plugin,mova_plugin_object,mova_role,mova_role_reuse,mova_rolefunction,mova_serialno,mova_team,mova_test,mova_user,mova_user_team,mu_config,mu_customer,mu_ext_menu,mu_field_set,mu_item,mu_item_list,mu_knowledge,mu_mpl_condition,mu_mpl_group,mu_mpl_order,mu_mpl_pre_condition,mu_mpl_search,mu_mpl_select,mu_object,mu_object_field,mu_object_master_field,mu_object_rule,mu_opp,mu_opp1,mu_opp10,mu_opp11,mu_opp12,mu_opp13,mu_opp14,mu_opp15,mu_opp16,mu_opp17,mu_opp18,mu_opp19,mu_opp2,mu_opp20,mu_opp3,mu_opp4,mu_opp5,mu_opp6,mu_opp7,mu_opp8,mu_opp9,mu_phone,test"
 
 		
 		paramMapFile = "/movaOpps/plugins/gen/install/all_data.sql"
 		'重新创建基础数据文件
 		newTxtFile paramMapFile
 		
 		
 		arrayTableList=split(tableList,",")
		For Each itemTable In arrayTableList
			paramTable = itemTable
			paramImportSQL = "SELECT * FROM  "  & itemTable 
			haveKey=true
			generateDataSQL conn,paramMapFile,paramTable,paramImportSQL,haveKey
		Next 
		 
		
		
		response.write "已经生成了初始化脚本！<br><a href='../plugin.asp?t=" & getTime() &"'>点击返回</a>"  
		'gotoURL "../plugin.asp?t=" & getTime() 
%>
 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->