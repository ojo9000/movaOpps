<%

 'mplObjectId  查询模型id
 'mplNo        自定义查询编码
 'mplId        自定义查询id
 'param1       自定义查询URL参数1
 'param2       自定义查询URL参数2
 'mplTitle     查询标题
 'mplRightTitle 查询右侧标题
 'mplIsStart 首次查询，必须为0 
 'forceSingle     是否强制单表查询
 'showWindow     是否链接窗口打开
 
function  mplSearchView(mplObjectId,mplNo,mplId,param1,param2,mplTitle,mplRightTitle,mplIsStart,forceSingle,showWindow)
Dim OutListString
OutListString = ""
'modi code:
Dim mu_mpl_search_id
'Dim Form_Frm
Dim FRM_del,FRM_object,FRM_object_name,FRM_search_name,FRM_abbr 
if param1<>"" then 
	session("mplParam1")=param1
end if 
if param1<>"" then 
	session("mplParam2")=param2
end if 


if mplNo<>"" then 
	session("search_no") =  mplNo
	session("object_id") =  mplObjectId
	session("mu_mpl_search_id") =  "0"
else
	if mplId<>"" then 
		session("mu_mpl_search_id") = mplId
		session("object_id") =  mplObjectId
		session("search_no") = ""
	end if 
end if 


Dim sqlString
sqlString = "select mpl.*,o.table_name from mu_mpl_search mpl,mu_object o where o.object_code=mpl.object_code and   mpl.archive='F' and o.is_publish='T' and mpl.owner='"& session("customerNo") &"' and (mpl.team=0 or mpl.team=" & session("team") & ")  and (mpl.mu_mpl_search_id="&session("mu_mpl_search_id")  & " or  search_no='" & session("search_no") & "')" 
 
executeQuery conn,movaRS,sqlString,1,1
if movaRS.bof or movaRS.eof then
	movaRS.close
	msgbox "记录不存在，或者您打开了一个错误的页面",1
else
	session("mu_mpl_search_id") = movaRS("mu_mpl_search_id")
	if  not chkAccount("mplSearch")  then
		'chkAccountStr getMplSec(session("object_id"),session("mu_mpl_search_id"),"DY_MPL")
	end if 

	mu_mpl_search_id = session("mu_mpl_search_id") 


	'Dim Form_Frm
	Dim FRM_object_code,FRM_table_name,FRM_allow_download,FRM_isSingle,FRM_auto_search
	Dim o_id
	FRM_object_code = movaRS("object_code")
	FRM_search_name = movaRS("search_name")
	 if mplTitle<>"" then  FRM_search_name  = mplTitle
	
	FRM_table_name = movaRS("table_name")
	FRM_auto_search = movaRS("auto_search")
	FRM_abbr = movaRS("abbr") 
	FRM_allow_download = movaRS("allow_download")
	if forceSingle then 
		FRM_isSingle= "T"
	else
		FRM_isSingle = getObjectPropertyByCode(FRM_object_code,"is_single")
	end if 
	o_id= getObjectPropertyByCode(FRM_object_code,"object_id")
	movaRS.close
	getObjectField o_id,"" '获取所有的字段
	if mplIsStart = "0" then 
		session("autoSearch") = FRM_auto_search 
	end if 
	if req("autoSearch")<>"" then 
		session("autoSearch") = req("autoSearch")
	else
		
	end if
	
	
	
	

	Dim tempM 
	
	for tempM=0 to 99 
	 	mplPreCondition(tempM,0)=""	'表单变量名
		mplPreCondition(tempM,1)=""	'是否是数值
		mplPreCondition(tempM,2)=""	'条件类型
		mplPreCondition(tempM,3)=""	'字段名
		 
	Next 
	tempM =0 
	'OutListString = OutListString &  FRM_object_code & "|" & FRM_search_name & "<BR>"
	
	sqlString = "Select * From mu_mpl_pre_condition Where archive='F' and mu_mpl_search_id =" & mu_mpl_search_id & " order by sort_no"
	 
	executeQuery conn,movaRS,sqlString,1,3
	Dim pre_conditionCount
	pre_conditionCount = movaRS.recordCount
	OutListString = OutListString &  	"<div class='cn_list_title'>《<font color=red>"&FRM_search_name&"</font>》</div>" 
	OutListString = OutListString &  	"<div class='cn_list_title_right'>"& mplRightTitle& " </div>"

	 
  if pre_conditionCount >0 then 
 
