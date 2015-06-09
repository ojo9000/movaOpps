<%
function menu(id,obj,editUrl,did)
	set rs=server.CreateObject("adodb.recordset")
	objidFieldName= obj & "id"
	sql="select * from "& obj &" where  fid="&id&" and mova_directoryid="& did & "  order by sortNo"
	rs.open sql,conn,1,1
	response.write("<table border='0'  width=100% cellspacing='0' cellpadding='0'>"&chr(13))
	i=1
	while not rs.eof
		menutype = "icon" & "Dir"
		ChildCount=conn.execute("select count(*) from "& obj &" where fid="& rs(objidFieldName)& " and mova_directoryid="& did  )(0)
		if ChildCount=0 then
			if i=rs.recordcount then
				menutype=menutype & "1"
			else
				menutype=menutype
			end if
			directoryName="<a href='"& editUrl &"?keyid=" & rs(objidFieldName) & "'>"&rs("typeName")&"</a>"
			onmouseup=""
		else
			if i=rs.recordcount then
				menutype="menu3"
				listtype="list1"
				onmouseup=" onMouseUp=change1('a"&rs(objidFieldName)&"','b"&rs(objidFieldName)&"');"
			else
				menutype="menu3"
				listtype="list"
				onmouseup=" onMouseUp=change2('a"&rs(objidFieldName)&"','b"&rs(objidFieldName)&"');"
			end if
			directoryName="<a href='"&editUrl&"?keyid=" & rs(objidFieldName) & "'>"&rs("typeName")&"</a>"
		end if
		Response.Write("<tr><td id='b"&rs(objidFieldName)&"' class='"&menutype&"'"&onmouseup&">")
		ResPonse.write("<table border='0'  width=100% cellspacing='0' cellpadding='0'><tr>") 
		ResPonse.write("<td>"&directoryName&"</td>")
		response.write("<td align=right><a target='menuFrame' href='/movaOpps/core/pub/sortRecord_.asp?keyid="& rs(objidFieldName)     & "&returnUrl=/movaOpps/core/module/product/typelist.asp&table="&obj  &   "&sort=up&returnParam=directoryType^"& "x" &"&condition=fid^`"& rs("fid") &"' title='向上排'><b>↑</b></a>")
		Response.Write("                <a target='menuFrame' href='/movaOpps/core/pub/sortRecord_.asp?keyid="& rs(objidFieldName) & "&returnUrl=/movaOpps/core/module/product/typelist.asp&table="&obj &  "&sort=down&returnParam=directoryType^"&  "x" &"&condition=fid^`"& rs("fid") &"' title='向下排'><b>↓</b></a></td>")
		ResPonse.write("</tr></table>")
		Response.write("</td></tr>"&chr(13))
		if ChildCount>0 then
			Response.Write("<tr id='a"&rs(objidFieldName)&"' style='display:none'><td class='"&listtype&"'>"&chr(13))
			call menu(rs(objidFieldName),obj,editUrl,did)
			Response.Write("</td></tr>"&chr(13))
		end if
		rs.movenext
		i=i+1
	wend
	response.write("</table>"&chr(13))
	rs.close
	set rs=nothing
end function 


