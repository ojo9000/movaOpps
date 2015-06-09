<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->

<%
'debug 1
'Dim Form：
Dim FLD_actionType,FLD_customer_id,FLD_mu_ext_menu_id,FLD_menu_name,FLD_menu_url,FLD_sort_no
Dim sqlString,function_status,extMenuRootFunctionID,extMenuRootfunctionName,updateMPLSQL,FLD_object_id
'Get Get Param:
FLD_actionType = req("actionType")
FLD_customer_id=getParamID(req("customer_id"))
FLD_mu_ext_menu_id = getParamID(req("mu_ext_menu_id"))

FLD_menu_name=req("menu_name")
FLD_menu_url = req("menu_url") 
FLD_sort_no = SafeCint(req("sort_no")) 

FLD_parentID=SafeCint(req("parentID"))

	
	
	'DataBase Coding....:
	if FLD_mu_ext_menu_id="" then 
		sqlString = "Select * From mu_ext_menu Where mu_ext_menu_id is null"
	else
		sqlString = "Select * From mu_ext_menu Where mu_ext_menu_id =" & FLD_mu_ext_menu_id
	end if 
	executeQuery conn,movaRS,sqlString,1,3
	function_status="T"
	if movaRS.eof or movaRS.bof  then
		movaRS.addnew
		movaRS("customer_no") = session("customerNo")
		movaRS("createdate") = Now
		movaRS("createUser") = cint(session("userid"))
	end if 
		movaRS("menu_name")= FLD_menu_name
		movaRS("menu_url")= FLD_menu_url
		movaRS("sort_no")= FLD_sort_no
		movaRS("modifyDate") = Now
		movaRS("modifyUser") = cint(session("userid"))
		movaRS("parent_id") = FLD_parentID

		if FLD_actionType = "DELETE" then 
			movaRS("archive") = "T"
			function_status="F"
		end if  
		movaRS.Update   
		FLD_mu_ext_menu_id = movaRS("mu_ext_menu_id")
		movaRS.close
		
	
Dim cCategory,cCname,cFunctionType,cUrl,cCode
if FLD_parentID =0 then 
	cCategory = getExtMenu_sec()&FLD_mu_ext_menu_id
	cCname = FLD_menu_name
	cFunctionType = "URL"
	cUrl = "#"
	cCode = getExtMenu_item_sec(FLD_mu_ext_menu_id) 
else
		updateMPLSQL = "Select top 1 * From mova_function Where mova_functionid="& FLD_parentID
		executeQuery conn,movaRS,updateMPLSQL,1,1
		cCategory = movaRS("category")
		cCname = movaRS("categoryName")
		cURL = replace(FLD_menu_url,"{DOMAIN}",session("ext_domain"),1,1,1)
		cCode = getExtMenu_item_sec(FLD_mu_ext_menu_id) 
end if 
 
	
	'外挂菜单，格式：extMenu_{M019}_{ID}
		extMenuRootFunctionID = getOnefield("select mova_functionid from mova_function where code='" & getExtMenu_sec() & "'")
		extMenuRootfunctionName = getOnefield("select functionName from mova_function where code='" & getExtMenu_sec() & "'")
		updateMPLSQL = "Select top 1 * From mova_function Where code = '" & getExtMenu_item_sec(FLD_mu_ext_menu_id)  & "'" 
		executeQuery conn,movaRS,updateMPLSQL,1,3
		if movaRS.eof or movaRS.bof then 
			movaRS.addNew
			movaRS("sortNo") =FLD_object_id
			movaRS("createdate") = Now
			movaRS("createUser") = cint(session("userid"))
		end if 
		movaRS("status")=function_status
		movaRS("parent_Id") = FLD_parentID
		movaRS("category") = cCategory
		movaRS("categoryName") = cCname 
		movaRS("code") = cCode
		movaRS("functionName") = FLD_menu_name
		movaRS("function_type") = "URL"
		movaRS("url") = cURL
		movaRS("modifyDate") = Now
		movaRS("modifyUser") = cint(session("userid"))
		movaRS.Update
		movaRS.close
		 
	 gotoURL "./extMenu.asp"

%>
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->


