<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->

<% 
		Dim sqlString

		FLD_ext_domain= req("ext_domain")
		FLD_ext_menu = req("ext_menu")
		FLD_ext_menu_bk = req("ext_menu_bk")
		if FLD_ext_menu = "" then FLD_ext_domain = ""
	  FLD_customer_no = req("customer_no")
		
		sqlString = "Select * From mu_config Where customer_no='" & FLD_customer_no & "'"
		
		executeQuery conn,movaRS,sqlString,1,3  
		movaRS("customer_no") = session("customerNo")
		movaRS("ext_domain") = FLD_ext_domain
		movaRS("ext_menu") = FLD_ext_menu
	 	
	 	movaRS("modifyDate") = Now
		movaRS("modifyUser") = cint(session("userid"))
		
		movaRS.Update
		 
		'如果屏蔽外挂菜单
		function_status="T"
		if FLD_ext_menu<>"" and FLD_ext_menu_bk="" then 			function_status = "T" 	'新增
		if FLD_ext_menu=""  and  FLD_ext_menu_bk<>"" then 			function_status = "F"		'删除
		if FLD_ext_menu =  FLD_ext_menu_bk      then 			function_status = ""			'未改变
			
		'设置菜单组 格式 "extMenu_{M019}_{ID}
		if function_status<>"" then 
			if function_status = "F" then 
				 executeUpdate conn,"update mova_function set status='" & function_status & "' where code='" & getExtMenu_sec() & "'" 
			end if
			updateMPLSQL = "Select top 1 * From mova_function Where code = '" & getExtMenu_sec() & "'" 
			executeQuery conn,movaRS,updateMPLSQL,1,3
			if movaRS.eof or movaRS.bof then 
				movaRS.addNew
				movaRS("sortNo") =FLD_object_id
				movaRS("createdate") = Now
				movaRS("createUser") = cint(session("userid"))
			end if 
			movaRS("parent_Id") = 0
			movaRS("status")=function_status
			movaRS("category") = getExtMenu_sec()
			movaRS("categoryName") = FLD_ext_menu
			movaRS("code") = getExtMenu_sec()
			movaRS("functionName") = FLD_ext_menu
			movaRS("function_type") = "URL"
			movaRS("url") = "#"
			movaRS("modifyDate") = Now
			movaRS("modifyUser") = cint(session("userid"))
			movaRS.Update
 			movaRS.close
		end if 
		
	 gotoURL "./extMenu.asp"
%> 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->