OutListString = OutListString & "		<DIV class=cn_col01>"
OutListString = OutListString & "		<TABLE border=0 cellSpacing=1 cellPadding=0>"
OutListString = OutListString & "		  <FORM id=form method=post name=mainform action="&  Request.ServerVariables("SCRIPT_NAME") &">"
OutListString = OutListString & "		  	<input type="&chr(34)&"hidden"&chr(34)&" name="&chr(34)&"isStart"&chr(34)&" value="&chr(34)&"0"&chr(34)&">"
OutListString = OutListString & "		  	<input type="&chr(34)&"hidden"&chr(34)&" name="&chr(34)&"autoSearch"&chr(34)&" value="&chr(34)&"T"&chr(34)&">"
OutListString = OutListString & "		  	<input type="&chr(34)&"hidden"&chr(34)&" name="&chr(34)&"download"&chr(34)&" value="&chr(34)&"F"&chr(34)&">"
OutListString = OutListString & "		  	<input type="&chr(34)&"hidden"&chr(34)&" name="&chr(34)&"id"&chr(34)&" value="&chr(34)&mu_mpl_search_id&chr(34)&">"
OutListString = OutListString & "		  	<input type="&chr(34)&"hidden"&chr(34)&" name="&object_id&chr(34)&" value="&chr(34)&session("object_id")&chr(34)&">"
OutListString = OutListString & "		  <TBODY>"
OutListString = OutListString & "		  	<tr> "
 
	end if 
	Dim Cur_col,max_col
		Cur_col = 0
		max_col = 2 
	do 
		if movaRS.eof or movaRS.bof then exit do
		Dim FRM_archive,FRM_field_code,FRM_sort_no,FRM_mu_mpl_pre_condition_id,FRM_mu_mpl_search_id
		Dim FRM_field_name,FRM_search_type,FRM_is_Numeric,FLD_field_code
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
		Cur_col = Cur_col + 1
		
		if Cur_col>2 then 
			OutListString = OutListString &  "</tr><tr>"
			Cur_col = 1
		end if 
		OutListString = OutListString &  "<TD class=cn_td09 align='right'>" & FRM_field_name & ":</TD>" & chr(13)
		
		
		if FRM_search_type = "=" then 
			Dim itemK
			itemK = getPosFromArray(split(FLD_field_code,".")(1))
		 	
		 	mplPreCondition(tempM,0) = FRM_field_code
			mplPreCondition(tempM,1) = FRM_is_Numeric
			mplPreCondition(tempM,2) = FRM_search_type
			mplPreCondition(tempM,3) = FLD_field_code
			if ObjectFieldArray(itemK,3)<>"INT" and ObjectFieldArray(itemK,3)<>"VARCHAR" and  ObjectFieldArray(itemK,3)<>"PHONE" and ObjectFieldArray(itemK,3)<>"TIME" and ObjectFieldArray(itemK,3)<>"TIME" and  ObjectFieldArray(itemK,3)<>"DATE" and  ObjectFieldArray(itemK,3)<>"TEXT" then 
			
			 
OutListString = OutListString & "				<td>"
OutListString = OutListString & "							<select name="& chr(34)  & FRM_field_code & chr(34) & ">"
OutListString = OutListString & "								<option value="& chr(34)& chr(34) & " ></option>"
OutListString = OutListString & "								"& chr(34)  &getItemList(ObjectFieldArray(itemK,3),ObjectFieldArray(itemK,29),"") 
OutListString = OutListString & "							</select></td>" 					
		 
			else 
				if ObjectFieldArray(itemK,24)<>"" then 
		 
					
