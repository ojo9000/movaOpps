<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->

<%
 
'modi code:
Dim mu_mpl_search_id,TOEXCELLR
'Dim Form_Frm
Dim FRM_del,FRM_object,FRM_object_name,FRM_search_name,FRM_abbr
TOEXCELLR= ""
if req("id")<>"" then 
	session("mu_mpl_search_id") =  req("id")
end if 
'if  chkAccount("mplSearch") or  chkAccount(getMplSec(req("object_id"),session("mu_mpl_search_id"),"DY_MPL_D")) then 
'else
'	chkAccountStr getMplSec(req("object_id"),session("mu_mpl_search_id"),"DY_MPL_D")
'	chkAccountStr "mplSearch"
'end if 


mu_mpl_search_id = session("mu_mpl_search_id") 

Dim sqlString 
sqlString = "select mpl.*,o.table_name from mu_mpl_search mpl,mu_object o where o.object_code=mpl.object_code and   mpl.archive='F' and o.is_publish='T' and mpl.owner='"& session("customerNo") &"' and (mpl.team=0 or mpl.team=" & session("team") & ")  and mpl.mu_mpl_search_id="&mu_mpl_search_id
executeQuery conn,movaRS,sqlString,1,1
if movaRS.bof or movaRS.eof then
	movaRS.close
	msgbox "记录不存在，或者您打开了一个错误的页面",1
