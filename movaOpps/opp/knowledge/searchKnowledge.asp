<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<% chkAccountStr "knowledge_list" 
Dim FRM_category,FRM_knowledge_id,FRM_title,FRM_is_top,FRM_modifydate,knowledgeURL
Dim sqlString,order,securitySQL,condition,i
%>
<script>
	function chk()
	{
		var str;
		str="";
		var condition = ""
		condition = condition + document.mainform.title.value;
		condition = condition + document.mainform.category.value;
		if (condition==""){
			str=str +  "您必须输入一个条件" + "\n";
		}
		return showInputError(str);
	}
</script>

<div class="cn_list_title">知识库查询</div> 
<table width=100%>
	<tr>
		<td width="0"><!-- --></td>
		<td>
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
  <FORM id=form method=post name=mainform action="searchKnowledge.asp">
  	<input type="hidden" name="isStart"  value="0">
  <TBODY>
  <TR>
    <TD class="cn_td09"   align=right >分类:</TD>
    <TD align=left><select name="category" id="select">
       <option value=""></option>
				<%curPicklist "#" & session("customerNo") & "_M0000",FRM_category %>
				</select></TD> 
       <TD class=cn_td09 align=right>内容包含:</TD>
    <TD align=left><INPUT class=cn_input03 type=text name=title></TD></TR>
  <TR>
  
  <TR>
    <TD colSpan=4 align=middle><BUTTON class=cn_button01 type=submit onClick="return chk()">查 询</BUTTON> </TD>
  </TR></TBODY></FORM></TABLE>
</DIV>
<DIV class=cn_col></DIV>
<% if req("isStart") <> "1" then  %>
<!--查询结果-->
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
  <THEAD>
  	<TR>
    	<TH>分类</TH>
    	<TH>标题</TH>
    	<TH>最后更新时间</TH>
   </TR>
   </THEAD>
  <TBODY>
<% 			
 			sqlString="select * from mu_knowledge where 1=1 and archive='F' and owner ='" &  session("customerNo") & "' " 
 			order =  " order by is_top desc,modifydate desc " 
 			
 			if req("isStart") = "0" then 
 				'如果是点击查询按钮则执行以下
 				session("F_category") = req("category")
 				session("F_title") =   req("title")
 				
 				session("defCondition") = ""
 			end if 
 			
 			if req("isStart")="2" and req("def")<>""  then
				session("F_category") = ""
 				session("F_title") = ""
 				session("defCondition") = ""
 			end if
 			'执行特定的查询
 			if req("def") = "Last" then
 				'最近的客户
 				session("defCondition") = " and (dateDiff(Day,modifydate,getdate()) <= 7 or is_top='T') " 
 				order = " order by is_top desc,modifydate desc"
 			end if


			condition = ""
			if session("F_category")  <>"" then condition= condition & " and category ='" & session("F_category") & "'"
			if session("F_title")  <>"" then condition= condition & " and (upper(title) like upper('%" & session("F_title")& "%') or content like " & "'%" & session("F_title")& "%')"
			
			if session("defCondition") <> "" then 
					condition = condition + session("defCondition")
			end if
			
			
			securitySQL = ""
			
			if condition="" then condition = " and 1=2 "
			sqlString=sqlString & condition & securitySQL &  order 
			executeQuery conn,rs,sqlString, 1, 1

			' 初始化页
			InitRS rs, application("DEF_SPLIT_PAGE")	' 默认每页 行数
			For i = 1 to rs.pagesize 
				if rs.eof then exit For
				FRM_knowledge_id = rs("knowledge_id")
				FRM_title = rs("title")
				FRM_is_top = rs("is_top")
				FRM_modifydate = rs("modifydate")
				FRM_category = rs("category")
				
				if session("F_title") <> "" then 
					FRM_title = replace(FRM_title,session("F_title") ,"<span class='searchKey'>"& session("F_title") &"</span>")
				end if 
				
%>

  <TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
     <TD align=left>
     	<%=FRM_category%>
   </td>
    <TD align=left>
    	<%if chkAccount("knowledge_modi") then 
    			knowledgeURL="knowledge.asp"
    		else
    			knowledgeURL="viewKnowledge.asp"
    		end if
    	%>
    	<%if FRM_is_top="T" then %>
    		<font color=red><b>*</b></font>&nbsp;&nbsp;<a href="<%=knowledgeURL%>?knowledge_id=<%=FRM_knowledge_id%>"><%=FRM_title%></a>
    	<%else%>
    		&nbsp;&nbsp;&nbsp;<a href="<%=knowledgeURL%>?knowledge_id=<%=FRM_knowledge_id%>"><%=FRM_title%></a>
    	<%end if %>   
    	</TD>
    <td>
    	<%=FRM_modifydate%>
    </td>
  </TR>

<%			
		rs.Movenext
		Next
%>

</TBODY>
 
  
  <TR>
    <TD colSpan=9><% call PageNavigator %></TD></TR>  </TABLE>
 </div>
<%end if %>		
		
			
			
		</td>
</table>

<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->