OutListString = OutListString & "									<Td>"
OutListString = OutListString & "					<nobr>"
OutListString = OutListString & "			 			 <input class=cn_input03 id="& chr(34) & FRM_field_code& "_txt" & chr(34) &" type="&chr(34)&"text" & chr(34) & widthFieldHTML & " readonly name=" & chr(34) &FRM_field_code& "_txt" & chr(34) & " value=" & chr(34) & getPickValue( ObjectFieldArray(k,24),curValue )& chr(34) &">"
OutListString = OutListString & "			 			<input class=cn_input03 id="& chr(34) & FRM_field_code & chr(34) &" type="&chr(34)& "hidden" &chr(34) & "  name="&chr(34)& FRM_field_code &chr(34)& " value="& chr(34) & curValue & chr(34) & ">"
 	 
			 	  
			 	 
				OutListString = OutListString &  "<img title='搜索' id='" & FRM_field_code & "_pic' src='" & movaStyle & "/images/search.png' align='top' " 
				OutListString = OutListString &  " border=0  " 
			
				OutListString = OutListString &  " onClick='dialogPick("& chr(34)&appendPickUrl(ObjectFieldArray(itemK,25),FRM_field_code,FRM_field_code& "_txt") & chr(34) &","& chr(34)& chr(34) &")'"  
				OutListString = OutListString &  " alt='点击查询'/></nobr></Td>" 
				else
					OutListString = OutListString &  "<TD class=cn_td10 align='left'><input class=cn_input03 type=text name='"& FRM_field_code &"'></td>" & chr(13)
				end if 
		end if 
		
		end if 
		if FRM_search_type = "like" then 
			mplPreCondition(tempM,0) = FRM_field_code
			mplPreCondition(tempM,1)=FRM_is_Numeric
			mplPreCondition(tempM,2) = FRM_search_type
			mplPreCondition(tempM,3) = FLD_field_code
			OutListString = OutListString &  "<TD class=cn_td10 align='left'><input class=cn_input03 type=text name='"& FRM_field_code &"'>模糊</td>" & chr(13)
		end if 
		
		if FRM_search_type = "timeRange" then
			mplPreCondition(tempM,0) = "__S_" & FRM_field_code
			mplPreCondition(tempM,1)=FRM_is_Numeric
			mplPreCondition(tempM,2) = FRM_search_type
			mplPreCondition(tempM,3) = FLD_field_code
			tempM=tempM+1
			mplPreCondition(tempM,0) = "__E_" & FRM_field_code
			mplPreCondition(tempM,1)=FRM_is_Numeric
			mplPreCondition(tempM,2) = FRM_search_type
			mplPreCondition(tempM,3) = FLD_field_code
			
			OutListString = OutListString &  "<TD class=cn_td10 align='left'>"
			OutListString = OutListString &  "从 <INPUT  READONLY ondblclick="&chr(34)& "this.value=''"&chr(34)& " size="&chr(34)& "20"&chr(34)& " class=cn_input03 type=text name="&chr(34)& "__S_" &FRM_field_code & chr(34) & " value="&chr(34)& ""&chr(34)& " id="&chr(34)& "__S_" & FRM_field_code &chr(34)& ">" & getCalendar("__S" & FRM_field_code,"__S_" & FRM_field_code,"T")
			OutListString = OutListString &  "到 <INPUT  READONLY ondblclick="&chr(34)& "this.value=''"&chr(34)& " size="&chr(34)& "20"&chr(34)& " class=cn_input03 type=text name="&chr(34)& "__E_" & FRM_field_code &chr(34)& " value="&chr(34)& ""&chr(34)& " id="&chr(34)& "__E_"& FRM_field_code & chr(34)& ">" &getCalendar("__E" & FRM_field_code,"__E_" & FRM_field_code,"T")
			OutListString = OutListString &  "</td>"
		end if
		
		if FRM_search_type="dateRange" then
			mplPreCondition(tempM,0) = "__S_" & FRM_field_code
			mplPreCondition(tempM,1)=FRM_is_Numeric
			mplPreCondition(tempM,2) = FRM_search_type
			mplPreCondition(tempM,3) = FLD_field_code
			tempM=tempM+1
			mplPreCondition(tempM,0) = "__E_" & FRM_field_code
			mplPreCondition(tempM,1)=FRM_is_Numeric
			mplPreCondition(tempM,2) = FRM_search_type
			mplPreCondition(tempM,3) = FLD_field_code
					OutListString = OutListString &  "<TD class=cn_td10 align='left'>"
					OutListString = OutListString &  "	从 <INPUT  READONLY ondblclick="&chr(34)& "this.value=''"&chr(34)& " size="&chr(34)& "10"&chr(34)& " class=cn_input03 type=text name="&chr(34)& "__S_"& FRM_field_code &chr(34) & " id="&chr(34)& "__S_"  & FRM_field_code &  chr(34) & ">" & getCalendar("__S" & FRM_field_code,"__S_" & FRM_field_code,"D")
					OutListString = OutListString &  "	到 <INPUT  READONLY ondblclick="&chr(34)& "this.value=''"&chr(34)& " size="&chr(34)& "10"&chr(34)& " class=cn_input03 type=text name="&chr(34)& "__E_"& FRM_field_code&chr(34) &" id="&chr(34)& "__E_"& FRM_field_code& chr(34) &">"& getCalendar("__E" & FRM_field_code,"__E_" & FRM_field_code,"D")
					OutListString = OutListString &  "</td>"
		end if 
		
		tempM = tempM + 1
	 
		'OutListString = OutListString &   FRM_field_code & "|" &     FRM_search_type & "|" & FRM_is_Numeric & "<BR>"
		movaRS.moveNext
	loop
	if Cur_col<2 then 
		OutListString = OutListString &  "<TD class=cn_td09 align='right'></td> <TD class=cn_td10 align='left'></td></tr>"
	end if
	movaRS.close
	
		 
		 OutListString = OutListString &  "<tr>"
		 OutListString = OutListString &  "<td colspan="&chr(34)& "4"&chr(34)& " align="&chr(34)& "center"&chr(34)& ">"
		
		 if pre_conditionCount>0 then
		 	OutListString = OutListString &  "<BUTTON class=cn_button01 type=submit onClick="&chr(34)& "this.form.target='';this.form.action='"&Request.ServerVariables("SCRIPT_NAME")&"'"&chr(34)& ">查询</button> "
		 end if 
		 if chkAccount("mplSearch")  or chkAccount(getMplSec(session("object_id"),session("mu_mpl_search_id"),"DY_MPL_D")) then 
			 if FRM_allow_download ="T" then 
			 		OutListString = OutListString &  " <BUTTON class=cn_button01 type=submit  onClick="&chr(34)& "this.form.target='_blank';this.form.action='mplDownload.asp'"&chr(34)& " >下载</button> "
			 end if
			end if
