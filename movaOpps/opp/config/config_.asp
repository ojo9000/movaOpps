<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->

<% 
 	
	configArray(getConfigIndex("logo")) = req("logo")  
	configArray(getConfigIndex("system_name")) = req("system_name")  
	configArray(getConfigIndex("company")) = req("company")  
	configArray(getConfigIndex("session_timeout")) = req("session_timeout")  
	configArray(getConfigIndex("upload_path")) = req("upload_path")  
	configArray(getConfigIndex("faild_login")) = req("faild_login")  
	configArray(getConfigIndex("system_role")) = req("system_role")  
	configArray(getConfigIndex("def_split_page")) = req("def_split_page")  
	configArray(getConfigIndex("def_split_page_style")) = req("def_split_page_style")  
	configArray(getConfigIndex("split_log")) = req("split_log")  
	configArray(getConfigIndex("style")) = req("style")  
	configArray(getConfigIndex("debug_info")) = req("debug_info")  
	configArray(getConfigIndex("debug_line_info")) = req("debug_line_info")  
	configArray(getConfigIndex("debug_test")) = req("debug_test")  
	configArray(getConfigIndex("ignore_error")) = req("ignore_error")  
	configArray(getConfigIndex("db_server")) = req("db_server")  
	configArray(getConfigIndex("db_uid")) = req("db_uid")  
	configArray(getConfigIndex("db_pwd")) = req("db_pwd")  
	configArray(getConfigIndex("db_database")) = req("db_database")
	configArray(getConfigIndex("db_schema")) = req("db_schema") 
	configArray(getConfigIndex("first_logo")) = req("first_logo")
	configArray(getConfigIndex("print_template")) = req("print_template")  
	
	configArray(getConfigIndex("mail_smtp")) = req("mail_smtp")  
	configArray(getConfigIndex("mail_user")) = req("mail_user")  
	configArray(getConfigIndex("mail_user_pass")) = req("mail_user_pass")  
	configArray(getConfigIndex("mail_sender")) = req("mail_sender")  
	configArray(getConfigIndex("mail_sender_name")) = req("mail_sender_name")  
	
 
	writeConfig 

gotoURL "./"
%> 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->