else
	
	'Dim Form_Frm
	Dim FRM_object_code,FRM_table_name,FRM_allow_download,FRM_isSingle
	Dim o_id
	FRM_object_code = movaRS("object_code")
	FRM_search_name = movaRS("search_name")
	FRM_table_name = movaRS("table_name")
	FRM_abbr = movaRS("abbr") 
	FRM_allow_download = movaRS("allow_download")
	FRM_isSingle = getObjectPropertyByCode(FRM_object_code,"is_single")
	o_id= getObjectPropertyByCode(FRM_object_code,"object_id")
	movaRS.close
 
		response.contentType="application/vnd.ms-excel"
		Response.Addheader   "Content-Disposition ",   "attachment;Filename= " & FRM_search_name & "_" & session("roleScope") & "_" & session("team") & "_" & date() &   ".xls " 
		Response.Charset   =   "GB2312 " 
 
	Dim tempM  
	
	for tempM=0 to 9 
	 	mplPreCondition(tempM,0)=""	'表单变量名
		mplPreCondition(tempM,1)=""	'是否是数值
		mplPreCondition(tempM,2)=""	'条件类型
		mplPreCondition(tempM,3)=""	'字段名
		 
	Next 
	tempM =0 


	sqlString = "Select * From mu_mpl_pre_condition Where archive='F' and mu_mpl_search_id =" & mu_mpl_search_id & " order by sort_no"
	'response.write sqlString 
	executeQuery conn,movaRS,sqlString,1,3
	dim pre_conditionCount
	pre_conditionCount = movaRS.recordCount
 
	Dim Cur_col,max_col
		Cur_col = 0
		max_col = 2 
	do 
		if movaRS.eof or movaRS.bof then exit do
		Dim FRM_archive,FRM_field_code,FRM_sort_no,FRM_mu_mpl_pre_condition_id
		Dim FRM_mu_mpl_search_id,FRM_field_name,FRM_search_type,FRM_is_Numeric
		Dim FLD_field_code
		FRM_archive = movaRS("archive")
		FRM_field_code = movaRS("field_code")
		FRM_sort_no = movaRS("sort_no")
		FRM_mu_mpl_pre_condition_id = movaRS("mu_mpl_pre_condition_id")
		FRM_mu_mpl_search_id = movaRS("mu_mpl_search_id")
		FRM_field_name = movaRS("field_name")
		FRM_search_type = movaRS("search_type") 
		FRM_is_Numeric = movaRS("is_Numeric")
		
		'转义字段名中的. 为双下划线__
		FLD_field_code = FRM_field_code		'保留原来的字段名
		'处理日期距离天数
				IF 	instr(FRM_field_code,"{^DATEDIFF(")>0 THEN 
					FRM_field_code = REPLACE(FRM_field_code,"{^DATEDIFF(","")
					FRM_field_code = REPLACE(FRM_field_code,")}","")
					FRM_field_code = "datediff(day,CONVERT(VARCHAR(10),GETDATE(),120),"& FRM_field_code &")"
				END IF  
				
				
		FRM_field_code = replace(FRM_field_code,".","__")
 
		
		if FRM_search_type = "=" or FRM_search_type = "like"  then 
			mplPreCondition(tempM,0) = FRM_field_code
			mplPreCondition(tempM,1) = FRM_is_Numeric
			mplPreCondition(tempM,2) = FRM_search_type
			mplPreCondition(tempM,3) = FLD_field_code
		end if 
	 
		if FRM_search_type = "timeRange" or FRM_search_type="dateRange" then
			mplPreCondition(tempM,0) = "__S_" & FRM_field_code
			mplPreCondition(tempM,1)=FRM_is_Numeric
			mplPreCondition(tempM,2) = FRM_search_type
			mplPreCondition(tempM,3) = FLD_field_code
			tempM=tempM+1
			mplPreCondition(tempM,0) = "__E_" & FRM_field_code
			mplPreCondition(tempM,1)=FRM_is_Numeric
			mplPreCondition(tempM,2) = FRM_search_type
			mplPreCondition(tempM,3) = FLD_field_code
		 
		end if
 
		tempM = tempM + 1
	  
		movaRS.moveNext
	loop


 
			for tempM=0 to 9 
					if mplPreCondition(tempM,0)="" then 
						exit for 
					end if 
				 
				Next 
			
			Dim paramPreConditionSQL
			paramPreConditionSQL=""
			if req("isStart") = "1" then
				for tempM=0 to 9 
					if mplPreCondition(tempM,0)="" then 
						exit for 
					end if 
				Next 
			else
				
				if req("isStart") = "0" then 
					for tempM=0 to 9 
						if mplPreCondition(tempM,0)="" then 
							exit for 
						end if 
						session(mplPreCondition(tempM,0))=trim(req(mplPreCondition(tempM,0)))
					Next 
				end if
					
					for tempM=0 to 9 
						if mplPreCondition(tempM,0)="" then 
							exit for 
						end if 
						if session(mplPreCondition(tempM,0))<>""  then 
							 if mplPreCondition(tempM,2) = "=" then 
							 		if mplPreCondition(tempM,1)="T" then 
							 			paramPreConditionSQL = paramPreConditionSQL &  " and " & mplPreCondition(tempM,3) & "=" & session(mplPreCondition(tempM,0))   & " " 
							 		else
							 			paramPreConditionSQL = paramPreConditionSQL & " and " &  "upper(" & mplPreCondition(tempM,3) & ")='" & ucase(session(mplPreCondition(tempM,0)))  & "' " 
							 			
							 		end if 
							 end if 
							 if mplPreCondition(tempM,2) = "like" then 
							 		paramPreConditionSQL = paramPreConditionSQL &  " and " & "upper(" & mplPreCondition(tempM,3) & ") like '%" & ucase(session(mplPreCondition(tempM,0)))   & "%' " 
							 end if 
						 	 
						 	 if mplPreCondition(tempM,2) = "dateRange" or  mplPreCondition(tempM,2) = "timeRange"  then 
						 			if left(mplPreCondition(tempM,0),3)="__S" then 
						 				paramPreConditionSQL = paramPreConditionSQL & " and " & mplPreCondition(tempM,3) & ">='" & trim(session(mplPreCondition(tempM,0)))   & "'" 
						 			end if 
						 			if left(mplPreCondition(tempM,0),3)="__E" then 
						 				paramPreConditionSQL = paramPreConditionSQL &  " and " & mplPreCondition(tempM,3) & "<='" & trim(session(mplPreCondition(tempM,0)))   & "23:59' " 
						 			end if 
						 			
						 	 end if 
						end if
					Next
		 
		 	end if 
		 	Dim invalidMpl
	invalidMpl = mplSearch(paramPreConditionSQL,FRM_isSingle,FRM_table_name,FRM_object_code,mu_mpl_search_id)
	 
end if 

'获取列数量
for tempM=0 to 99  
  				if mplFieldArray(tempM,0)="" then  
  					Exit for
  				end if 
Next
tempM=tempM+1
 if invalidMpl then 
 response.write "<META content="&chr(34)&"application/vnd.ms-excel; charset=gb2312"&chr(34)&" http-equiv="&chr(34)&"Content-Type"&chr(34)&"> " & vbcrlf
 response.write "<TABLE border=1 cellSpacing=1 cellPadding=0 width='595px'>" & vbcrlf
 response.write "<tr><td class=xl25 colspan='"& tempM  &"' align='center'>" & FRM_search_name & "</td></tr>" & vbcrlf
