<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<% chkAccountStr "mplSearch" %>
<div class="cn_list_title">自定义查询</div>
<div class="cn_list_title_right">
<%if chkAccount("mplNew") then %><a href="/movaOpps/opp/mplSearch/newMpl.asp">添加自定义查询</a><%end if %></div>
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
<FORM id=form method=post name="mainform" action="./">
		<input type="hidden" name="isStart"  value="0">
  <TBODY>
   
    <tr>
    		<td class=cn_td09 align=right><span class="cn_font02">*</span>业务模型:</td>
    		<td>
    			<select name="object_code">
    					<option></option>
    					<%=picklist(getObjectListSql(session("customerNo")),"")%>
    			</select>
    		</td>	<td class=cn_td09 align=right><span class="cn_font02">*</span>查询名称/简称:</td>
    		<td>
    			 <input class=cn_input03 type="text" size="40" name="search_name" value="">
    		</td>
    </tr>
	 
	  <tr> 
	  	<td colspan=4 align=center>
	  		<BUTTON class=cn_button01 type=submit >查询</button>
	  	</td>
		</tr>
  
  </TBODY></FORM></TABLE>
</div>

<DIV class=cn_col>

<TABLE border=0 cellSpacing=1 cellPadding=0>
 
	<THEAD>
  	<TR>
  		<tH>业务模型</tH>
  		<tH>查询名称</tH>
  		<tH>查询简称</tH>
  		<tH>允许下载</tH>
  		<tH>自动开始查询</tH>
  		<tH>最后修改时间</tH>
			<TH>操作</TH>
   </TR>
   </THEAD>
  <TBODY>
<% 			
 			Dim sqlString
 			sqlString ="select m.*,o.object_name,o.object_id from mu_mpl_search m,mu_object o "
 			sqlString = sqlString & " where m.object_code=o.object_code and m.archive='F' and o.archive='F' and o.is_publish='T'"
 			sqlString = sqlString & " and m.owner='" &  session("customerNo") & "'"
 			sqlString = sqlString & " and m.team='0' " 
			
			Dim condition,order
			condition = ""
 			order =  " order by m.createdate desc  " 
 			
 			if req("isStart") = "1" then 
 				session("F_object_code") = ""
 				session("F_search_name") =   ""
 				
 				session("defCondition") = ""
 			end if 
 			
 			if req("isStart") = "0" then 
 				'如果是点击查询按钮则执行以下
 				session("F_object_code") = req("object_code")
 				session("F_search_name") =   req("search_name")
 				
 				session("defCondition") = ""
 			end if 
 			
 			'执行特定的查询
 			if req("def") = "Last" then
 				'
 				session("defCondition") = "" 
 				order = " order by m.modifydate desc"
 			end if


			
			if session("F_object_code")  <>"" then condition= condition & " and m.object_code ='" & session("F_object_code") & "'"
			if session("F_search_name")  <>"" then condition= condition & " and (m.search_name like '%"& session("F_search_name") &"%' or m.abbr like '%"& session("F_search_name") &"%')"
			
			if session("defCondition") <> "" then 
					condition = condition + session("defCondition")
			end if
			
			dim securitySQL
			securitySQL = ""
			
		'	if condition="" then condition = " and 1=2 "
			sqlString=sqlString & condition & securitySQL &  order 
			'response.write sqlString   
			executeQuery conn,rs,sqlString, 1, 1

			' 初始化页
			InitRS rs, application("DEF_SPLIT_PAGE")	' 默认每页 行数
			Dim i,FRM_mpl_search_id,FRM_search_name,FRM_abbr,FRM_object_name,FRM_modifydate,FRM_createdate
			Dim FRM_object_id,FRM_auto_search,FRM_allow_download
			For i = 1 to rs.pagesize 
				if rs.eof then exit For
				FRM_mpl_search_id = rs("mu_mpl_search_id")
				FRM_search_name = rs("search_name")
				FRM_abbr = rs("abbr")
				FRM_object_name = rs("object_name")
				FRM_modifydate = rs("modifydate")
				FRM_createdate = rs("createdate")
				FRM_object_id= rs("object_id")
				FRM_auto_search= rs("auto_search")
				FRM_allow_download = rs("allow_download")
%>

  <TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
    <TD><%=FRM_object_name%></td>
    <td><%=FRM_search_name%></td>
    <td><%=FRM_abbr%></td>
    <td><%= getPicklistItem("isNo",FRM_allow_download)%></td>
		<td><%= getPicklistItem("isNo",FRM_auto_search)%></td>
    <td><%=FRM_modifydate%></td>
    <td>
    	<%if chkAccount("mplEdit") then %>
    	<a href="modifyMpl.asp?id=<%=FRM_mpl_search_id%>">编辑</a> &nbsp;|&nbsp;
    	<%end if %>
    	<%if chkAccount("mplRun") then %> 
    	<a href="../mpl.asp?object_id=<%=FRM_object_id%>&id=<%=FRM_mpl_search_id%>">运行</a>
    	<%end if %>
    	
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
		
		 
</table>

</div>


<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
 