if pre_conditionCount >0 then 
		OutListString = OutListString &  " </td>"
		OutListString = OutListString &  " </tr>"
	OutListString = OutListString &  "	</TBODY>"
	OutListString = OutListString &  "	</form>"
	OutListString = OutListString &  "	</TABLE>"
	OutListString = OutListString &  "	</div>"
END IF 
			if session("autoSearch") ="F" then 
				OutListString = OutListString &  "<DIV class=cn_col>请点击“查询”按钮显示列表信息</div>"
			else
				
			 
			Dim paramPreConditionSQL
			paramPreConditionSQL=""
			if req("isStart") = "1" then
				for tempM=0 to 9 
					if mplPreCondition(tempM,0)="" then 
						exit for 
					end if 
					'OutListString = OutListString &  mplPreCondition(tempM,0) & "*" 
					'session(mplPreCondition(tempM,0))=""
				Next 
			'	resonse.write "<BR>"
			else
				
				if req("isStart") = "0" then 
					for tempM=0 to 9 
						if mplPreCondition(tempM,0)="" then 
							exit for 
						end if
						'OutListString = OutListString &  mplPreCondition(tempM,0) & "^"  & req(mplPreCondition(tempM,0))  & "|"
						session(mplPreCondition(tempM,0))=trim(req(mplPreCondition(tempM,0)))
					Next 
				end if
					
					for tempM=0 to 9 
						if mplPreCondition(tempM,0)="" then 
							exit for 
						end if 
						if session(mplPreCondition(tempM,0))<>""  then 
							'OutListString = OutListString &  mplPreCondition(tempM,0) & "^|" 
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
	 'OutListString = OutListString &  "<B>" & paramPreConditionSQL & "</b><BR>"
	 Dim invalidMpl 
	 invalidMpl = mplSearch(paramPreConditionSQL,FRM_isSingle,FRM_table_name,FRM_object_code,mu_mpl_search_id)
	 'OutListString = OutListString &  "<BR>" & mplSQL 
	'OutListString = OutListString &  "<BR>" & mplCountSQL
