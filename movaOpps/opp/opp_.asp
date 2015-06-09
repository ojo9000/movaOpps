<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->

<%
'debug 1
'Dim Form：

'Get Get Param:
Dim FLD_object_id,FLD_opp_id,FLD_object_code,FLD_Object_value_no,FLD_table,FLD_customer_id
Dim FLD_hierarchy_id,FLD_chk_repeat,FLD_add_continue,FLD_team
Dim isNew,sqlString

FLD_object_id=getParamID(req("i"))
FLD_opp_id = getParamID(req("Id"))
FLD_object_code = req("o")
FLD_Object_value_no = req("no")
FLD_table = req("t")
FLD_customer_id =getParamID( req("c") )
FLD_hierarchy_id = cint(req("hierarchy_id"))
FLD_chk_repeat = req("chk_repeat")
FLD_add_continue = req("add_continue") 

if req("team")<>"" then 
	FLD_team = req("team")
else
	FLD_team= session("team")
end if 
 
 
isNew =false

getObjectField FLD_object_id,"EDIT" 

'获取表的主键字段，以及编码
Dim keyName

if ucase(FLD_table) = ucase("mu_customer") then 
	keyName = "customer_id"
else
	keyName = "opp_id"
end if 


'DataBase Coding....:
sqlString = "Select * From "& FLD_table & " Where owner='" &  session("customerNo") &"' and  "& keyName &"=" & FLD_opp_id
 
executeQuery conn,movaRS,sqlString,1,3
if movaRS.eof or movaRS.bof  then
	
	
	movaRS.addnew
	isNew = true
	
	movaRS("owner")= session("customerNo")
	
	

	movaRS("createdate") = Now
	movaRS("createUser") = cint(session("userid"))
	movaRS("archive")="F"
	'差异字段赋值
	if ucase(FLD_table) = ucase("mu_customer") then 
		movaRS("customer_no") = getSerial(ucase(FLD_table))
		movaRS("object_code") = FLD_object_code
	else
		movaRS("object_code") = FLD_object_code
		movaRS("customer_id") = FLD_customer_id
		movaRS("opp_no") = getSerial(ucase(FLD_table) )
	end if 
	movaRS("hierarchy_id")=cint(FLD_hierarchy_id)
	
end if 
movaRS("team") =FLD_team
movaRS("search_scope")=req("_SCOPE")
'RS seting...:
Dim k,j ,FormName
for k=1 to ObjectFieldArray_X
		for j=1 to ObjectFieldArray_Y
			if ObjectFieldArray(k,1)="" then exit For
		Next
		if ObjectFieldArray(k,1)="" then exit For
			
		FormName = getFormName(ObjectFieldArray(k,1))
		if ObjectFieldArray(k,10)="T" then 
				session(FLD_object_code & "_" & ObjectFieldArray(k,1)) = req(FormName)
				 
		end if
		if isNew or req("d")="T" then 
			'如果是新增，则逐个记录
			addLogDesription ObjectFieldArray(k,2),req(FormName)
		else
			'如果是编辑，则只记录变化了的
			if movaRS(ObjectFieldArray(k,1))&""<> req(FormName) then 
				addLogDesription ObjectFieldArray(k,2),req(FormName)
			end if 
		end if
		if ucase(left(ObjectFieldArray(k,1),1)) = "D" then 
			if IsNumeric(req(FormName)) then 
				movaRS(ObjectFieldArray(k,1)) = req(FormName)
			else
				movaRS(ObjectFieldArray(k,1))= 0
			end if 
		else
			'response.write ObjectFieldArray(k,1) &"^"
			movaRS(ObjectFieldArray(k,1))= req(FormName)
		end if 
Next

movaRS("modifyDate") = Now
movaRS("modifyUser") = cint(session("userid"))
if req("d") ="T" then
	movaRS("archive")="T"
end if 
movaRS.Update 
FLD_opp_id = movaRS(keyName)
Dim FLD_opp_no
if ucase(keyName)="CUSTOMER_ID" then 
	FLD_opp_no = movaRS("customer_no")
else
	FLD_opp_no = movaRS("opp_no")
end if 
 

if req("d") ="T" then
	setLog FLD_opp_id,FLD_Object_code,FLD_Object_value_no,"删除",logDescription 
else
	  if isNew then 
			setLog FLD_opp_id,FLD_Object_code,FLD_Object_value_no,"新增",logDescription 
		else 
			if logDescription<>"" then
				if req("logType")<>"" then 
					setLog FLD_opp_id,FLD_Object_code,FLD_Object_value_no,req("logType"),logDescription 
				else
					setLog FLD_opp_id,FLD_Object_code,FLD_Object_value_no,"编辑",logDescription 
				end if
				 
			end if 
		end if 
