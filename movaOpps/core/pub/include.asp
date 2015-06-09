<%
 	Dim conn,sqlStr,rs,rs1,movaRs,movaRs1,curpage,sql,CONN_SQL
 	Dim allowTrans 
 	Dim tempRs 'getOnefield 专用
	Dim formElement,queryStringElement			'调试的表单数据
	Dim lanStr 	'语言版本
	Dim currDateFormat
	Dim debugSwitch 
	Dim DEBUG_INFO
	debugSwitch = false 


'application("DB_SERVER") = "localhost"
'application("DB_UID") = "zhangl"
'application("DB_PWD") = "zhangl"
'application("DB_DATABASE") ="zhanglong"

	'打开数据库
	sub openDATABASE
'	response.write   "application(DB_SERVER) 	     :" &                    application("DB_SERVER") 	    & "<br>"                                         
'	response.write   "application(DB_UID) 		     :" &                      application("DB_UID") 		    & "<br>"                                         
'	response.write   "application(DB_PWD) 		     :" &                      application("DB_PWD") 		    & "<br>"                                         
'	response.write   "application(DB_DATABASE)     :" &                     application("DB_DATABASE")    & "<br>"                                         
'	response.write   "application(DB_PARAM) 	     :" &                      application("DB_PARAM") 	    & "<br>"   
'response.end
		'CONN_SQL = "Provider=SQLNCLI;User ID=sa;Password=root" 
		'CONN_SQL =CONN_SQL &";database=mova_mova;DATA SOURCE=(local)" 
		
		CONN_SQL = "Provider=SQLOLEDB;User ID=" & application("DB_UID") & ";Password="& application("DB_PWD") 
		CONN_SQL =CONN_SQL &";Initial Catalog="& application("DB_DATABASE") &";Data Source=" &application("DB_SERVER")  
		'''
		connStr = CONN_SQL

		
		Set Conn  = Server.CreateObject("ADODB.Connection") 
		Set movaRS = Server.CreateObject("ADODB.recordset")
		Set movaRS1 = Server.CreateObject("ADODB.recordset")
		Set rs = Server.CreateObject("ADODB.Recordset")
		Set rs1 = Server.CreateObject("ADODB.Recordset")
		Set tempRs = Server.CreateObject("ADODB.Recordset")
		'response.write connStr & "<BR>"
		conn.Open	connStr 
		Conn.Errors.Clear 
		if allowTrans then 
			conn.BeginTrans
		end if 
	end sub
	
	'关闭数据库
	sub closeDATABASE
			On Error Resume Next 
			if conn.State <>0 then
				if allowTrans then 
					if conn.Errors.Count>0 or  Err.Number <> 0  then 	
						conn.Errors.Clear	
						conn.RollBackTrans
					else
						conn.CommitTrans
					end if 
				end if 
				
				conn.close    
			end if
			
			 
			if rs.State <>0 then 
				rs.close
			end if
			if rs1.State <>0 then 
				rs1.close
			end if
			
			if movaRS.State <>0 then 
				movaRS.close
			end if
			
			if movaRS1.State <>0 then 
				movaRS1.close
			end if
			
			if tempRs.State <>0 then 
				tempRs.close
			end if
			
			If Err.Number <> 0 Then 
				response.write "<br>★★★★★★Have an error !!!★★★★★★</br>" 
				On Error GoTo 0 
			End If 
			 
			
	end sub

	sub executeQuery(pConnect,pRecordset,querySql,CursorType, LockType)
		On Error Resume Next     
		pConnect.Errors.clear
		
		'response.write querySql & "<BR>"
		setDebug "executeQuery","",querySql
		if pRecordset.state<>0 then
			pRecordset.close
			pRecordset.Open querySql,pConnect , CursorType,LockType 
		else
			'response.write "<Hr>" & querySql
			pRecordset.Open querySql,pConnect , CursorType,LockType
		end if
		
		If Err.Number <> 0 Then
			Response.Write ("运行时错误 : " & Err.Description& "<br>请定义正确的查询条件!<br><!--" & querySql & "-->") 
			Response.End
		end if 
		On Error Goto 0
	end Sub

	sub executeUpdate(pConnect,querySql)
		On Error Resume Next 
		'response.write querySql & "<HR>"
		setDebug "executeUpdate","",querySql
		pConnect.execute(querySql)
		If Err.Number <> 0 Then
			Response.Write ("运行时错误 : " & Err.Description& "<br><br><!--" & querySql & "-->") 
			Response.End
		end if
		On Error Goto 0
	end Sub

function req(requestString)
	dim reqStr
	if isNUll(request(requestString)) then
		reqStr =""
	else
		reqStr = trim(request(requestString))
	end if 
	req = reqStr
end function


function getSerial_(object_name)
	
	dim haveObjectSerial,serialList,itemSerial
	haveObjectSerial = false
	
	dim serial_Object,serial_pre,serial_curValue,serial_maxValue,SerialValueList
	serial_Object=""
	serial_pre="_"
	serial_curValue=0
	serial_maxValue=0
	
	serialList=split(application("serial_no"),",")
	For Each itemSerial In serialList
		
		SerialValueList = split(itemSerial,":")
		if SerialValueList(0)= object_name then 
			haveObjectSerial = true
			serial_Object = SerialValueList(0)
			serial_pre = SerialValueList(1)
			serial_curValue = clng(SerialValueList(2))
			serial_maxValue = clng(SerialValueList(3))
			serial_curValue = serial_curValue + 1 
			if serial_curValue > serial_maxValue then 
				getSerial = getDBSerial(object_name)
			else
				getSerial   = serial_pre & serial_curValue
				reflashCacheSerial serial_Object,serial_pre,serial_curValue,serial_maxValue 
			end if
			exit for
		end if
	Next
	if not haveObjectSerial then 
		getSerial = getDBSerial(object_name)
	end if 
end Function 
sub reflashCacheSerial(object_name,pre,curValue,maxValue)
	dim haveObjectSerial,serialList,SerialValueList
	haveObjectSerial = false
	
	dim serial_Object,serial_pre,serial_curValue,serial_maxValue
	serial_Object=""
	serial_pre="_"
	serial_curValue=0
	serial_maxValue=0
	serialList=split(application("serial_no"),",")
	
	Dim applicationString 
	applicationString = ""
	For Each itemSerial In serialList
		Dim itemSerial
		SerialValueList = split(itemSerial,":")
		 
		if SerialValueList(0)= object_name then 
			haveObjectSerial = true
			serial_Object = SerialValueList(0)
			serial_pre = SerialValueList(1)
			serial_curValue = curValue
			serial_maxValue = maxValue
		else
			serial_Object = SerialValueList(0)
			serial_pre = SerialValueList(1)
			serial_curValue = clng(SerialValueList(2))
			serial_maxValue = clng(SerialValueList(3))
		end if	
		applicationString =applicationString &  serial_Object & ":" & serial_pre & ":" & serial_curValue & ":" & serial_maxValue & ","
	Next
  
	if not haveObjectSerial then 
		applicationString =applicationString &  object_name & ":" & pre & ":" & curValue & ":" & maxValue & ","
	end if 
	Application.Lock
	application("serial_no") = left(applicationString,len(applicationString)-1)
	Application.UnLock
end sub  

function getDBSerial(object_name)
	dim serial_Object,serial_pre,serial_curValue,serial_maxValue
	serial_Object=""
	serial_pre="_"
	serial_curValue=0
	serial_maxValue=0
	Dim uSql
	uSql = "update mova_serialno set seed=seed+step,last_date=getdate() where object_name='" & object_name & "'"
	executeUpdate conn,uSql
	uSql = "select * from mova_serialno where object_name='" & object_name & "'"
	'response.write uSql
	executeQuery conn,movaRS1,uSql,1,1
	if movaRS1.bof or movaRS1.eof then
		movaRS1.close
		serial_Object = "object_name"
		serial_pre = "_"
		serial_curValue = 0
		serial_curValue = 0
	else
		serial_Object = object_name
		serial_pre = movaRS1("pre_fix")
		serial_curValue = movaRS1("seed")+1
		serial_maxValue = movaRS1("seed") + movaRS1("step")
		movaRS1.close
	end if 
 
	reflashCacheSerial serial_Object,serial_pre,serial_curValue,serial_maxValue 
	getDBSerial = serial_pre & serial_curValue
end function

function getSerial(object_name)
	'application("serial_no")="" object_name:12739:12000,object_name1:1000,"
	Dim uSql
	uSql = "update mova_serialno set seed=seed+1,last_date=getdate() where object_name='" & object_name & "'"
	executeUpdate conn,uSql
	getSerial = getOneField("select pre_fix + right(ltrim(str(seed)),len(ltrim(str(seed)))-1) from mova_serialno where object_name='" & object_name & "'")
end Function

sub test(testStr)
	if (application("DEBUG_TEST")) then 
		returnStr = "{{ " & now() &"★" & testStr & " }}<br>"
		response.write returnStr
	end if 
end sub
function msgbox(error,n)
  Set rs=nothing
  Set conn=nothing  
  Response.Write "<script>"
  'vartype() 是一个类型判断函数，如果是字符就返回8
	if error><"" then response.write("alert('" & error & "\n\n');"&vbcrlf)
	if Vartype(n)=2 then
		if n=1 then response.write("history.go(-1);"&vbcrlf) '后退
		if n=2 then response.write("parent.top.location.href='/';"&vbcrlf) '返回管理
		if n=3 then response.write("window.close();"&vbcrlf) '关闭窗口
		if n=4 then response.write("window.opener.location.reload();window.close();"&vbcrlf) '弹出窗口刷新
	end if
	if Vartype(n)=8 then response.write("window.location.href='"& n &"';")
  Response.Write "</scr"& "ipt>"
  Response.end
end function

function MessageBox(error,Url)
   
  Response.Write "<script>"
  'vartype() 是一个类型判断函数，如果是字符就返回8
	if error<>"" then response.write("alert('" & error & "\n\n');"&vbcrlf)
	if Url<>"" then 
		Set rs=nothing
  	Set conn=nothing
		response.write("window.location.href='"& Url &"';")
	end if 	
  Response.Write "</scr"& "ipt>"
 
end function

'数据库数据字符串转换函数
function toNumeric(str,itype)
	if ISNumeric(str) then 
			if iType = 0 then
				ToNumeric = cLng(str)
			end if 
			if iType = 1 then
				ToNumeric = cDbl(str)
			end if
	else
		toNumeric = Null
	end if 
end function

function toInt(intValue)
	if isNull(intValue) then 
		toInt=0
	else
		toInt intValue
	end if 
end function

'系统开发测试函数
	sub debug (param)
		Dim  requestString,dimForm,dimQueryString,rsString
		formString = ""
		queryString = ""
		dimForm = ""
		dimQueryString =  ""
		rsString = ""
		dimForm_Frm = ""
		rsString_Frm = ""
		
		
		For each formElement in request.Form
			if param<>0 then 
				
				
				if formElement<>"object" and formElement<>"keyid" then 
					formString = formString & "FLD_" & formElement & " = req(" & chr(34)  & formElement & chr(34) & ")<br>"
					rsString = rsString & "movaRS(" & chr(34) & formElement & chr(34) & ")= " & "FLD_" & formElement & "<br>"
					rsString_Frm = rsString_Frm & "FRM_" & formElement & " = " &"movaRS(" & chr(34) & formElement & chr(34) & ")" & "<br>"
				end if 
			else
				
				formString = formString & "FLD_" & formElement & " = "  & req(formElement) & "<br>"
				if formElement<>"object" and formElement<>"keyid" then 
					rsString = rsString & "movaRS(" & chr(34) & formElement & chr(34) & ")= " & "FLD_" & formElement & "<br>"
					rsString_Frm = rsString_Frm & "FRM_" & formElement & " = " &"movaRS(" & chr(34) & formElement & chr(34) & ")" & "<br>"
				end if
			end if 
			dimForm = dimForm & ",FLD_" & formElement
			dimForm_Frm = dimForm_Frm & ",FRM_" & formElement
		Next
		Dim objectID
		objectID = replace(req("object"),"mova_","",1,-1) & "_id"
		
		For each queryStringElement in request.QueryString
			if param=0 then 
				queryString = queryString & queryStringElement & " = req(" & chr(34) & queryStringElement & chr(34) & ")<br>"
			else
				queryString = queryString & queryStringElement & " = " &   req(queryStringElement) &   "<br>"
			end if 
			dimQueryString = dimQueryString & "," & queryStringElement
 		Next
 		
 		response.write "<style type="& chr(34)  & "text/css" & chr(34) & "> " & chr(13)
		response.write "<!-- " & chr(13)
		response.write "body { " & chr(13)
		response.write "	font-size: 12px; " & chr(13)
		response.write "} " & chr(13)
		response.write "--> " & chr(13)
		response.write "</style> " & chr(13)
		response.write "<body>"
		
		
 		if dimForm <>"" then
 			response.write "<Hr><font color=red>'Dim Form：</font><br>Dim " & right(dimForm,len(dimForm)-1) & "<br>"
 		end if 
 		if 	dimQueryString <> "" then
 			response.write "<Hr><font color=red>'Dim QueryString：</font><br>Dim " & right(dimQueryString,len(dimQueryString)-1) &"<br>"
 		end if 
 		
 		
		response.write "<font color=red>'Get Post Param:</font><br>" & formString & "<br><br>"
 		response.write "<font color=red>'Get Get Param:</font><br>" & queryString & "<br><br>"
 	
 		response.write "<font color=red>'DataBase Coding....:</font><br>"
		response.write "		sqlString = " & chr(34) & "Select * From " & req("object") & " Where " & objectID & " is null" & chr(34) & "<br>"
		response.write "		sqlString = " & chr(34) & "Select * From " & req("object") & " Where " & objectID & " =" & chr(34)  & chr(38) & objectID & "<br>"
		response.write "			executeQuery conn,movaRS,sqlString,1,3<br>"
		response.write "			movaRS.addnew<br>"
		response.write "<font color=red>'RS seting...:</font><br>"  & rsString & "<br><br>"
		response.write "			movaRS(" & chr(34) & "createdate" & chr(34) & ") = Now<br>"
		response.write "			movaRS(" & chr(34) & "createUser" & chr(34) & ") = cint(session(" & chr(34) & "userid" & chr(34) & "))<br>"
		response.write "			movaRS(" & chr(34) & "modifyDate" & chr(34) & ") = Now<br>"
		response.write "			movaRS(" & chr(34) & "modifyUser" & chr(34) & ") = cint(session(" & chr(34) & "userid" & chr(34) & "))<br>"
		response.write "			movaRS.Update<br>"
		response.write "			keyid = movaRS(" & chr(34) & "" & objectID & chr(34) & ")<br>"
		response.write "			movaRS.close<br>"
		response.write "	<br>"
		
		response.write "<hr>"
		response.write "<font color=red>'modi code:</font><br>" 
		response.write	"Dim " & objectID  & "<BR>" 
		if 	dimForm_Frm <> "" then 
 			response.write "<font color=red>'Dim  Form_Frm</font><br>Dim " & right(dimForm_Frm,len(dimForm_Frm)-1) &"<br>"
 		end if 
 		
		response.write	"<br>" & objectID & " = req(" & chr(34) & "" & objectID & chr(34) & ")" & "<BR>" 
		response.write	"<br>sqlString = " & chr(34) & "select * from " & req("object") & " where " & objectID & "=" & chr(34) & chr(38)  & objectID  & "<BR>" 
		response.write	"executeQuery conn,movaRS,sqlString,1,1" & "<BR>" 
		response.write	"if movaRS.bof or movaRS.eof then" & "<BR>" 
		response.write	"	movaRS.close" & "<BR>" 
		response.write	"  msgbox " & chr(34) & "记录不存在，或者您打开了一个错误的页面" & chr(34) & ",1" & "<BR>" 
		response.write	"end if " & "<BR>" 
		response.write "<BR>"
		response.write "<font color=red>'Dim  Form_Frm</font><br>" & rsString_Frm & "<br><br>"
		response.write "</body>"
		response.end
	end Sub

	'地址链接跳转
	sub gotoUrl(url) 
		if application("IGNORE_ERROR") then 
			On Error Resume Next 
		end if
		closeDatabase
		Response.write ("<script>window.location.href= '" & url & "';</script>") 
	end sub
	
	function getUrlParam( )
		Dim tempUrlStr
		tempUrlStr = ""
		'request.QueryString
		For each formElement in request.QueryString
			if param<>0 then 
				tempUrlStr =  tempUrlStr  & formElement & "=" & req(formElement) & chr(38)
			else
				tempUrlStr =  tempUrlStr  & formElement & "=" & req(formElement) & chr(38)
			end if 
		Next
		
		'request.Form
		For each formElement in request.Form
			if param<>0 then 
				tempUrlStr =  tempUrlStr  & formElement & "=" & req(formElement) & chr(38)
			else
				tempUrlStr =  tempUrlStr  & formElement & "=" & req(formElement) & chr(38)
			end if 
		Next
		getUrlParam = tempUrlStr
	end function 
	'显示一条记录的一个字段
	function getOneField(sql)
		executeQuery conn,tempRs,sql,0,1
		if not (tempRs.eof or tempRs.bof) then
			getOneField=tempRs(0)
		else
			getOneField=""
		end if
		'tempRs.close 20120720 反正最后已经关闭了，这里可以不用关闭
	end function
	
 
	
	Function Radio(str,varname,splitStr,splitValue,valuelist) '生成checkbox的列表
	'str:#XXX开头是picklist名称，其他则为sql语句
	'valueList:默认值
	'splitStr:分行、分段时的html
	'splitValue，每分段多少个
	dim f,sss,isvalue,i,br,j,curValue
		if left(str,1)="#" then
			sqlStr = "select selectvalue,txt from mova_picklist where code='" & right(str,len(str)-1) & "' order by sortno"
		else
			sqlStr = str		
		end if 
		executeQuery conn, rs,sqlStr,1,1
	i=0
	do 
		i=i+1
		j=0
		br=""
		if i>=splitValue then
			br=splitStr
			i=0 
			response.write br
		end if 
		if rs.eof or rs.bof then
			exit do 
		end if
		isvalue=rs("txt")
		isid=rs("selectvalue")
			if valuelist="" or isNull(valuelist) then
				j=0
			else 
				sss=split(valuelist,",")
				For Each f In sss
					if f=isid then 
						j=1
					end if 
				Next
			end if 
			
			if j=1 then
				response.write "<input type='Radio' name='" & varName & "' value='" & isid &"' checked class=radio  >" & isvalue & br
			else 
			response.write "<input type='Radio' name='" & varName &"' value='" &  isid &"' class=radio   >" & isvalue & br
			end if 
		rs.movenext
	loop 
End Function

	public function getParamID(idStr)
		if trim(idStr)="" or idStr=null then
			getParamID = application("NULL_ID")
		else
			getParamID = clng(idStr)
		end if 
	end function

	Function checkbox(str,formatStr,splitStr,splitValue,valuelist) '生成checkbox的列表
	'str:#XXX开头是picklist名称，其他则为sql语句
	'valueList:默认值
	'splitStr:分行、分段时的html
	'splitValue，每分段多少个
	dim f,sss,isvalue,i,br,j
		if left(str,1)="#" then
			sqlStr = "select selectvalue,txt from mova_picklist where code='" & right(str,len(str)-1) & "' order by sortno"
		else
			sqlStr = str		
		end if 
	set rs=conn.execute(sqlStr)
	i=0
	do 
		i=i+1
		j=0
		br=""
		if rs.eof or rs.bof then
			exit do 
		end if
		isvalue=rs("txt")
		isid=rs("selectvalue")
			if valuelist="" or isNull(valuelist) then
				j=0
			else 
				sss=split(valuelist,",")
				
				For Each f In sss
					f= replace(f," ","",1,-1)
					if f=isid then 
						j=1
					end if 
				Next
			end if 
			
			if j=1 then
				checkedStr = "checked"
			else
				checkedStr =""
			end if 

			outString = replace(formatStr,"<isvalue>",isid ,1,-1)
			outString = replace(outString,"<istxt>",isvalue ,1,-1 )
			outString = replace(outString,"<checked>",checkedStr  ,1,-1)
			response.write outString & chr(13)
			
			if i>=splitValue then
				br=splitStr
				i=0 
				response.write br
			end if 
		rs.movenext
	loop   
End Function


Function Checkbox1(str,formatStr,splitStr,splitValue,valuelist) '生成checkbox的列表

	'str:#XXX开头是picklist名称，其他则为sql语句
	'valueList:默认值
	'splitStr:分行、分段时的html
	'splitValue，每分段多少个
	dim f,sss,isvalue,i,br,j
		if left(str,1)="#" then
			sqlStr = "select selectvalue,txt from mova_picklist where code='" & right(str,len(str)-1) & "' order by sortno"
		else
			sqlStr = str		
		end if 
		
	set rs=conn.execute(sqlStr)
	i=0
	do 
		i=i+1
		j=0
		br=""
		if rs.eof or rs.bof then
				exit do 
		end if
		isvalue=rs("txt")
		isid=rs("selectvalue")

			if valuelist="" or isNull(valuelist) then
				j=0
			else 
				sss=split(valuelist,",")
				For Each f In sss
					if f=isid then 
						j=1
					end if 
				Next
			end if 
			if j=1 then
				checkedStr = "checked"
			else
				checkedStr =""
			end if 

			outString = replace(formatStr,"<isvalue>",isid ,1,-1)
			outString = replace(outString,"<istxt>",isvalue ,1,-1 )
			outString = replace(outString,"<checked>",checkedStr  ,1,-1)
			response.write outString & chr(13)
			if i>=splitValue then
				br=splitStr
				i=0 
				response.write br
			end if 
		rs.movenext
	loop   
End Function

'固定长度字符串输出
function deptStr(param1,param2)
	if len(param1)>param2 then
          deptStr=left(param1,param2) & " .." 
    else 
          deptStr=param1
    end if 
end function 

'输出数字固定长度的字符串
function tabString(param1,param2)
	dim ki,tint
	ki=10
	if isNumeric(param1) then
		for f_i=1 to param2 
			ki=10*ki
		next
		tint = param1 +ki
		tabString  = right(tint,param2)
	else
		tabString =left(cStr(param1),param2)
	end if 
end function

	'生成picklist的列表
	Function picklist(str,valuelist) 
		dim f,sss,isvalue,p_i,j,sqlStr,tempReturn,p_k,p_j,isid
		tempReturn = ""
		if left(str,1)="#" then
			sqlStr = "select selectvalue,txt from mova_picklist where code='" & right(str,len(str)-1) & "' order by sortno"
		else
			sqlStr = str		
		end if 
		setDebug "picklist","",sqlStr 
		set rs=conn.execute(sqlStr)
		p_i=0
		p_k=0
		do 
			p_i=p_i+1
			p_j=0
			if rs.eof or rs.bof then
				exit do 
			end if
			if isNull(valuelist) then
				isvalue="aaaaa"
			end if 
			isvalue=cstr(rs("txt"))
			if isNull(isvalue) then
				isValue=""
			end if 
			if isNull(valuelist) then
				valuelist=""
			end if 
			isvalue=trim(isvalue)
			valuelist=trim(valuelist)
			isid=cstr(rs("selectvalue"))
			sss=split(valuelist,",")
			For Each f In sss
				if f=isid then 
					p_j=1
					p_k=1
				end if 
			Next
			if p_j=1 then
					tempReturn = tempReturn & "<option value="& chr(34) & isid & chr(34) & " selected>" & isvalue & "</option>" & chr(13)
				
	 
			else 
				tempReturn = tempReturn & "<option value="& chr(34) & isid & chr(34) & "  >" & isvalue & "</option>" & chr(13)
			end if 
			rs.movenext
		loop
	 	if p_k=0 then 
			sss=split(valuelist,",")
			For Each f In sss
				tempReturn = tempReturn & "<option value="& chr(34) & valuelist & chr(34) & "  >" & valuelist & "</option>" & chr(13)
			Next
		end if 
		picklist = tempReturn
	End Function
	 
	
	'二级下拉条显示
	function exportsmallType (funname)
		%>
			function <%=funname%>(obja,objb){
			objb.length=0;	
		<%
			if session("seriesid")="" then
				sql="select  bigtypeid from bigType where seriesid=" & getOneField("select max(seriesid) from series")
			else
				sql="select  bigtypeid from bigType where seriesid=" & session("seriesid")
			end if 
			
			'response.write sql
			'response.end
			set rs=conn.execute(sql)
			while not(rs.eof or rs.bof)
		%>
				if (obja.options[obja.selectedIndex].value=="<%=rs("bigtypeid")%>") {
					var aOption=Option("","");
					objb.options[0] = aOption;
		<%			
				sql="select smalltypeid,namecn,nameen,namebig5 from smallType  where bigTypeid=" & rs("bigtypeid") & " order by sortno"
				'response.write sql
				set rs2=conn.execute(sql)
				i=1
				while not(rs2.eof or rs2.bof)
		%>
					var aOption = Option("<%=rs2("name"&getLang)%>", "<%=rs2("smalltypeid")%>");
					objb.options[<%=i%>] = aOption;
		<%			
					i=i+1
					rs2.movenext
				wend 
		%>
				
				}
		<%
				rs.movenext
			wend
		%>
			}
		<%
	end function
	
	
	'系列更改后二级菜单显示
	function exportSeries (funname)
		%>
			function <%=funname%>(obja,objb){
			objb.length=0;	
		<%
			sql="select  Seriesid from series order by sortno"
			'response.write sql
			'response.end
			set rs=conn.execute(sql)
			while not(rs.eof or rs.bof)
		%>
				if (obja.options[obja.selectedIndex].value=="<%=rs("seriesid")%>") {
					var aOption=Option("","");
					objb.options[0] = aOption;
		<%			
				sql="select bigtypeid,namecn,nameen,namebig5 from bigType  where seriesid=" & rs("Seriesid") & " order by sortno"
				'response.write sql
				set rs2=conn.execute(sql)
				i=1
				while not(rs2.eof or rs2.bof)
		%>
					var aOption = Option("<%=rs2("name"&getLang)%>", "<%=rs2("bigtypeid")%>");
					objb.options[<%=i%>] = aOption;
		<%			
					i=i+1
					rs2.movenext
				wend 
		%>
				
				}
		<%
				rs.movenext
			wend
		%>
			}
		<%
	end function

'*  功能描述:				记录分页
Dim dFirst
Dim dPrev
Dim dNext
Dim dLast

Public RecordCount

Public PageNo
Public PageSize
Public PageCount


Public Sub InitRS( ByRef rs, ByVal p )
	PageSize = p
	rs.pagesize = PageSize
	
	PageCount = rs.PageCount
	RecordCount = rs.RecordCount

	PageNo = Trim(req("PageNo"))
	if isNumeric(PageNo) then
	    PageNo = clng(PageNo)
	    if PageNo < 1 or PageNo > PageCount then
	        PageNo = 1
	    end if
	else
	    PageNo = 1
	end if
	
	if RecordCount > 0 then rs.Absolutepage = PageNo

End Sub

Sub PageNavigator 
	response.write "<div width=100% align=right style='text-align: right;	height: 20px;margin-right: 20px;'>" 
  
	Call ShowPageNavigator( Request.ServerVariables("SCRIPT_NAME"),application("DEF_SPLIT_PAGE_STYLE"))  
 
	response.write "</div>"
	
End Sub


function  PageNavigatorString
	Dim navString 
	navString =""
	navString = navString &  "<div width=100% align=right style='text-align: right;	height: 20px;margin-right: 20px;'>" 
  navString = navString & ShowPageNavigatorString( Request.ServerVariables("SCRIPT_NAME")   ,application("DEF_SPLIT_PAGE_STYLE"))  
 
	navString = navString &   "</div>"
	PageNavigatorString = navString
End function
	
Public function  ShowPageNavigatorString(ByVal Despage, ByVal NavType )
	Dim ShowPageString
	ShowPageString = ""
  
			'
			ShowPageString =  ShowNavLinkString(despage)
			
	 	ShowPageNavigatorString = ShowPageString
End Function

Public Sub ShowPageNavigator(ByVal Despage, ByVal NavType )

	If despage = "" Then
		despage = Request.ServerVariables("Script_Name")  & "?def=" & req("def") 
	End If	

	Select Case navtype
		Case  1
			Call ShowNavButton( despage )
		Case  2
			'
			Call ShowNavLink( despage )
	End Select
End Sub


'以链接的方式来显示分页
Public Sub ShowNavLink(ByVal Despage)
 
	if PageCount = "" Then PageCount = 1	'修改当没有记录时会有问题 added by tianjincat 2002-04-11
	if PageNo = "" Then PageNo = 1
	if RecordCount = "" Then RecordCount = 0
	If CLng( PageNo ) <= 1 Then
		dFirst = "disabled"
		dPrev = "disabled"
	End If
	
	If CLng( PageNo ) >= PageCount then
		dNext = "disabled"
		dLast = "disabled"
	End If 
	
	If PageCount <= 1 Then
		 response.write "共 <stong>" & RecordCount & "</strong> 条记录"
		 Exit Sub
	end if 
	Response.Write "<span class=smallFont>&gt;&gt; " & vbCrLf
	despage = despage & "?def=" & req("def") 
	If PageNo = 1 Then
		Response.Write "<font color=darkgray>首页 前页</font>"
	Else
		
		If InStr( 1, despage, "?", 1 ) = 0 Then '未加其他参数
			Response.Write "<a href=""" & despage & "?"
			Response.Write "PageNo=1"">首页</a> <a "
			Response.Write " href=""" & despage & "?"
			Response.Write "PageNo="
			Response.Write PageNo - 1
			Response.Write """>前页</a>"
		Else
			Response.Write "<a href=""" & despage & ""
			Response.Write "&PageNo=1"">首页</a> <a "
			Response.Write " href=""" & despage & ""
			Response.Write "&PageNo="
			Response.Write PageNo - 1
			Response.Write """>前页</a>"		
		End If
	End If
	Response.Write "&nbsp;"
	If PageNo = PageCount Then
		Response.Write "<font color=darkgray>后页 尾页</font>"
	Else
		If InStr( 1, despage, "?", 1 ) = 0 Then '未加其他参数
			Response.Write "<a href=""" & despage & "?"
			Response.Write "PageNo="
			Response.Write PageNo + 1
			Response.Write """>后页</a> <a "
			Response.Write "href=""" & despage & "?"
			Response.Write "PageNo="
			Response.Write PageCount
			Response.Write """>尾页</a>"
		Else
			Response.Write "<a href=""" & despage & ""
			Response.Write "&PageNo="
			Response.Write PageNo + 1
			Response.Write """>后页</a> <a "
			Response.Write "href=""" & despage & ""
			Response.Write "&PageNo="
			Response.Write PageCount
			Response.Write """>尾页</a>"		
		End If
	End If
	Response.Write " 页次：<strong>"
	Response.Write PageNo
	Response.Write "</strong>/<strong>"
	Response.Write PageCount
	Response.Write "</strong>页 "
	'Response.Write PageSize
	'Response.Write "</strong>篇/页 
	Response.write "共"
	Response.Write "<strong>"& RecordCount & "</strong>"
	
	Response.write"条记录"
	Response.Write " </font>"
End Sub


'以链接的方式来显示分页
Public Function ShowNavLinkString(ByVal DespageParam)
	Dim showNavString
	showNavString = ""
 
	if PageCount = "" Then PageCount = 1	'修改当没有记录时会有问题 added by tianjincat 2002-04-11
	if PageNo = "" Then PageNo = 1
	if RecordCount = "" Then RecordCount = 0
	If CLng( PageNo ) <= 1 Then
		dFirst = "disabled"
		dPrev = "disabled"
	End If
	
	If CLng( PageNo ) >= PageCount then
		dNext = "disabled"
		dLast = "disabled"
	End If 
	
	If PageCount <= 1 Then
		 showNavString = showNavString & "共 <stong>" & RecordCount & "</strong> 条z记录"
		 Exit function
	end if 
	showNavString = showNavString &  "<span class=smallFont>&gt;&gt; " & vbCrLf
	
	if  req("PageNo")<>"" or req("isStart")<>"" then
else
	 session("pageParam")=Request.ServerVariables("QUERY_STRING")
	end if  
  Dim despage
  desPage = DespageParam  
 
	despage = despage & "?1=1&def=" & req("def")  &"&" &session("pageParam")
	If PageNo = 1 Then
		showNavString = showNavString &  "<font color=darkgray>首页 前页</font>"
	Else
		
		If InStr( 1, despage, "?", 1 ) = 0 Then '未加其他参数
			showNavString = showNavString &  "<a href=""" & despage & "?"
			showNavString = showNavString &  "PageNo=1"">首页</a> <a "
			showNavString = showNavString &  " href=""" & despage & "?"
			showNavString = showNavString &  "PageNo="
			showNavString = showNavString &  PageNo - 1
			showNavString = showNavString &  """>前页</a>"
		Else
			showNavString = showNavString &  "<a href=""" & despage & ""
			showNavString = showNavString &  "&PageNo=1"">首页</a> <a "
			showNavString = showNavString &  " href=""" & despage & ""
			showNavString = showNavString &  "&PageNo="
			showNavString = showNavString &  PageNo - 1
			showNavString = showNavString &  """>前页</a>"		
		End If
	End If
	showNavString = showNavString &  "&nbsp;"
	If PageNo = PageCount Then
		showNavString = showNavString &  "<font color=darkgray>后页 尾页</font>"
	Else
		If InStr( 1, despage, "?", 1 ) = 0 Then '未加其他参数
			showNavString = showNavString &  "<a href=""" & despage & "?"
			showNavString = showNavString &  "PageNo="
			showNavString = showNavString &  PageNo + 1
			showNavString = showNavString &  """>后页</a> <a "
			showNavString = showNavString &  "href=""" & despage & "?"
			showNavString = showNavString &  "PageNo="
			showNavString = showNavString &  PageCount
			showNavString = showNavString &  """>尾页</a>"
		Else
			showNavString = showNavString &  "<a href=""" & despage & ""
			showNavString = showNavString &  "&PageNo="
			showNavString = showNavString &  PageNo + 1
			showNavString = showNavString &  """>后页</a> <a "
			showNavString = showNavString &  "href=""" & despage & ""
			showNavString = showNavString &  "&PageNo="
			showNavString = showNavString &  PageCount
			showNavString = showNavString &  """>尾页</a>"		
		End If
	End If
	showNavString = showNavString &  " 页次：<strong>"
	showNavString = showNavString &  PageNo
	showNavString = showNavString &  "</strong>/<strong>"
	showNavString = showNavString &  PageCount
	showNavString = showNavString &  "</strong>页 "
	'Response.Write PageSize
	'Response.Write "</strong>篇/页 
	showNavString = showNavString &  "共"
	showNavString = showNavString &  "<strong>"& RecordCount & "</strong>"
	
	showNavString = showNavString & "条记录"
	showNavString = showNavString &  " </font>"
	ShowNavLinkString = showNavString 
End Function


'以按钮的方式来显示分页
Public Sub ShowNavButton(ByVal despage )
	if PageCount = "" Then PageCount = 1	'修改当没有记录时会有问题 added by tianjincat 2002-04-11
	if PageNo = "" Then PageNo = 1
	if RecordCount = "" Then RecordCount = 0

	If CLng( PageNo ) <= 1 Then
		dFirst = "disabled"
		dPrev = "disabled"
	End If
	
	If CLng( PageNo ) >= PageCount then
		dNext = "disabled"
		dLast = "disabled"
	End If 
	
	If InStr( 1, despage, "?", 1 ) = 0 Then '未加其他参数

		Response.Write "<button type=button name=btnFirst  Style=""font size=9pt"" onclick=""window.location.href='"& despage &"?PageNo=1'"" "& dFirst &">最前页</button>&nbsp;"
		Response.Write "<button type=button name=btnPrev  Style=""font size=9pt"" onclick=""window.location.href='"& despage &"?PageNo="& PageNo-1 &"'"" "& dPrev &">上一页</button>&nbsp;"
		Response.Write "<button type=button name=btnNext  Style=""font size=9pt"" onclick=""window.location.href='"& despage &"?PageNo="& PageNo+1 &"'"" "& dNext &">下一页</button>&nbsp;"
		Response.Write "<button type=button name=btnLast  Style=""font size=9pt"" onclick=""window.location.href='"& despage &"?PageNo="& PageCount &"'"" "& dLast &">最后页</button>&nbsp;"

	Else

		Response.Write "<button type=button name=btnFirst  Style=""font size=9pt"" onclick=""window.location.href='"& despage &"&PageNo=1'"" "& dFirst &">最前页</button>&nbsp;"
		Response.Write "<button type=button name=btnPrev  Style=""font size=9pt"" onclick=""window.location.href='"& despage &"&PageNo="& PageNo-1 &"'"" "& dPrev &">上一页</button>&nbsp;"
		Response.Write "<button type=button name=btnNext  Style=""font size=9pt"" onclick=""window.location.href='"& despage &"&PageNo="& PageNo+1 &"'"" "& dNext &">下一页</button>&nbsp;"
		Response.Write "<button type=button name=btnLast  Style=""font size=9pt"" onclick=""window.location.href='"& despage &"&PageNo="& PageCount &"'"" "& dLast &">最后页</button>&nbsp;"

	End If
	'显示跳转
	Call showJumpMenu( PageCount, Despage)

	Response.Write "<br>&nbsp;&nbsp;第" & CStr(PageNo) & "页/共" & CStr(PageCount) & "页"
	Response.Write "(" & CStr(RecordCount) & "条记录)"

End Sub

Public Sub ShowCurrentPageCount( )
	
	Dim CurrentPageCount
	
	If RecordCount <= PageSize Then				'记录小于分页数时
		CurrentPageCount = RecordCount		
	Elseif (RecordCount Mod PageSize) = 0 Then	'记录正好是分页数时
		CurrentPageCount = PageSize
	Else	'
		If PageNO = 1 Then
			CurrentPageCount = PageSize
		ElseIf PageNO = PageCount Then
			CurrentPageCount = (RecordCount Mod PageSize)
		Else
			CurrentPageCount = PageSize
		End If	
		
	End If
	
	Response.Write CurrentPageCount
	
End Sub

'####################
'显示跳转
'####################
Private Sub showJumpMenu(ByVal PageCount, ByVal Despage)
	Dim i
	i = 1
	Response.Write VBCRLF
	Response.Write "<script language=""JavaScript"" src=""/JS/jumpMenu.js""></script>" & VBCRLF
	Response.Write "<select name=""JumpMenu"" onChange=MM_jumpMenu('window',this,0) ID=""Select1"">" & VBCRLF
		Do while i <= PageCount 
			if instr(1,despage,"?",1) = 0 then '未加其他参数
				Response.Write "<option value="& Despage & "?PageNo=" & i
					If i = PageNO Then response.Write " selected"
				Response.Write ">"& i &"</option>" & VBCRLF
			Else
				Response.Write "<option value="& Despage & "&PageNo=" & i
					If i = PageNO Then response.Write " selected"
				Response.Write ">" & i & "</option>" & VBCRLF
			End If
		i = i + 1
		Loop
	Response.Write "</select>" &  VBCRLF
End Sub

	
	Function getLang
		if  isNUll(request.Cookies("lanStr")) or (request.Cookies("lanStr")="") then
			getLang ="cn"
		else
			getLang = request.Cookies("lanStr")
		end if 
	End  Function
%>


<%
Dim pageTxt(18,3)
	
pageTxt(1,1)="首页"
pageTxt(2,1)="前页"
pageTxt(3,1)="分页"
pageTxt(4,1)="后页"
pageTxt(5,1)="尾页"
pageTxt(6,1)="页次"
pageTxt(7,1)="页"
pageTxt(8,1)="篇/页 共"
pageTxt(9,1)="条"
pageTxt(10,1)="最前页"
pageTxt(11,1)="上一页"
pageTxt(12,1)="下一页"
pageTxt(13,1)="最后页"
pageTxt(14,1)="第"
pageTxt(15,1)="页/共"
pageTxt(16,1)="条记录"

pageTxt(1,2)="First Page"
pageTxt(2,2)="Previous Page"
pageTxt(3,2)="Page" & chr(38) & "nbsp;"
pageTxt(4,2)="Next Page"
pageTxt(5,2)="Last Page"
pageTxt(6,2)="Page:" & chr(38) & "nbsp;"
pageTxt(7,2)=chr(38) & "nbsp;"
pageTxt(8,2)=chr(38) & "nbsp;Record/Page Total:" & chr(38) & "nbsp;"
pageTxt(9,2)=chr(38) & "nbsp;Record"
pageTxt(10,2)="First Page"
pageTxt(11,2)="Previous Page"
pageTxt(12,2)="Next Page"
pageTxt(13,2)="Last Page"
pageTxt(14,2)=chr(38) & "nbsp; "
pageTxt(15,2)=chr(38) & "nbsp;Page/Total"
pageTxt(16,2)=chr(38) & "nbsp;Records"

pageTxt(1,3)="首頁"
pageTxt(2,3)="前頁"
pageTxt(3,3)="分頁"
pageTxt(4,3)="後頁"
pageTxt(5,3)="尾頁"
pageTxt(6,3)="頁次"
pageTxt(7,3)="頁"
pageTxt(8,3)="篇/頁 共"
pageTxt(9,3)="條"
pageTxt(10,3)="最前頁"
pageTxt(11,3)="上一頁"
pageTxt(12,3)="下一頁"
pageTxt(13,3)="最後頁"
pageTxt(14,3)="第"
pageTxt(15,3)="頁/共"
pageTxt(16,3)="條記錄"


Function showPageTxt(key)
		showPageTxt = pageTxt(key,1)
		'response.write getlang
		if lanStr="cn" then
			showPageTxt = pageTxt(key,1)
		end if 

		if lanStr="big5" then
			showPageTxt = pageTxt(key,3)
		end if 

		if lanStr="en" then
			showPageTxt = pageTxt(key,2)
		end if 
end Function

function getFormatString(str,strlen)
	if (len(str)>strlen) then
		getFormatString = left(str,strlen) & "..."
	else
		getFormatString = str
	end if 
end Function



Function isInstr(src,des,fStr,tStr)
	if inStr(src,des)<>0 then
		isInstr = tStr
	else
		isInstr = fStr
	end if 
End Function

function disp(str)
	disp=LEFT(DispTime(str,"YYYY-MM-DD-HH-MM"),16)
end function
function P(str)
	if isnull(str) then
		P=""	
	end if 
	if str="" then
		P=""
	end if 
	if str<>"" then
		P=str
	end if 
end function 


sub initSystem()

end sub

initSystem

'************************************************** 
'功能：时间显示的控制
'	Dtime 为输入smallDateTime时间 返回值为DType格式时间
'**************************************************
Function DispTime(Dtime,Dtype)
dim yeart
dim montht
dim dayt
dim hourt
dim minuteT
dim secondT
if Dtime="" or isNull(Dtime) then       
	DispTime=""
else 
	Dtime=cdate(trim(Dtime))
   if len(year(Dtime))<=2 then
     yearT="20" & year(Dtime)
   else
     yearT=year(Dtime)
   end if
   if len(month(Dtime))<=1 then
     monthT="0" & month(Dtime)
   else
     monthT=month(Dtime)  
   end if
   if len(day(Dtime))<=1 then
     dayT="0" & day(Dtime)
   else
     dayT=day(Dtime)  
   end if
   if len(hour(Dtime))<=1 then
     hourT="0" & hour(Dtime)
   else
     hourT=hour(Dtime)  
   end if
   if len(minute(Dtime))<=1 then
     minuteT="0" & minute(Dtime)
   else
     minuteT=minute(Dtime)  
   end if
   if len(second(Dtime))<=1 then
     secondT="0" & second(Dtime)
   else
     secondT=second(Dtime)  
   end if
   '分析显示类型 
   'YYYY只显示年
   'YYYY-MM显示年月
   'YYYY-MM-DD显示年月日
   'MM-DD显示月日
   'MM-DD-HH显示月日时
   'MM-DD-HH:MM显示月日时分
   'MM-DD-HH:MM:SS显示月日时分秒
   'DD-HH:MM:SS显示日时分秒
   'HH:MM:SS显示时分秒
   'DD-HH显示日时
   'YYYY-MM-DD-HH:MM:SS
   'Dtime=yearT & "-" & monthT & "-" & dayT & " " & hourT & ":" & minuteT & ":" & secondT
		'Dtype=Ucase(Dtype)
		select case Dtype

			case "YYYY"
				Dtime=yearT
			case "YYYY-MM"
				Dtime=yearT & "-" & monthT
			case "YYYY-MM-DD"
				Dtime=yearT & "-" & monthT & "-" & dayT
			case "MM-DD"
				Dtime=monthT & "-" & dayT
			case "MM-DD-HH"
				Dtime=monthT & "-" & dayT & " " & hourT
			case "MM-DD-HH:MM"
				Dtime=monthT & "-" & dayT & " " & hourT & ":" & minuteT
			case "MM-DD-HH:MM:SS"
				Dtime=monthT & "-" & dayT & " " & hourT & ":" & minuteT & ":" & secondT
			case "DD-HH:MM:SS"
				Dtime=dayT & " " & hourT & ":" & minuteT & ":" & secondT
			case "HH:MM:SS"
				Dtime=hourT & ":" & minuteT & ":" & secondT
			case "DD-HH"
				Dtime=dayT & " " & hourT
			case "YYYY-MM-DD-HH:MM:SS"
				Dtime=yearT & "-" & monthT & "-" & dayT & " " & hourT & ":" & minuteT & ":" & secondT
			case "YYYYMMDDHHMMSS"
				Dtime=yearT & monthT & dayT & hourT & minuteT & secondT
			case "YYYY-MM-DD-HH-MM-SS"
				Dtime=yearT & "-" & monthT & "-" & dayT & "-" & hourT & "-" & minuteT & "-" & secondT		
			case "YYYY-MM-DD HH:MM"
				Dtime=yearT & "-" & monthT & "-" & dayT & " " & hourT & ":" & minuteT 
			case "C-YYYY-MM-DD-HH-MM"
				Dtime=yearT & "年" & monthT & "月" & dayT & "日" & hourT & "时" & minuteT & "分"
			case "C-MM-DD-HH-MM"
				Dtime=monthT & "月" & dayT & "日" & hourT & "时" & minuteT & "分"
			case "C-MM-DD-HH"
				Dtime=monthT & "月" & dayT & "日" & hourT & "时"
			case "C-YYYY-MM-DD"
				Dtime=yearT & "年" & monthT & "月" & dayT & "日"
			case "C-DD-HH-MM"
				Dtime=dayT & "日" & hourT & "时" & minuteT & "分"
			case "YYYY.MM.DD"
				Dtime=yearT & "." & monthT & "." & dayT
			case else
				Dtime=yearT & "-" & monthT & "-" & dayT & " " & hourT & ":" & minuteT & ":" & secondT
							
		end select 
	 DispTime=Dtime
 end if 
End Function


function getUserInfo(tempid,itype) 
	if tempid="" or isNull(tempid) then
		getUserInfo = ""
	else
		if isNumeric(tempid) then 
			if itype="Name" then 
				funSql = "select username from mova_user where mova_userid=" & tempid 
			end if 
			
			if itype="Login" then 
				funSql = "select login from mova_user where mova_userid=" & tempid 
			end if
			'response.write funSql
			set movaRs2 = conn.execute(funSql)
			if movaRs2.eof or movaRs2.bof then
				getUserInfo = ""
			else
				getUserInfo = cStr(movaRs2(0))
			end if 
		else
			getUserInfo = ""
		end if
	end if 
end function



'安全访问控制函数
function chkAccount(funid) 
	'response.write funid & "<BR>"
	'response.write session("secString") & "<BR>"
	if session("secString")="" or session("secString")=Null then
		chkAccount = false
	else
		if inStr(session("secString"),"`" & funid & "|")=0 then
			chkAccount = False
		else
			chkAccount = True
		end if 
	end if 
end Function

sub chkAccountStr(funid) 

	if session("userid")="" then 
		response.write "<script>window.parent.location.href='" & application("FAILD_LOGIN") & "'</script>"
	else
		if session("userRole")<>application("SYSTEM_ROLE") then
			if inStr(session("secString"),funid)=0 then
				msgbox "越权操作，请退出系统" & funid,""
			end if 
		end if 	
	end if 
end Sub

sub chkObjectTeam(pTeamId,scope)
	if scope="GROUP" then 
		if cint(session("team"))<>cint(pTeamid) and session("roleScope")="T" then 
			msgbox "跨组访问越权操作，请退出系统",""
		end if 
	end if 
end sub

sub chkLogin 
	if session("userid")="" then
		 'http://localhost:8080/movaOpps/opp/opp.asp?objectId=1&id=9&cid=-1
	Dim fromURL
	fromURL = "http://" & Request.ServerVariables("HTTP_HOST") & "/" &   Request.ServerVariables("URL")  & "?" & Request.ServerVariables("QUERY_STRING")   
	if inStr(ucase(fromURL),"/MOVAOPPS/")>0 then 
		'response.write fromURL
	  session("FromURL")=fromURL
	end if 
	response.write "<script>window.parent.location.href='" & application("FAILD_LOGIN") & "'</script>"
	end if 
end Sub

function MyRandn(n)	'生成随机数字，n为数字的个数
	dim thechr
	thechr = ""
	for i=1 to n
		dim zNum,zNum2
		Randomize
		zNum = cint(9*Rnd)
		zNum = zNum + 48
		thechr = thechr & chr(zNum)
	next
	MyRandn = thechr
end function


'检查是否是自己的
function chkIsMe(tUserid)
	if cStr(chkIsMe) = cStr(session("userid")) then
		chkIsMe=true
	else
		if cStr(chkIsMe)="" or isNull(cStr(chkIsMe)) then
			chkIsMe = True
		else
			chkIsMe = False
		end if
	end if 
end function

function showSpace(deeps,spaceStr)
'按照数字的大小循环输出空格
	returnStr=""
	for i=1 to deeps  
		returnStr=spaceStr & returnStr
	next
	showSpace = returnStr
end function

sub debugDIM(param)
	response.write param
	response.end
end sub

'日期的SQL转换, 格式为：mmmm-mm-yy
Function GetSqlDateStr (datestr)
	GetSqlDateStr= "convert(datetime,'" & datestr & " " & TIME & "',120)"        
End Function

Function GetSqlDate(DateYear,DateMon,DateDay) 
	GetSqlDate="convert(datetime,'" & DateYear & "-" & DateMon & "-" & DateDay & "',120)"        
End Function

'安全的获取函数
Function SafeCint(intStr)
	if isNull(intStr) or intStr="" then
		SafeCint=0
	else
		SafeCint=cint(intStr)
	end if 
End Function


Function StopInjection(Values)
Dim regEx
Set regEx = New RegExp
regEx.IgnoreCase = True
regEx.Global = True
regEx.Pattern = "'|;|#|([\s\b+()]+([email=select%7Cupdate%7Cinsert%7Cdelete%7Cdeclare%7C@%7Cexec%7Cdbcc%7Calter%7Cdrop%7Ccreate%7Cbackup%7Cif%7Celse%7Cend%7Cand%7Cor%7Cadd%7Cset%7Copen%7Cclose%7Cuse%7Cbegin%7Cretun%7Cas%7Cgo%7Cexists)[/s/b]select|update|insert|delete|declare|@|exec|dbcc|alter|drop|create|backup|if|else|end|and|or|add|set|open|close|use|begin|retun|as|go|exists)[\s\b[/email]+]*)"
Dim sItem, sValue
For Each sItem In Values
       sValue = Values(sItem)
       If regEx.Test(sValue) Then
         Response.Write "<Script Language=javascript>alert('非法注入！你的行为已被记录！！');history.back(-1);</Script>"
         Response.End
       End If
Next
Set regEx = Nothing
End function

Response.Buffer = True   '缓存页面
Sub execStopInjection
	'防范get注入
	If Request.QueryString <> ""   Then StopInjection(Request.QueryString)
	'防范post注入
	If Request.Form <> ""   Then StopInjection(Request.Form)
	'防范cookies注入
	If Request.Cookies <> ""   Then StopInjection(Request.Cookies)
End Sub

'获取时间戳
Public Function getTime() 
	getTime = DateDiff("s", "1970-01-01 00:00:00", Date()) * 1000 + Int(CDbl(Timer()) * 1000) 
End Function 

Public Function getTimestamp() 
	getTimestamp = DateDiff("s", "1970-01-01 00:00:00", Date()) * 1000 + Int(CDbl(Timer()) * 1000) 
End Function 


'生成指定范围的随机数  
'NumMin 起始值 NumMax 终点值  
Function MyRnd(NumMin, NumMax)  
      Randomize  
      MyRnd = Int(Rnd * (NumMax - NumMin + 1)) + NumMin  
End Function

'设置debug信息
Function setDebug(functionName,varName,value)
	Dim tempDebug 
	if application("DEBUG_INFO") or debugSwitch then
		tempDebug =  functionName & " ` " & varName & " ` " & value & " ~"
		if application("DEBUG_LINE_INFO") then 
			response.write "{{" & tempDebug  & "}}<br>"	
		end if 
		returnDebug = returnDebug & tempDebug & chr(13)
	end if 
end Function

'获取debug信息
Function getDebug() 
	Dim lineArray,fieldArray,returnStr,z,zz
	if application("DEBUG_INFO") then
		

		returnStr = returnStr &  "<div class=cn_list_title>调试信息</font></div> "
		returnStr = returnStr &  "<DIV class=cn_col01>"
		returnStr = returnStr &  "<table width='100%'>"
		returnStr = returnStr & "<tr><td>userName</td><td></td><td>" & session("username") &  " </td></tr>"
		returnStr = returnStr & "<tr><td>role</td><td></td><td>" & session("userRole") &  " </td></tr>"
		returnStr = returnStr & "<tr><td>sec</td><td></td><td>" & session("secString") &  " </td></tr>"
		
		lineArray=split(returnDebug," ~" & chr(13))
		For Each z In lineArray
			returnStr = returnStr & "<tr>"
				fieldArray = split(z," ` ")
				For Each zz In fieldArray 
					returnStr = returnStr & "<td>" & zz & "</td>"
				Next
			returnStr = returnStr & "</tr>" & chr(13)
		Next
		returnStr = returnStr &  "</table>"
		returnStr = returnStr & "</div>"
	end if
	
	getDebug =  returnStr
End Function

Function FormatTime(NTime,StrFormat)
		Dim T,dateFormat
		T = NTime
		IF Not IsDate(T) Then
			FormatTime = ""
			Exit Function
		End If
		dateFormat = StrFormat
			dateFormat = Replace(dateFormat,"yy", Year(T))
			dateFormat = Replace(dateFormat,"sy", Right(Year(T),2))
			dateFormat = Replace(dateFormat,"mm", (Month(T)))
			dateFormat = Replace(dateFormat,"dd", (Day(T)))
			dateFormat = Replace(dateFormat,"hh", DoubleNum(hour(T)))
			dateFormat = Replace(dateFormat,"mn", DoubleNum(minute(T)))
			dateFormat = Replace(dateFormat,"ss", DoubleNum(second(T)))
			'FormatTime = T
			FormatTime = dateFormat
End Function 

Sub setCachePicklist()
'设置下拉选项的cache
	Dim curPicklist
	curPicklist=""
	sql = "select code,selectValue,txt  from mova_picklist where archive='F' order by code,sortno"
	executeQuery conn,rs,sql,1,1
	do 
	if rs.eof or rs.bof then
		exit do 
	end if
 	if rs("code")<>curPicklist then
 		'response.write rs("code") & ":" & curPicklist & "<BR>"
 		curPicklist = rs("code")
 		application("CACHE_" & curPicklist)=""
 	end if
 	application("CACHE_" & curPicklist) = application("CACHE_" & curPicklist) & "^" & rs("selectValue") & "|" & rs("txt")
	rs.movenext
	loop
	application("CACHE") = "YES"
End Sub

Function cachePicklist(picklistName,valuelist) 
'通过cache方式获取下拉框
	Dim picklistArray,z,itemArray,returnCachePicklist,haveMatching
	returnCachePicklist = ""
	haveMatching = false
	z=""
	
	if left(picklistName,1)="#" then 
		picklistArray=split(application("CACHE_" &  right(picklistName,len(picklistName)-1)),"^" )
			For Each z In picklistArray
				if z <>"" then 
					itemArray=split(z,"|" ) 
					
					if cStr(valuelist& "") = itemArray(0) then
						returnCachePicklist = returnCachePicklist &  "<option value=" & chr(34) & itemArray(0) & chr(34) & " selected>" &  itemArray(1) & "</option>" & chr(13)
						haveMatching = true
					else
						returnCachePicklist = returnCachePicklist &  "<option value=" & chr(34) & itemArray(0) & chr(34) & ">" &  itemArray(1) & "</option>" & chr(13)
					end if 
				end if 
			Next
			if not haveMatching then 
				returnCachePicklist = returnCachePicklist &  "<option value=" & chr(34) & valuelist & chr(34) & " selected>" &  valuelist & "</option>" & chr(13)
			end if
	else
		returnCachePicklist = returnCachePicklist & picklist(picklistName,valueList)
	end if 
	cachePicklist = returnCachePicklist

End Function



function getPicklistItem(code,value)
	Dim returnItem,appVar,picklistArray,z,itemArray
	returnItem = ""
	appVar = "CACHE_" & code
	picklistArray=split(application(appVar),"^" )
			For Each z In picklistArray
				if z <>"" then 
					itemArray=split(z,"|" )
					if cStr(value&"") = itemArray(0) then
						returnItem = itemArray(1)
						exit For
					end if 
				end if 
			Next
	getPicklistItem = returnItem
end Function

function getCalendar(clickButton,textObject,haveTime)
	Dim calStr
	         calStr = 	"<img src='" & movaStyle & "/images/calendar.gif' id='" & clickButton & "' align='top'>" & chr(13)
	calStr = 	calStr &  "		<script>"
	calStr = 	calStr &  "		Calendar.setup({" & chr(13)
	calStr = 	calStr &  "		trigger    : " & chr(34) & clickButton &  chr(34) & "," & chr(13)
	calStr = 	calStr &  "		inputField :  " & chr(34) & textObject & chr(34) & "," & chr(13)
	calStr = 	calStr &  "		animation  : false," & chr(13)
	if haveTime="T" then 
		calStr = calStr  &  "   showTime   : 12," & chr(13)
	end if 
	calStr = 	calStr &  "		onSelect   : function() { this.hide()  ; " & chr(13)
	
	if haveTime="T" then 
		calStr = 	calStr &  "      document.getElementById(" & chr(34) & textObject & chr(34) &").value = document.getElementById(" & chr(34) & textObject & chr(34) &").value +' ' +  ('' + (100+ this.getHours())).substring(1,3) ;" & chr(13)
		calStr = 	calStr &  "      document.getElementById(" & chr(34) & textObject & chr(34) &").value = document.getElementById(" & chr(34) & textObject & chr(34) &").value +':' +  ('' + (100+ this.getMinutes())).substring(1,3) ;" & chr(13)
	end if 
	
	calStr = 	calStr &  "	}" & chr(13)
	calStr = 	calStr &  "		});" & chr(13)
	calStr = 	calStr &  "		</script>" & chr(13)

	getCalendar = calStr

end Function 


sub setLog(objectId,objectCode,objectNo,operationType,operationDescription)
	'DataBase Coding....:
	dim sqlString 
	sqlString = "Select * From mu_log Where log_id is null"
	executeQuery conn,movaRS,sqlString,1,3
	movaRS.addnew
	'RS seting...:
	movaRS("object_Id")= clng(objectId)
	movaRS("object_code")= objectCode
	movaRS("object_no") = objectNo
	movaRS("operation")= operationType
	movaRS("description")= operationDescription
	movaRS("createuser") = cint(session("userid"))
	movaRS("createdate") = Now 
	movaRS.Update
	movaRS.close
end sub
 
	
	'写状态
	Sub setStatus(pConnect,pRS,pObject,pObjectId,pStatus,pNotes)
		'状态必须为单个数字以及单个字符0~9a~z
		if pObject="" or pObjectId="" or pStatus="" then
			test 4
		else
			sqlString = "Select * From mova_status Where [object]='" & pObject &"' and  object_id=" &  pObjectId
			executeQuery pConnect,pRS,sqlString,1,3
			if pRS.eof or pRS.bof then 
				pRS.addnew
			end if 
			'RS seting...:
			movaRS("object")= pObject
			movaRS("object_id")= pObjectId
	  	
			movaRS("m"&pStatus&"_date" ) = Now
			movaRS("m"&pStatus&"_user" ) = cint(session("userid"))
			movaRS("m"&pStatus&"_notes" ) =pNotes
			movaRS.Update
			movaRS.close
		end if 
	end Sub

		
	function chkStatusConvert(statusRule,oldStatus,newStatus)
		curRule = ""
		if statusRule="" then
			chkStatusConvert = false
		else
			ruleArray=split(statusRule,"," )
			For Each z In ruleArray
				if left(z,1) = newStatus then
					curRule = z
					exit For
				end if 
			Next
			
			if curRule<>"" then
					mArray = split( curRule,"-")
					if inStr(mArray(1),oldStatus)>0 then
						chkStatusConvert = true
					else
						chkStatusConvert = false
					end if 
			else
				chkStatusConvert = false
			end if
		end if
		
		'如果oldStatus,newStatus为 * 则返回true
		if oldStatus="*" and nesStatus="*" then
				chkStatusConvert = true
		end if 
	end Function
	
	
	
	sub showLog(pObject,pKeyid)
	if pObject<>"" and pKeyid<>"" then 
%>
<DIV class=cn_col>
 
<% 			
 			sqlString=" select l.*,u.username from mova_log l,mova_user u where l.operation_by = u.mova_userid "
 			sqlString = sqlString & " and object_name='" & pObject &"' and entity_id="& pKeyid &" order by operation_date desc" 
			executeQuery conn,rs,sqlString, 1, 1

			do
				if rs.eof then exit Do


				FRM_operation = rs("operation")
				FRM_userName = rs("username")
				FRM_operation_date = rs("operation_date")
				FRM_notes = rs("notes")
				 
				
%>
	<b>[<%=FRM_operation_date  %>]</b>&nbsp;&nbsp; <%=FRM_notes %> &nbsp;&nbsp;<i>-&nbsp;&nbsp;<%= FRM_userName  %></i><br>
 
 
<%			
		rs.Movenext
	loop
%>
 
<%
	end if
end Sub

sub showLogNoUser(pObject,pKeyid)
	if pObject<>"" and pKeyid<>"" then 
%>
<DIV class=cn_col>
 
<% 			
 			sqlString=" select l.*  from mova_log l where 1=1 "
 			sqlString = sqlString & " and object_name='" & pObject &"' and entity_id="& pKeyid &" order by operation_date desc" 
			executeQuery conn,rs,sqlString, 1, 1

			do
				if rs.eof then exit Do


				FRM_operation = rs("operation")
				FRM_userName = "客户"
				FRM_operation_date = rs("operation_date")
				FRM_notes = rs("notes")
				 
				
%>
	<b>[<%=FRM_operation_date  %>]</b>&nbsp;&nbsp; <%=FRM_notes %> &nbsp;&nbsp;<i>-&nbsp;&nbsp;<%= FRM_userName  %></i><br>
 
 
<%			
		rs.Movenext
	loop
%>
 
<%
	end if
end Sub

 
'####################temp_lib.asp
Dim pageSplitTxt(3,7)
'此处需要读取session("LAN") 的值， 当为1时为简体中文， 2为繁体 3为英文
pageSplitTxt(1,1) = "共计"
pageSplitTxt(1,2) = "条记录"
pageSplitTxt(1,3) = "分为"
pageSplitTxt(1,4) = "页"
pageSplitTxt(1,5) = "后一页"
pageSplitTxt(1,6) = "前一页"
pageSplitTxt(1,7) = "转到" 

pageSplitTxt(2,1) = "共計"
pageSplitTxt(2,2) = "條記錄"
pageSplitTxt(2,3) = "分為"
pageSplitTxt(2,4) = "頁"
pageSplitTxt(2,5) = "後一頁"
pageSplitTxt(2,6) = "前一頁"
pageSplitTxt(2,7) = "轉到"

pageSplitTxt(3,1) = "Total"
pageSplitTxt(3,2) = "record"
pageSplitTxt(3,3) = ""
pageSplitTxt(3,4) = "page"
pageSplitTxt(3,5) = "Next Page"
pageSplitTxt(3,6) = "Previous Page"
pageSplitTxt(3,7) = "To"

Function getPageSplitText(key)
	if session("LAN") ="" then 
		session("LAN") = 1
	end if
	getPageSplitText = pageSplitTxt(session("LAN"),key)
End Function


'MBF = "<font style=""color:red;"">*</font>"
'ARR = "<font face=""webdings"" size=2>4</font>" 
'openDatabase
'---------------------------------------------------------------------------------------------------------
'字符串处理函数部分
Function selIt(I,J)
	If I=J Then
		Str = " selected"
	Else
		Str = " "
	End If
	selIt = str
End Function
'--------------------------------------------------------------------------------------------------------
Function GetShortStr(Str,L)
	If Str="" or L="" Then
		Str = ""
	ElseIf Not IsNumeric(L) Then
		Str = ""
	ElseIf Len(Str)>l Then
		Str = Left(Str,L) & ".."
	End If
	GetShortStr = str
End Function
'---------------------------------------------------------------------------------------------------------
Function GetRadomStr(l)	'获得随机字符串
	dim str,i,j,sstr
	sstr = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	str = ""
	for j=0 to l-1
		Randomize
		i = Int((26) * Rnd) + 1
		str = str & mid(sstr,i,1)
	next
	GetRadomStr = str
End Function
'---------------------------------------------------------------------------------------------------------
Function CheckIsNum(Num,Info)
	Num = TRIM(Num)
	If Not ISNumeric(Num) Then Call MsgBox(Info,1)
	CheckIsNum = CheckNum(Num)
End Function
'---------------------------------------------------------------------------------------------------------
Function CheckNum(ParentID)
	ParentID = TRIM(ParentID)
	If ParentID="" Then ParentID = 0
	If Not IsNumeric(ParentID) Then ParentID = 0
	CheckNum = Clng(ParentID)
End Function
'---------------------------------------------------------------------------------------------------------
Function CheckIsDate(D,Info)
	D = Trim(D)
	If Not IsDate(D) Then  Call MsgBox(Info,1)
	CheckIsDate = D
End Function
'---------------------------------------------------------------------------------------------------------
Function CheckDate(D)
	D = Trim(D)
	If Not IsDate(D) Then D = Date()
	CheckDate = D
End Function
'--------------------------------------------------------------------------------------------------------
function CheckStr(str)
  'if len(trim(str))>0 then
    'str = Trim(Str)
    'str = replace(str,"'","''")
    'str = replace(str,"<","&gt;")
    'str = replace(str,">","&lt;")
    'str = replace(str,chr(13),"")
    'str = replace(str,chr(34),"""")
  'end if
	CheckStr = Str
end function
'---------------------------------------------------------------------------------------------------------
Function CheckNull(V,info)
	'V = CheckStr(V)
	If V = "" or V=null Then 
		Call MsgBox(info,1)
	End If
	CheckNull = V
End Function
'--------------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------------
'检测CheckBox是否选中
Function checkIsSel(i)
	if isnumeric(i) then
		if clng(i) >0 then Response.Write " checked "
	end if
end function
'--------------------------------------------------------------------------------------------------------
Function NowFlag()
	NowFlag = Year(now) & doublenum(month(now)) & doublenum(day(now)) & doublenum(minute(now)) & doublenum(Second(now))
End Function
'---------------------------------------------------------------------------------------------------------
Function RepKeyword(content,keyword)	'替换
	If content ="" or keyword="" then 
	   RepKeyword = content
	   Exit Function
	End If
	   RepKeyword = Replace(content,keyword,"<b><font style='color:black;background-color:yellow'>"&keyword&"</font></b>")
End Function
'---------------------------------------------------------------------------------------------------------
'外部显示
'---------------------------------------------------------------------------------------------------------
function msgbox(error,n)
  Set rs=nothing
  Set conn=nothing  
  Response.Write "<script>"
  'vartype() 是一个类型判断函数，如果是字符就返回8
	if error><"" then response.write("alert('" & error & "\n\n');"&vbcrlf)
	if Vartype(n)=2 then
		if n=1 then response.write("history.go(-1);"&vbcrlf) '后退
		if n=2 then response.write("parent.top.location.href='/';"&vbcrlf) '返回管理
		if n=3 then response.write("window.close();"&vbcrlf) '关闭窗口
		if n=4 then response.write("window.opener.location.reload();window.close();"&vbcrlf) '弹出窗口刷新
	end if
	if Vartype(n)=8 then 
		if n<>"" then 
			response.write("window.location.href='"& n &"';")
		end if 
	end if 
  Response.Write "</scr"& "ipt>"
  Response.end
end function
'---------------------------------------------------------------------------------------------------------
Function NavBtn(value,n)
	
	if Vartype(n)=2 then
		if n=1 then act = "history.go(-1);" '后退
		if n=2 then act = "window.close();" '关闭窗口
		if n=3 then act = "parent.top.location.href='/';" '返回管理
	end if
	if Vartype(n)=8 then act = "window.location.href='"& n &"';"

	NavBtn = "<input type=""button"" value="""& value &""" onclick="""& act &""">"
End Function
'---------------------------------------------------------------------------------------------------------
Function FormatTime(NTime,StrFormat)
		Dim T,dateFormat
		T = NTime
		IF Not IsDate(T) Then
			FormatTime = ""
			Exit Function
		End If
		dateFormat = StrFormat
			dateFormat = Replace(dateFormat,"yy", Year(T))
			dateFormat = Replace(dateFormat,"sy", Right(Year(T),2))
			dateFormat = Replace(dateFormat,"mm", (Month(T)))
			dateFormat = Replace(dateFormat,"dd", (Day(T)))
			dateFormat = Replace(dateFormat,"hh", DoubleNum(hour(T)))
			dateFormat = Replace(dateFormat,"mn", DoubleNum(minute(T)))
			dateFormat = Replace(dateFormat,"ss", DoubleNum(second(T)))
			'FormatTime = T
			FormatTime = dateFormat
End Function
'----------------------------------------------------------------------------------------------------------
Function doublenum(fNum)
    if fNum > 9 then 
        doublenum = fNum    
    Else
		doublenum = "0" & fNum
    end if
end function

Function newTxtFile(pathFile)
	'重新创建插件文件
		dim pFs,pTfile 
		set pFs=Server.CreateObject("Scripting.FileSystemObject")
		set pTfile=pFs.CreateTextFile(Server.MapPath(pathFile))
		pTfile.close
		set pTfile=nothing
		set pFs=nothing
End Function
'----------------------------------------------------------------------------------------------------------
'新闻数据类函数
'---------------------------------------------------------------------------------------------------------

Function CreateDIR(Path)
	On Error Resume Next
	Path = Trim(Path)
	If Path = "" then Exit Function
	'Response.Write server.MapPath(filename)
	'Path = Lcase(Path)
	FilePath = server.MapPath(Path)
	If Err.number <> 0 Then '错误检测
		Response.Write "错误类型："&Err.Description
		Response.End
		Exit Function
	End If
	
	Set Fs = Server.CreateObject("Scripting.FileSystemObject")
	Path = Split(FilePath,"\") '创建文件夹
	CurPath = Path(0) 
	for i=1 to Ubound(Path)
		CurPath = CurPath & "\" & Path(i)
		If Not Fs.FolderExists(CurPath) Then 
			Fs.CreateFolder(CurPath)
			'Response.Write "创建文件夹成功" & CurPath & "<BR>"
		End If
	Next
	Set Fs = Nothing
	'If Err.number <> 0 Then Response.Write "错误类型："&Err.Description 
End Function
'--------------------------------------------------------------------------------------------------------
Function delVFile(filename)
	Set Fs = Server.CreateObject("Scripting.FileSystemObject")
	If Fs.FileExists(filename) Then 
		Fs.DeleteFile filename
	End If
	Set Fs = Nothing
End Function
'--------------------------------------------------------------------------------------------------------
Function delFile(FileName)
	On Error Resume Next
	
	FileName = Trim(FileName)
	If FileName = "" then Exit Function

	FileName = Lcase(Replace(FileName,"\","/"))
	Pos =  InstrRev(FileName,"/")
	VFilePath  = Left(FileName,Pos)
	VFileName  = Right(FileName,Len(FileName)-pos)
	TFilePath = server.MapPath(VFilePath)
	TFile = TFilePath & "\" & VFileName
	'Response.Write "物理路径：" & TFile 
	'Response.End
	
	If Err.number <> 0 Then '错误检测
		Response.Write "错误类型："&Err.Description &"<br>文件名：" & filename
		Exit Function
	End If
	
	Set Fs = Server.CreateObject("Scripting.FileSystemObject")
	If Fs.FileExists(TFile) Then
		Fs.DeleteFile TFile
	End If
	Set Fs = Nothing
End Function
'---------------------------------------------------------------------------------------
Function ShowPage(RecordCount,PageCount,Url,CurPage)
'RecordCount记录总数
'PageSize  页数
'Url		连接地址
'CurPage	当前页
%>
<TABLE align=center width="100%" ID="TblShowPage">
                    <FORM action=<%=URL%> method=post name=pageform ID="Form1">
                    <TBODY>
                    <TR>
                      <TD align=right Class=9black>&gt;&gt;&gt; <%=getPageSplitText(1)%> <B><%=RecordCount%></B> <%=getPageSplitText(2)%>,<%=getPageSplitText(3)%>&nbsp;<B><%=PageCount%></B>&nbsp;<%=getPageSplitText(4)%>  
                       <%
                       If PageCount = 1 then 
						  Response.Write ""
					   ElseIf (curpage =1) and (curPgae < PageCount ) Then
						  Response.Write "<a href=" & URL & "&page=" & cstr(curpage+1) & ">"& getPageSplitText(5) &"</a>"
						  
					   ElseIf (curpage = PageCount ) and (PageCount > 1) Then
					      Response.Write "<a href=" & URL & "&page=" & cstr(curpage-1) & ">"& getPageSplitText(6) &"</a>"
					      
					   ElseIf (curpage >1) and (curPgae < PageCount ) Then
						  Response.Write "<a href=" & URL & "&page=" & cstr(curpage-1) & ">"& getPageSplitText(6) &"</a> | "
						  Response.Write "<a href=" & URL & "&page=" & cstr(curpage+1) & ">"& getPageSplitText(5) &"</a>"
					   End If
                       %>
                        &nbsp;&nbsp;&nbsp;<%=getPageSplitText(7)%>:<SELECT name=page onchange=this.form.submit() style="FONT: 10px ,arial" ID="Select1">
                        <%For I=1 to PageCount
                        If i = curPage Then
							Response.Write "<OPTION selected  value=" & i & ">" & i & "</OPTION>"
                        Else
							Response.Write "<OPTION		      value="& i  & ">" & i & "</OPTION>"
                        End If
                        Next%>
                        </SELECT>
                       </TD>
                     </TR>
                     </FORM>
                     </TBODY>
                   </TABLE>
<%
End Function
'--------------------------------------------------------------------------------------------------------
Function SetPage(RSPage,PageSize)
	If Not IsObject(RSPAGE) Then 
		RecordCount	= 0
		PageCount	= 0
		Exit Function
	ENd If
	CurPage  = req("Page")
	If CurPage = "" Then CurPage = 1
	If Not IsNumeric(CurPage) or CurPage < 1 Then
		CurPage	= 1
	Else
		CurPage = Clng(CurPage)
	End If
	'Set RsPage = Server.CreateObject("adodb.recordset")
	RSPage.PageSize = PageSize
	Recordcount	= RSPage.RecordCount
	PageCount	= RSPage.PageCount

	If CurPage > PageCount Then CurPage	= PageCount
	If Not RSpage.Eof Then RSPage.AbsolutePage	= CurPage
End Function



'--------------------------------------------------------------------------------------------------------
'Dim PageSize,PageCount,RecordCount,CurPage
'Dim RecordCount,CurPage

Function GetFiledValue(Sql)
	Dim Rsm,SelValue
	Set Rsm = Server.CreateObject("adodb.recordSet")
	Rsm.Open sql,conn,1,2
	If Not Rsm.Eof Then GetFiledValue = Rsm(0)
	Rsm.Close
End Function

Function ShowNewsTypeNav()
	Dim ID,Sql,Rsm
	ID = CheckIsNum(req("ID"),"新闻ID必须选择!")	
	Sql = "select top 1 TypeName From mova_newsType where code in (Select Top 1 category From mova_news where mova_newsid =" & ID & ") "
	Set Rsm = Server.CreateObject("adodb.recordset")
	Rsm.open sql,conn,1,2
	If Not Rsm.Eof Then
		ShowNewsTypeNav = Rsm(0)
	End IF
	Rsm.close
	Set Rsm = nothing
End Function

Function getPageNavigatorHtml(RecordCount,PageCount,Url,CurPage,sliceCode)
'RecordCount记录总数
'PageSize  页数
'Url		连接地址
'CurPage	当前页
	call getTemplateHtml(category,sliceCode)
 	Dim returnHTMLcontent
	returnHTMLcontent = ""
	returnHTMLcontent = returnHTMLcontent  & startHTML
  'returnHTMLcontent = returnHTMLcontent  & "<FORM action='" & URL & "' method=post name=pageform ID='Form1'>"
	returnHTMLcontent = returnHTMLcontent & "&gt;&gt;&gt; "&getPageSplitText(1)&"" & RecordCount & " "&getPageSplitText(2)&"," & getPageSplitText(3)& "&nbsp;" & PageCount & "&nbsp;"&getPageSplitText(4) & "&nbsp;&nbsp;"
	If PageCount = 1 then 
		returnHTMLcontent = returnHTMLcontent & ""
	ElseIf (curpage =1) and (curPgae < PageCount ) Then
		returnHTMLcontent = returnHTMLcontent & "<a href=" & URL & "&page=" & cstr(curpage+1) & ">"&getPageSplitText(5)&"</a>"
	ElseIf (curpage = PageCount ) and (PageCount > 1) Then
		returnHTMLcontent = returnHTMLcontent & "<a href=" & URL & "&page=" & cstr(curpage-1) & ">"&getPageSplitText(6)&"</a>"
	ElseIf (curpage >1) and (curPgae < PageCount ) Then
		returnHTMLcontent = returnHTMLcontent & "<a href=" & URL & "&page=" & cstr(curpage-1) & ">"&getPageSplitText(6)&"</a> | "
		returnHTMLcontent = returnHTMLcontent & "<a href=" & URL & "&page=" & cstr(curpage+1) & ">"&getPageSplitText(5)&"</a>"
	End If
	'returnHTMLcontent = returnHTMLcontent &"&nbsp;&nbsp;&nbsp;"& getPageSplitText(7)&":<SELECT name=page onchange=this.form.submit() style='FONT: 10px ,arial' ID='Select1'>"
	'For I=1 to PageCount
	'	If i = curPage Then
	'		returnHTMLcontent = returnHTMLcontent & "<OPTION selected  value=" & i & ">" & i & "</OPTION>"
	'	Else
	'		returnHTMLcontent = returnHTMLcontent & "<OPTION		      value="& i  & ">" & i & "</OPTION>"
	'	End If
	'Next
	'returnHTMLcontent = returnHTMLcontent & "</SELECT>"
	'returnHTMLcontent = returnHTMLcontent & "</FORM>"
	returnHTMLcontent = returnHTMLcontent & endHTML
	getPageNavigatorHtml = returnHTMLcontent
	if cInt(PageCount) >=2 then 
		getPageNavigatorHtml = returnHTMLcontent
	else
		getPageNavigatorHtml = ""
	end if 
End Function


'该函数作用：按指定参数格式化显示时间。
'numformat=1:将时间转化为yyyy-mm-dd hh:nn格式。
'numformat=2:将时间转化为yyyy-mm-dd格式。
'numformat=3:将时间转化为hh:nn格式。
'numformat=4:将时间转化为yyyy年mm月dd日 hh时nn分格式。
'numformat=5:将时间转化为yyyy年mm月dd日格式。
'numformat=6:将时间转化为hh时nn分格式。
'numformat=7:将时间转化为yyyy年mm月dd日 星期×格式。
'numformat=8:将时间转化为yymmdd格式。
'numformat=9:将时间转化为mmdd格式。
function formatdate(shijian,numformat)
	dim ystr,mstr,dstr,hstr,nstr '变量含义分别为年字符串，月字符串，日字符串，时字符串，分字符串

if isnull(shijian) then
numformat=0
else
ystr=DatePart("yyyy",shijian)

if DatePart("m",shijian)>9 then 
mstr=DatePart("m",shijian)
else
mstr="0"&DatePart("m",shijian) 
end if

if DatePart("d",shijian)>9 then 
dstr=DatePart("d",shijian)
else
dstr="0"&DatePart("d",shijian) 
end if

if DatePart("h",shijian)>9 then 
hstr=DatePart("h",shijian)
else
hstr="0"&DatePart("h",shijian) 
end if

if DatePart("n",shijian)>9 then 
nstr=DatePart("n",shijian)
else
nstr="0"&DatePart("n",shijian) 
end if
end if

select case numformat
case 0
formatdate=""
case 1
formatdate=ystr&"-"&mstr&"-"&dstr&" "&hstr&":"&nstr 
case 2
formatdate=ystr&"-"&mstr&"-"&dstr 
case 3
formatdate=hstr&":"&nstr
case 4
formatdate=ystr&"年"&mstr&"月"&dstr&"日 "&hstr&"时"&nstr&"分"
case 5
formatdate=ystr&"年"&mstr&"月"&dstr&"日" 
case 6
formatdate=hstr&"时"&nstr&"分"
case 7
formatdate=ystr&"年"&mstr&"月"&dstr&"日 "&WeekdayName(Weekday(shijian))
case 8
formatdate=right(ystr,2)&mstr&dstr
case 9
formatdate=mstr&dstr
end select
end function

Function htmlspecialchars(str)
	str = Replace(str, "&", "&amp;")
	str = Replace(str, "<", "&lt;")
	str = Replace(str, ">", "&gt;")
	str = Replace(str, """", "&quot;")
	htmlspecialchars = str
End Function


'获取带有偏移量的时间。 隔当日日期后的第diff天。 haveTime="day"则表示获取日期格式
Function getDate(diff,haveTime)
	Dim tempDate 
	tempDate = date + diff 
	if ucase(haveTime) = "DAY"  then 
		getDate =year(tempDate)&"-"&right(("0"&month(tempDate)),2)&"-"&right(("0"&day(tempDate)),2)
	else
		getDate =year(tempDate)&"-"&right(("0"&month(tempDate)),2)&"-"&right(("0"&day(tempDate)),2)&" "&right(("0"&hour(now)),2)    &":"& right(("0"&minute(now)),2)  
	end if 
End Function

'这是一个用于读出文件的函数
function ReadText(FileName)  
Dim adf,ads
 set adf=server.CreateObject("Adodb.Stream")
 with adf
  .Type=2
  .LineSeparator=10
  .Open
  .LoadFromFile (server.MapPath(FileName))
  .Charset="GB2312"
  .Position=2
  ReadText=.ReadText
  .Cancel()
  .Close()
 end with
 set ads=nothing 
end function


function ReadText_CharSet(FileName,CHAR_SET)  
Dim adf,ads
 set adf=server.CreateObject("Adodb.Stream")
 with adf
  .Type=2
  .LineSeparator=10
  .Open
  .LoadFromFile (server.MapPath(FileName))
  .Charset=CHAR_SET
  .Position=2
  ReadText_CharSet=.ReadText
  .Cancel()
  .Close()
 end with
 set ads=nothing 
end function



'这是一个用于写文件的函数
sub SaveText(FileName,Data)  
 set fs= createobject("scripting.filesystemobject") 
    set ts=fs.createtextfile(server.MapPath(FileName),true)
    ts.writeline(data)
    ts.close
    set ts=nothing
    set fs=nothing
end sub


 '这是一个根据SQL语句和FILENAME生成EXCEL文件
sub toexcel(filename,sql) 
  Set rs=Server.CreateObject("ADODB.RecordSet") 
  executeQuery conn,rs,sql ,1,1
  TOEXCELLR="<table width='100%'><tr >"
  set myfield=rs.fields
  dim fieldname(50)
  for i=0 to myfield.count-1
     toexcellr=toexcellr&"<td class=xl24>"&MYFIELD(I).NAME&"</td>"
     fieldname(i)=myfield(i).name
     if myfield(i).type=135 then datename=datename&myfield(i).name&","
  next
  toexcellr=toexcellr&"</tr>"
  do while not rs.eof
    toexcellr=toexcellr&"<tr>"
    for i=0 to myfield.count-1 
      if instr(datename,fieldname(i)&",")<>0 then
        if not isnull(rs(fieldname(i))) then
           TOEXCELLR=TOEXCELLR&"<td  class=xl25 ><p align='left'>"&formatdatetime(rs(fieldname(i)),2)&"</p></td>"
        else
           TOEXCELLR=TOEXCELLR&"<td  class=xl25 ><p align='left'>　</p></td>"
        end if
      else
         TOEXCELLR=TOEXCELLR&"<td class=xl24 >"&rs(fieldname(i))&"</td>"
      end if
    next
    toexcellr=toexcellr&"</tr>"
    rs.movenext
  loop
  toexcellr=toexcellr&"</table>"
  tou=readtext("tou.txt")
  di=readtext("di.txt")
  toexcellr=tou&toexcellr&di
  call savetext(filename,toexcellr)
  response.write "<a href='"& filename  &"' target='_blank'>请点击下载</a>"
end sub
Function BytesToBstr(body,Cset) '转换GB2312
	dim objstream
	set objstream = Server.CreateObject("adodb.stream")
	objstream.Type = 1
	objstream.Mode =3
	objstream.Open
	objstream.Write body
	objstream.Position = 0
	objstream.Type = 2
	objstream.Charset = Cset
	BytesToBstr = objstream.ReadText 
	objstream.Close
	set objstream = nothing
End Function

'HTML字符转SQL
function decode_HTML2SQL(decodeStr)
Dim tmpResult
	 tmpResult = decodeStr & ""
	 if decodeStr = "&lt;" then  tempResult="<"
	 if decodeStr = "&gt;" then  tempResult=">"
	 if decodeStr = "&quot;" then  tempResult=chr(34)
	 decode_HTML2SQL =  tmpResult
end function 

'SQL转HTML字符
function decode_SQL2HTML(decodeStr)
	Dim tmpResult
		tmpResult = decodeStr & ""
		tmpResult = replace(tmpResult,"<","&lt;",1,-1)
		tmpResult = replace(tmpResult,">","&gt;",1,-1)
		tmpResult = replace(tmpResult,chr(34),"&quot;",1,-1)
		decode_SQL2HTML =  tmpResult
end function

'HTML转Javascript字符
function decode_HTML2JAVASCRIPT(decodeStr)
		tmpResult = decodeStr & ""
		tmpResult = replace(tmpResult,"&lt;","<",1,-1)
		tmpResult = replace(tmpResult,"&gt;",">",1,-1)
		tmpResult = replace(tmpResult,"&quot;",chr(34),1,-1)
		decode_HTML2JAVASCRIPT =  tmpResult
end Function

'验证码测试
function TestCaptcha(byval valSession, byval valCaptcha)
	dim tmpSession
	valSession = Trim(valSession)
	valCaptcha = Trim(valCaptcha)
	if (valSession = vbNullString) or (valCaptcha = vbNullString) then
		TestCaptcha = false
	else
		tmpSession = valSession
		valSession = Trim(Session(valSession))
		Session(tmpSession) = vbNullString
		if valSession = vbNullString then
			TestCaptcha = false
		else
			valCaptcha = Replace(valCaptcha,"i","I")
			if StrComp(valSession,valCaptcha,1) = 0 then
				TestCaptcha = true
			else
				TestCaptcha = false
			end if
		end if		
	end if
end function

'获取组的select列表，返回id
function getUserTeamPicklist(selectTeam,searchKey)
	Dim returnStr
	Dim teamSearchKey 
	teamSearchKey = searchKey
	if teamSearchKey& "" <>"" then 
		teamSearchKey = " where team_name like '%" & teamSearchKey & "' " 
	end if 
	if session("roleScope")="G" then 
		returnStr = picklist("select team_id as  selectvalue, team_name as txt from mova_team "& teamSearchKey &" order by team_name ",selectTeam)
	else
		returnStr = picklist("select team_id as  selectvalue, team_name as txt from mova_team "& teamSearchKey &" order by team_name ",selectTeam)
	end if
	getUserTeamPicklist = returnStr
end function


sub  kindEdit(form,formVar)
	response.write "	<script>"& chr(13)
	response.write "		"& chr(13)
	response.write "		KindEditor.ready(function(K) {" & chr(13)
	response.write "			var editor1 = K.create('textarea[name=" & chr(34) & formVar & chr(34) & "]', {"& chr(13)
	response.write "				cssPath : '/movaOpps/core/kindEdit/plugins/code/prettify.css',"& chr(13)
	response.write "				uploadJson : '/movaOpps/core/kindEdit/upload_json.asp',"& chr(13)
	response.write "				fileManagerJson : '/movaOpps/core/kindEdit/file_manager_json.asp',"& chr(13)
	response.write "				allowFileManager : true,"& chr(13)
	response.write "				 afterBlur: function(){this.sync();},"& chr(13)
	response.write "				afterCreate : function() {"& chr(13)
	response.write "					var self = this;"& chr(13)
	response.write "					K.ctrl(document, 13, function() {"& chr(13)
	response.write "						self.sync();"& chr(13)
	response.write "						K('form[name="& form &"]')[0].submit();"& chr(13)
	response.write "					});"& chr(13)
	response.write "					K.ctrl(self.edit.doc, 13, function() {"& chr(13)
	response.write "						self.sync();"& chr(13)
	response.write "						K('form[name="& form &"]')[0].submit();"& chr(13)
	response.write "					});"& chr(13)
	response.write "				}"& chr(13)
	response.write "			});"& chr(13)
	response.write "			prettyPrint();"& chr(13)
	response.write "		});"& chr(13)
	response.write "	</script>"& chr(13)
end sub 

function replaceEnter(tmpString)
	Dim returnString 
	returnString =  Replace(tmpString,chr(13), "", 1,-1,1) 
	returnString =  Replace(returnString,chr(10), "", 1,-1,1) 
	replaceEnter = 	returnString
		
end function 

'获取服务器时间
function getServerTime(fm)
	Dim   vYear,vMon,vDay,vHour,vMin,vSec
	Dim returnDatetime
	returnDatetime = fm
	vYear = cint(Year(date()))
	vMon = cint(Month(date()))
	vDay = cint(Day(date()))
	vHour = cint(Hour(now()))
	vMin = cint(Minute(now()))
	vSec = cint(second(now()))
	returnDatetime = replace(returnDatetime,"YYYY",cstr(vYear),1,-1,0)
	
	if  vMon>=10 then 
		returnDatetime = replace(returnDatetime,"MMJS",cstr(vMon-1),1,-1,0)
		returnDatetime = replace(returnDatetime,"MM",cstr(vMon),1,-1,0)
	else
		returnDatetime = replace(returnDatetime,"MMJS","0" + cstr(vMon-1),1,-1,0)
		returnDatetime = replace(returnDatetime,"MM","0" + cstr(vMon),1,-1,0)
		returnDatetime = replace(returnDatetime,"M",cstr(vMon),1,-1,0)
	end if 
	
	if  vDay>=10 then 
		returnDatetime = replace(returnDatetime,"DD",cstr(vDay),1,-1,0)
	else
		returnDatetime = replace(returnDatetime,"DD","0" + cstr(vDay),1,-1,0)
		returnDatetime = replace(returnDatetime,"D",cstr(vDay),1,-1,0)
	end if
	
	if  vHour>=10 then 
		returnDatetime = replace(returnDatetime,"hh",cstr(vHour),1,-1,0)
	else
		returnDatetime = replace(returnDatetime,"hh","0" + cstr(vHour),1,-1,0)
		returnDatetime = replace(returnDatetime,"h",cstr(vHour),1,-1,0)
	end if
	
	if  vMin>=10 then 
		returnDatetime = replace(returnDatetime,"mm",cstr(vMin),1,-1,0)
	else
		returnDatetime = replace(returnDatetime,"mm","0" + cstr(vMin),1,-1,0)
		returnDatetime = replace(returnDatetime,"m",cstr(vMin),1,-1,0)
	end if
	
	if  vSec>=10 then 
		returnDatetime = replace(returnDatetime,"ss",cstr(vSec),1,-1,0)
	else
		returnDatetime = replace(returnDatetime,"ss","0" + cstr(vSec),1,-1,0)
		returnDatetime = replace(returnDatetime,"s",cstr(vSec),1,-1,0)
	end if
	getServerTime  = returnDatetime
end function 

function movaStyle 
	movaStyle="/movaOpps/css/" & application("STYLE") 
end Function 
%> 