function menuDIVCSS(id,obj,did,treeName,startHTML,endHTML,contentHTML,showItemHTML,splitHTML,level,maxLevel)
'获取目录结构，目录使用
'id						:起始目录keyid
'obj					:数据库表名。  这里必须遵循 数据库表主键为 表名+id 
'did					:目录结构所在的系统节点 针对于 mova_director的主键
'startHTML		:DIVCSS开始部分
'endHTML			:DIVCSS开始部分
'contentHTML	:DIVCSS开始部分
'showItemHTML	:DIVCSS开始部分
'level				:目录树节点所在的层级树,调用时必须使用 0
'treeName			:树的字段名
'maxLevel			:限制输出层级树
	
	paramLevel = level+1
	if paramLevel<=maxLevel then 
		set treeRs=server.CreateObject("adodb.recordset")
		objidFieldName= obj & "id"
		'response.write "{" & did & "}"
			sql="select * from "& obj &" where  fid="&id& " and status='Active' order by sortNo"
		'response.write sql & "<br>"
		treeRs.open sql,conn,1,1
		session("treeBlock") = session("treeBlock") & chr(13) & startHTML & chr(13)
		session("treeBlock") = Replace(session("treeBlock"),"<LEVEL>", paramLevel)
		i=1
		while not treeRs.eof 
			ChildCount=conn.execute("select count(*) from "& obj &" where fid="& treeRs(objidFieldName)& " and status='Active'")(0)
			if ChildCount >0 then 
				session("treeBlock") = session("treeBlock") & splitHTML & chr(13)
				session("treeBlock") = Replace(session("treeBlock"),"<URL>", nextURL&"?kid=" & treeRs(objidFieldName) &   chr(38) & "t=" & getTime())
			else 
				'response.write "{" & kid  & "|" &  cstr(treeRs(objidFieldName))  & "}<br>"
				if req("kid") = cstr(treeRs(objidFieldName)) then 
  				session("treeBlock") = session("treeBlock") & showItemHTML & chr(13)
  				session("treeBlock") = Replace(session("treeBlock"),"<URL>", nextURL&"?kid=" & treeRs(objidFieldName)& chr(38) & "t=" & getTime())
  			else
  				session("treeBlock") = session("treeBlock") & contentHTML & chr(13)
  				session("treeBlock") = Replace(session("treeBlock"),"<URL>", nextURL&"?kid=" & treeRs(objidFieldName)& chr(38) & "t=" & getTime())
			 
  			end if
			end if  
			
  		session("treeBlock") = Replace(session("treeBlock"),"<TREENAME>",treeRs(treeName))
  	 
			if ChildCount>0 then
				call menuDIVCSS(treeRs(objidFieldName),obj,did,treeName,startHTML,endHTML,contentHTML,showItemHTML,splitHTML,paramLevel,maxLevel)
			end if
			treeRs.movenext
			i=i+1
		wend
		session("treeBlock") = session("treeBlock") & endHTML
		treeRs.close
		set treeRs=nothing
	end if
end function 


function treeDIVCSS(id,obj,did,treeName,startHTML,endHTML,contentHTML,showItemHTML,splitHTML,level)
'获取目录结构，通用
'id						:起始目录keyid
'obj					:数据库表名。  这里必须遵循 数据库表主键为 表名+id 
'did					:目录结构所在的系统节点 针对于 mova_director的主键
'startHTML		:DIVCSS开始部分
'endHTML			:DIVCSS开始部分
'contentHTML	:DIVCSS开始部分
'showItemHTML	:DIVCSS开始部分
'level				:目录树节点所在的层级树,调用时必须使用 0
'treeName			:树的字段名
	set treeRs=server.CreateObject("adodb.recordset")
	paramLevel = level+1
	objidFieldName= obj & "id"
	'response.write "{" & did & "}"
	if cStr(did)="" then 
		sql="select * from "& obj &" where  fid="&id& " and status='Active' order by sortNo"
	else 
		sql="select * from "& obj &" where  fid="&id&" and mova_directoryid="& did & " and status='Active'  order by sortNo"
	end if 
	'response.write sql & "<br>"
	treeRs.open sql,conn,1,1
	session("treeBlock") = session("treeBlock") & chr(13) & startHTML & chr(13)
	session("treeBlock") = Replace(session("treeBlock"),"<LEVEL>", paramLevel)
	i=1
	while not treeRs.eof 
		ChildCount=conn.execute("select count(*) from "& obj &" where fid="& treeRs(objidFieldName)& " and Status='Active' and mova_directoryid="& did  )(0)  	
  	if ChildCount >0 then 
			session("treeBlock") = session("treeBlock") & splitHTML & chr(13)
		else
			if req(objidFieldName)= cstr(treeRs(objidFieldName)) then 
  			session("treeBlock") = session("treeBlock") & showItemHTML & chr(13)
  		else
  			session("treeBlock") = session("treeBlock") & contentHTML & chr(13)
  		end if
		end if 	

		session("treeBlock") = Replace(session("treeBlock"),"<URL>", nextURL&"?kid=" & treeRs("mova_directoryId")& "&fid=" & req("fid") & "&" & objidFieldName & "=" & treeRs(objidFieldName))
		
  	session("treeBlock") = Replace(session("treeBlock"),"<TREENAME>",treeRs(treeName))
  	session("treeBlock") = Replace(session("treeBlock"),"<ICON>",treeRs("icon"))
  	session("treeBlock") = Replace(session("treeBlock"),"<LEVEL>", paramLevel)
  	
   
		if ChildCount>0 then
			call treeDIVCSS(treeRs(objidFieldName),obj,did,treeName,startHTML,endHTML,contentHTML,showItemHTML,splitHTML,paramLevel)
		end if
		treeRs.movenext
		i=i+1
	wend
session("treeBlock") = session("treeBlock") & endHTML
	treeRs.close
	set treeRs=nothing
end function 




%>