end if  



if ucase(FLD_table) = ucase("mu_customer") then 
	 FLD_customer_id = FLD_opp_id
end if 

 

if req("d") ="T" then
	if cint(FLD_object_id)=21 then 
		gotourl "/movaOpps/opp/mpl.asp?object_id=21&id=35"
	else
		gotourl "searchOpp.asp?objectId=" & FLD_object_id 
	end if 
	
else
	'收集客户信息里的电话号码
	Dim clearPhone,insertPhone,clearEmptyPhone
	if ucase(FLD_table) = ucase("mu_customer") then 
		clearPhone ="delete from mu_phone where owner='" & session("customerNo") & "' and customer_id=" & FLD_customer_id
		executeUpdate conn,clearPhone
		getObjectField FLD_object_id,"EDIT" 
		'RS seting...: 
		'插入主要电话
		insertPhone = "insert into mu_phone (owner,customer_id,phone,category,description,createdate,createUser,modifydate,modifyUser) select  "
		insertPhone = insertPhone & "'"& session("customerNo") &"',"
		insertPHone = insertPhone & FLD_customer_id & ","
		insertPHone = insertPhone & "main_phone" & ","
		insertPHone = insertPhone & "'*主要电话',"
		insertPHone = insertPhone & "'自动收集产生',"
		insertPhone = insertPhone & "modifyDate" & ","
		insertPhone = insertPhone & "modifyUser" & ","
		insertPhone = insertPhone & "modifyDate" & ","
		insertPhone = insertPhone & "modifyUser" & " "
		insertPhone = insertPhone & " from mu_customer where owner='" & session("customerNo") & "' and archive='F' and customer_id=" & FLD_customer_id
		executeUpdate conn,insertPhone
					
		for k=1 to ObjectFieldArray_X
				for j=1 to ObjectFieldArray_Y
					if ObjectFieldArray(k,1)="" then exit For
				Next
				if ObjectFieldArray(k,1)="" then exit For
				
				if  ObjectFieldArray(k,3)="PHONE" then 
					insertPhone = "insert into mu_phone (owner,customer_id,phone,category,description,createdate,createUser,modifydate,modifyUser) select  "
					insertPhone = insertPhone & "'"& session("customerNo") &"',"
					insertPHone = insertPhone & FLD_customer_id & ","
					insertPHone = insertPhone &  ObjectFieldArray(k,1) & ","
					insertPHone = insertPhone & "'" & ObjectFieldArray(k,2) & "',"
					insertPhone = insertPhone & "'自动收集产生',"
					insertPhone = insertPhone & "modifyDate" & ","
					insertPhone = insertPhone & "modifyUser" & ","
					insertPhone = insertPhone & "modifyDate" & ","
					insertPhone = insertPhone & "modifyUser" & " "
					insertPhone = insertPhone & " from mu_customer where owner='" & session("customerNo") & "' and archive='F' and customer_id=" & FLD_customer_id
					executeUpdate conn,insertPhone
				end if 
 
			Next
			clearEmptyPhone = "delete from mu_phone where phone='' or phone is null"
		 	executeUpdate conn,clearEmptyPhone
	end if
	%>
	<!-- #include virtual="/movaOpps/userDefine/u_opp_.asp" -->
	<%
	if req("navType")="dialog" then
		%>
			<script>
			parent.$('#info_dailog').dialog("close"); 
			parent.location.reload();
			</script>
		<%
	else 
 
		if FLD_add_continue = "T" and isNew=true then 
			%>
			<script>alert("已经成功创建\n 创建下一条");</script>
			<%
			gotoURL  "opp.asp?dyParam="&req("dyParam")&"&objectId=" & FLD_object_id & chr(38) & "cid=" & FLD_customer_id & "&continue=T"
		else
			if FLD_add_continue = "T" then 
					'response.write  "opp.asp?dyParam="&req("dyParam")&"&objectId=" & FLD_object_id & chr(38) & "cid=" & FLD_customer_id & "&continue=T"
					gotoURL  "opp.asp?dyParam="&req("dyParam")&"&objectId=" & FLD_object_id & chr(38) & "cid=" & FLD_customer_id & "&continue=T"
			else
				gotoURL  "opp.asp?objectId=" & FLD_object_id & chr(38) & "id=" & FLD_opp_id & chr(38) &  "cid=" & FLD_customer_id & "&continue=F"		
			end if 
			
		end if 
	end if 
end if 
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