end if 
 
 if invalidMpl then  
OutListString = OutListString &  "<DIV class=cn_col>"
OutListString = OutListString &  "<TABLE border=0 cellSpacing=1 cellPadding=0>"
OutListString = OutListString &  "	<THEAD>"
OutListString = OutListString &  "  	<TR>"
 
  			for tempM=0 to 99  
  				if mplFieldArray(tempM,0)="" then  
  					Exit for
  				end if 
  				OutListString = OutListString &  "<th>" & mplFieldArray(tempM,1) & "</th>"
  			Next
  
OutListString = OutListString &  "   </TR>"
OutListString = OutListString &  "   </THEAD>"
OutListString = OutListString &  "  <TBODY>"
  	
 
			 OutListString = OutListString &  "<!--" &  mplSQL & " -->" 
			executeQuery conn,movaRs1,mplSQL, 1, 1

			' 初始化页
			InitRS movaRs1, application("DEF_SPLIT_PAGE")	' 默认每页 行数
			
			dim havePage
			havePage = true
			if movaRs1.recordcount<=cint(application("DEF_SPLIT_PAGE")) then havePage = false
			Dim i
			For i = 1 to movaRs1.pagesize 
				if movaRs1.eof then exit For
				 
 
  OutListString = OutListString &  "<TR onMouseOver="&chr(34)& "this.className='cn_tr01'"&chr(34)& " onmouseout="&chr(34)& "this.className='cn_tr02'"&chr(34)& ">"
   
  
  
  			for tempM=0 to 99  
  				if mplFieldArray(tempM,0)="" then  
  					Exit for
  				end if 
  			 if tempM=0 and movaRs1("keyid")>0 then 
  			 	if showWindow then 
  			 		OutListString = OutListString &  "<td><a href="& chr(34) & "javascript:dialogPick('opp.asp?navType=dialog&objectId="& o_id& "&id="& movaRs1("keyid") &"&cid="& movaRs1("pkeyid") &"')"&chr(34) & ">"  & movaRs1( mplFieldArray(tempM,1) )   & "</a></td>"
				
  			 	else
  			 		OutListString = OutListString &  "<td><a href='opp.asp?objectId="& o_id& "&id="& movaRs1("keyid") &"&cid="& movaRs1("pkeyid") &"'>"  & movaRs1( mplFieldArray(tempM,1) )   & "</a></td>"
  				end if 
  			 
  				
  			 else
  				OutListString = OutListString &  "<td>"  & movaRs1( mplFieldArray(tempM,1) )   & "</td>"
  			 end if
  			Next
 
		movaRs1.Movenext
		Next
 

OutListString = OutListString &  "</tr></TBODY>"
 
if havePage then 
	OutListString = OutListString &  "  <TR>"
	OutListString = OutListString & ""&  "    <TD colSpan=100>" & PageNavigatorString &"</TD></TR> "
end if 

 OutListString = OutListString & ""&  "</TABLE>"
'OutListString = OutListString &  " </div>"
 
'OutListString = OutListString &  "</table>"

'OutListString = OutListString &  "</div>"

 end if  
 end if 
 
 mplSearchView =  OutListString
End function  
%>