Dim rangInfo 
rangInfo = ""
sqlString = "Select * From mu_mpl_pre_condition Where archive='F' and mu_mpl_search_id ="&mu_mpl_search_id & " order by sort_no"
	executeQuery conn,movaRS,sqlString,1,3
	pre_conditionCount = movaRS.recordCount
	if pre_conditionCount>0 then
		
	 	do 
		if movaRS.eof or movaRS.bof then exit do
		FRM_field_code = movaRS("field_code")
				'处理日期距离天数
				IF 	instr(FRM_field_code,"{^DATEDIFF(")>0 THEN 
					FRM_field_code = REPLACE(FRM_field_code,"{^DATEDIFF(","")
					FRM_field_code = REPLACE(FRM_field_code,")}","")
					FRM_field_code = "datediff(day,CONVERT(VARCHAR(10),GETDATE(),120),"& FRM_field_code &")"
				END IF  
				
		FRM_field_name = movaRS("field_name")
		FRM_search_type = movaRS("search_type") 
		
		'转义字段名中的. 为双下划线__
		FLD_field_code = FRM_field_code		'保留原来的字段名
		FRM_field_code = replace(FRM_field_code,".","__")
		
		
		
		if FRM_search_type = "=" then 
			if req(FRM_field_code)<>"" then 
				Dim actFieldCode 
				actFieldValue = req(FRM_field_code)
				if req(FRM_field_code &"_txt")<>"" then 
					actFieldValue = req(FRM_field_code &"_txt")
				end if 
				rangInfo = rangInfo &   FRM_field_name & " 等于 " &  actFieldValue  & " /<br>"
			end if 
		end if 
		if FRM_search_type = "like" then 
			if req(FRM_field_code)<>"" then 
				rangInfo = rangInfo &    FRM_field_name & " 包含 " &  req(FRM_field_code) & " /<br>"
			end if
		end if 
		
		if FRM_search_type = "timeRange" or FRM_search_type="dateRange"  then
			if req("__S_" & FRM_field_code)<>"" then 
				rangInfo = rangInfo &    FRM_field_name & " 开始于 " &  req("__S_" & FRM_field_code) & " <br>"
			end if
			
			if req("__E_" & FRM_field_code)<>"" then 
				rangInfo = rangInfo & FRM_field_name & " 结束于 " &  req("__E_" & FRM_field_code) & "/<br>"
			end if
			
		end if 
		movaRS.moveNext
		
	loop
	if rangInfo<>"" then 
			response.write  "<tr><td class=xl24 colspan='"& tempM & "'>当前范围是：" & rangInfo &  "</td></tr>" & vbcrlf
		end if 
	end if 
	 
 
	movaRS.close

  	 		response.write  "<TR>"
  	 		response.write "<td class=xl24>序号</td>"
  			for tempM=0 to 99  
  				if mplFieldArray(tempM,0)="" then  
  					Exit for
  				end if 
 					response.write "<td class=xl24>" & mplFieldArray(tempM,1) & "</td>"
  			Next
			response.write "</TR>" & vbcrlf
			executeQuery conn,rs,mplSQL, 1, 1
			Dim mplNo
			mplNo=0
			do 
				
				if rs.eof or rs.bof then exit do 
    			response.write "<TR>"
    			Dim k
    			response.write "<td class=xl25>" & mplNo+1 & "</td>"
    			for k=2 to rs.fields.count-1
  					response.write "<td class=xl25>" & rs(k) & "</td>"
	  			Next
  	 
		rs.Movenext
	loop
	rs.close
			if mplCountSQL<>"" then 
			executeQuery conn,rs,mplCountSQL, 1, 1
			do 
				if rs.eof or rs.bof then exit do 
				response.write "<Tr>"
  			Dim j 
  			 for j=2 to rs.fields.count-1
  				   response.write  "<td class=xl25>"  & rs(j)   & "</td>"
  			Next
  	 
			rs.Movenext
			loop
			
	rs.close
end if  
response.write "</TABLE>" & vbcrlf

end if
Dim tou,di
'tou=readtext("tou.txt")
'di=readtext("di.txt")
'response.write tou & TOEXCELLR & di
 %>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
