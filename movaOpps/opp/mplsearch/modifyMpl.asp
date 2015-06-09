<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<%
'modi code:
Dim mu_mpl_search_id
'Dim Form_Frm
Dim FRM_del,FRM_object,FRM_object_name,FRM_search_name,FRM_abbr

mu_mpl_search_id = req("id")
Dim sqlString
sqlString = "select * from mu_mpl_search where archive='F' and owner='"& session("customerNo") &"' and (team=0 or team=" & session("team") & ")  and mu_mpl_search_id="&mu_mpl_search_id

executeQuery conn,movaRS,sqlString,1,1
if movaRS.bof or movaRS.eof then
movaRS.close
msgbox "记录不存在，或者您打开了一个错误的页面",1
end if 

'Dim Form_Frm
Dim FRM_object_code,FRM_allow_download,o_id,o_is_single,o_table_name,FRM_auto_search
FRM_object_code = movaRS("object_code")
FRM_search_name = movaRS("search_name")
FRM_abbr = movaRS("abbr")
FRM_allow_download = movaRS("allow_download")
FRM_auto_search = movaRS("auto_search")
FRM_search_no = movaRS("search_no")
o_id= getObjectPropertyByCode(FRM_object_code,"object_id")
o_is_single = getObjectPropertyByCode(FRM_object_code,"is_single")
o_table_name = getObjectPropertyByCode(FRM_object_code,"table_name")
'response.write "{"&  o_is_single & "," & o_id  & "<BR>"
%>
<script>
	var tmpFrom;
	$(function() {
		<% dialogJquery("field_select_dialog")%>

	 
	});

	
	function fieldSelect(form){
		tmpFrom= form;
		$('#field_select_dialog').dialog('open');
	}
	function setField(){
		$('#field_select_dialog').dialog( "close" );
		tmpFrom.field_code.value = document.dialogForm.selField.options[document.dialogForm.selField.selectedIndex].value;
		tmpFrom.field_name.value = document.dialogForm.selField.options[document.dialogForm.selField.selectedIndex].text;	
	}
	
	function chkDel(form){
		if (confirm("确定需要删除吗？")){
			form.archive.value="T";
			return true;
		} 
		return false;
	}
	</script>
 <% dialogHtml "field_select_dialog" %>
 

<div class="cn_list_title">修改查询</div> 
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
<FORM id=form method=post name="mainform" action=newMpl_.asp>
		<input type="hidden" name="archive" value="F">
		<input type="hidden" name="object" value="mu_mpl_search">
		<input type="hidden" name="mu_mpl_search_id" value="<%=mu_mpl_search_id%>"> 
  <TBODY>
   
    <tr>
    		<td class=cn_td09 align=right><span class="cn_font02">*</span>业务模型:</td>
    		<td>
    			<select name="object_code" readOnly >
    					<%=picklist(getObjectListSql(session("customerNo")),FRM_object_code)%>
    			</select>&nbsp;<a href="/movaOpps/opp/object/dataDict.asp?object_id=<%=getObjectPropertyByCode(FRM_object_code,"object_id")%>" target="_blank" title="新窗口查看">数据字典</a>
    		</td>
    		<td class=cn_td09 align=right><span class="cn_font02">*</span>是否允许下载:</td>
    		<td>
    			<select name="allow_download" readOnly >
    					<%=picklist("#isNo",FRM_allow_download)%>
    			</select>
    		</td>
    		
    </tr>
	  <tr>
    		<td class=cn_td09 align=right><span class="cn_font02">*</span>打印标题:</td>
    		<td>
    			 <input class=cn_input03 type="text" size="40" name="search_name" value="<%=FRM_search_name%>">
    		</td>
    		<td class=cn_td09 align=right><span class="cn_font02">*</span>自动开始查询:</td>
    		<td>
    			<select name="auto_search" readOnly >
    					<%=picklist("#isNo",FRM_auto_search)%>
    			</select>
    			如果查询比较耗时，则需要禁止自动开始查询 
    		</td>
    </tr>
      <tr>
    	 
    		<td class=cn_td09 align=right><span class="cn_font02">*</span>简称:</td>
    		<td  >
    			<input class=cn_input03 type="text" size="20" name="abbr" value="<%=FRM_abbr%>">  
    		</td>
    		<td class=cn_td09 align=right><span class="cn_font02">*</span>编码:</td>
    		<td  >
    			<input class=cn_input03 type="text" size="20" name="searchNo" value="<%=FRM_search_no%>">  
    		</td>
    </tr>
	  <tr> 
	  	 
	  	<td colspan=4>
	  			<%if chkAccount("mplEdit") then %><BUTTON class=cn_button01 type=submit  >保存</button><%end if %>
	  			<%if chkAccount("mplDel") then %><BUTTON class=cn_button01 type=submit  onClick="return chkDel(this.form)">删除</button><%end if %>
	  			<%if chkAccount("mplRun") then %><a href="../mpl.asp?object_id=<%=o_id%>&id=<%=mu_mpl_search_id%>&isStart=1">运行</a><%end if %>
	  	
	  	</td>
		</tr>
  
  </TBODY></FORM></TABLE>
</div>
<div class="cn_list_title">条件输入</div>
<DIV class=cn_col>
 
<TABLE border=0 cellSpacing=1 cellPadding=0>
 
	<THEAD>
  	<TR>
  		<tH>字段代码</tH>
  		<tH>字段名称</tH>
  		<TH>条件类型</TH>
			<TH>排序</TH>
			<TH>操作</TH>
   </TR>
   </THEAD>
  <TBODY>
<%
Dim FRM_archive,FRM_field_code,FRM_sort_no,FRM_mu_mpl_pre_condition_id,FRM_mu_mpl_search_id,FRM_field_name
Dim FRM_search_type

sqlString = "Select * From mu_mpl_pre_condition Where archive='F' and mu_mpl_search_id ="&mu_mpl_search_id & " order by sort_no"
executeQuery conn,movaRS,sqlString,1,3

do 
	if movaRS.eof or movaRS.bof then exit do
	FRM_archive = movaRS("archive")
	FRM_field_code = movaRS("field_code")
	FRM_sort_no = movaRS("sort_no")
	FRM_mu_mpl_pre_condition_id = movaRS("mu_mpl_pre_condition_id")
	FRM_mu_mpl_search_id = movaRS("mu_mpl_search_id")
	FRM_field_name = movaRS("field_name")
	FRM_search_type = movaRS("search_type")
	
%>
	<form method=post name="preCondition<%=FRM_mu_mpl_pre_condition_id%>" action=preCondition_.asp>
  <TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
			<input type="hidden" name="archive" value="F">
			<input type="hidden" name="object" value="mu_mpl_pre_condition">
			<input type="hidden" name="mu_mpl_pre_condition_id" value="<%=FRM_mu_mpl_pre_condition_id%>">
			<input type="hidden" name="mu_mpl_search_id" value="<%=mu_mpl_search_id%>">
			
			<input type="hidden" name="object_id" value="<%=o_id%>">
			<input type="hidden" name="is_single" value="<%=o_is_single%>">

    		<td><input class=cn_input03 type="text" size="50" name="field_code" value="<%=FRM_field_code%>" ondblclick="fieldSelect(this.form)"></td>
    		<td><input class=cn_input03 type="text" size="15" name="field_name" value="<%=FRM_field_name%>" ondblclick="fieldSelect(this.form)"></td>
    		<td><select name="search_type">
  	  					<%=cachePicklist("#condition_type",FRM_search_type)%>
  	  				</select></td>
    		<td><input class=cn_input03 type="text" name=sort_no size="3" value="<%=FRM_sort_no%>"></td>
    		<td>
    			<%if chkAccount("mplEdit") then %>
    				<BUTTON class=cn_button01 type=submit >保存</button>
    				<BUTTON class=cn_button06 type=submit onClick="return chkDel(this.form)" >删除</button></td>
    			<%end if %>
  </TR>
</form>
<%	
	movaRS.moveNext
loop
%>

<%if chkAccount("mplEdit") then %>
 <form method=post name="new_preCondition" action=preCondition_.asp>
  <TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
			<input type="hidden" name="archive" value="F">
			<input type="hidden" name="object" value="mu_mpl_pre_condition">
			<input type="hidden" name="mu_mpl_pre_condition_id" value="0">
			<input type="hidden" name="mu_mpl_search_id" value="<%=mu_mpl_search_id%>"> 
    		
    	<input type="hidden" name="object_id" value="<%=o_id%>">
			<input type="hidden" name="is_single" value="<%=o_is_single%>">
				
    		<td><input class=cn_input03 type="text" size="50" name="field_code" value="" ondblclick="fieldSelect(this.form)"></td>
    		<td><input class=cn_input03 type="text" size="15" name="field_name" value="" ondblclick="fieldSelect(this.form)"></td>
    		<td><select name="search_type">
  	  					<%=cachePicklist("#condition_type","")%>
  	  				</select></td>
    		<td><input class=cn_input03 name=sort_no type="text" size="3" value="999"></td>
    		<td><BUTTON class=cn_button01 type=submit >新增</button> </td>
    		
  </TR>
</form>
<%end if %>
</table>
</div>

<div class="cn_list_title">字段列表</div>
<DIV class=cn_col>
<TABLE border=0 cellSpacing=1 cellPadding=0>
 
	<THEAD>
  	<TR>
  		<tH>字段代码</tH>
  		<tH>字段名称</tH>
  		<TH>是否允许统计</TH>
			<TH>排序</TH>
			<TH>操作</TH>
   </TR>
   </THEAD>
  <TBODY>
 
<%
Dim FRM_mu_mpl_select_id,FRM_allow_count
sqlString = "Select * From mu_mpl_select Where archive='F' and mu_mpl_search_id ="&mu_mpl_search_id    & " order by sort_no"
executeQuery conn,movaRS,sqlString,1,3
do 
	if movaRS.eof or movaRS.bof then exit do
FRM_archive = movaRS("archive")
FRM_field_code = movaRS("field_code")
FRM_mu_mpl_select_id = movaRS("mu_mpl_select_id")
FRM_mu_mpl_search_id = movaRS("mu_mpl_search_id")
FRM_field_name = movaRS("field_name")
FRM_allow_count = movaRS("allow_count")
FRM_sort_no = movaRS("sort_no")

	
%>
	<form method=post name="mplSelect<%=FRM_mu_mpl_select_id%>" action=mplSelect_.asp>
  <TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
			<input type="hidden" name="archive" value="F">
			<input type="hidden" name="object" value="mu_mpl_pre_condition">
			<input type="hidden" name="mu_mpl_select_id" value="<%=FRM_mu_mpl_select_id%>">
			<input type="hidden" name="mu_mpl_search_id" value="<%=mu_mpl_search_id%>"> 
    		<td><textarea   class=cn_input03  cols="50" rows="1" name="field_code"  ondblclick="fieldSelect(this.form)"><%=FRM_field_code%></textarea></td>
    		<td><input class=cn_input03 type="text" size="15" name="field_name" value="<%=FRM_field_name%>" ondblclick="fieldSelect(this.form)"></td>
    		<td><select name="allow_count">
  	  					<%=cachePicklist("#isNo",FRM_allow_count)%>
  	  				</select></td>
    		<td><input class=cn_input03 type="text" name=sort_no size="3" value="<%=FRM_sort_no%>"></td>
    		<td>
    			<%if chkAccount("mplEdit") then %>
    				<BUTTON class=cn_button01 type=submit >保存</button>
    				<BUTTON class=cn_button06 type=submit onClick="return chkDel(this.form)" >删除</button></td>
    			<%end if %>
  </TR>
</form>
<%	
	movaRS.moveNext
loop
%>
<%if chkAccount("mplEdit") then %>
 <form method=post name="new_mplSelect" action=mplSelect_.asp>
  <TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
			<input type="hidden" name="archive" value="F">
			<input type="hidden" name="object" value="mu_mpl_select">
			<input type="hidden" name="mu_mpl_select_id" value="0">
			<input type="hidden" name="mu_mpl_search_id" value="<%=mu_mpl_search_id%>"> 
    		<td>
    			<textarea   class=cn_input03  cols="50" rows="1" name="field_code"  ondblclick="fieldSelect(this.form)"></textarea></td>
    		<td><input class=cn_input03 type="text" size="15" name="field_name" value="" ondblclick="fieldSelect(this.form)"></td>
    		<td><select name="allow_count">
  	  					<%=cachePicklist("#isNo","F")%>
  	  				</select></td>
    		<td><input class=cn_input03 name="sort_no" type="text" size="3" value="999"></td>
    		<td><BUTTON class=cn_button01 type=submit >新增</button> </td>
    		
  </TR>
</form>
<%end if %>
</table>
</div>

<div class="cn_list_title">预置条件</div>
<DIV class=cn_col>
<TABLE border=0 cellSpacing=1 cellPadding=0>
 
	<THEAD>
  	<TR>
  		<tH>左括号</tH>
  		<tH>字段代码</tH>
  		<tH>字段名称</tH>
  		<tH>条件</tH>
  		<TH>值</TH>
			<TH>右括号</TH>
			<TH>and/or</TH>
			<TH>排序</TH>
			<TH>操作</TH>
			
   </TR>
   </THEAD>
  <TBODY>
 
<%
Dim FRM_mu_mpl_condition_id,FRM_condition
Dim FRM_right_bracket,FRM_and_or,FRM_left_bracket,FRM_matching_value
sqlString = "Select * From mu_mpl_condition Where archive='F' and mu_mpl_search_id ="&mu_mpl_search_id  & " order by sort_no"  
executeQuery conn,movaRS,sqlString,1,3
do 
	if movaRS.eof or movaRS.bof then exit do
 FRM_archive = movaRS("archive")
FRM_field_code = movaRS("field_code")
FRM_mu_mpl_condition_id = movaRS("mu_mpl_condition_id")
FRM_mu_mpl_search_id = movaRS("mu_mpl_search_id")
FRM_field_name = movaRS("field_name")
FRM_right_bracket = movaRS("right_bracket")
FRM_and_or = movaRS("and_or")
FRM_left_bracket = movaRS("left_bracket")
FRM_matching_value = movaRS("matching_value")
FRM_sort_no = movaRS("sort_no")
FRM_condition = movaRS("condition")

	
%>
	<form method=post name="mplCondition<%=FRM_mu_mpl_condition_id%>" action=mplCondition_.asp>
  <TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
			<input type="hidden" name="archive" value="F">
			<input type="hidden" name="object" value="mu_mpl_pre_condition">
			<input type="hidden" name="mu_mpl_condition_id" value="<%=FRM_mu_mpl_condition_id%>">
			<input type="hidden" name="mu_mpl_search_id" value="<%=mu_mpl_search_id%>"> 
    	
    	<input type="hidden" name="object_id" value="<%=o_id%>">
			<input type="hidden" name="is_single" value="<%=o_is_single%>">
			
    		<td><select name="left_bracket">
    						<option value=""></option>
  	  					<%=cachePicklist("#mpl_left_bracket",FRM_left_bracket)%>
  	  				</select></td>
  		<td><input class=cn_input03 type="text" size="50" name="field_code" value="<%=FRM_field_code%>" ondblclick="fieldSelect(this.form)"></td>
			<td><input class=cn_input03 type="text" size="15" name="field_name" value="<%=FRM_field_name%>" ondblclick="fieldSelect(this.form)"></td>
    		
  		<td><select name="condition">
  	  					<%=cachePicklist("#mpl_condition",FRM_condition)%>
  	  				</select>
  			</td>
  		<td><input class=cn_input03 type="text" size="15" name="matching_value" value="<%=FRM_matching_value%>" ></td>
			<td><select name="right_bracket">
				<option value=""></option>
  	  					<%=cachePicklist("#mpl_right_bracket",FRM_right_bracket)%>
  	  				</select></td>
			<td><select name="and_or">
				<option value=""></option>
  	  					<%=cachePicklist("#mpl_and_or",FRM_and_or)%>
  	  				</select></td>
			<td><input class=cn_input03 name="sort_no" type="text" size="3" value="<%=FRM_sort_no%>"></td>
    		<td>
    			<%if chkAccount("mplEdit") then %>
    				<BUTTON class=cn_button01 type=submit >保存</button>
    				<BUTTON class=cn_button06 type=submit onClick="return chkDel(this.form)" >删除</button></td>
    			<%end if %>
    		
  </TR>
</form>
<%	
	movaRS.moveNext
loop
%>
  	
  	
  	<%if chkAccount("mplEdit") then %>
   <form method=post name="new_mplCondition" action=mplCondition_.asp>
  <TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
			<input type="hidden" name="archive" value="F">
			<input type="hidden" name="object" value="mu_mpl_condition">
			<input type="hidden" name="mu_mpl_condition_id" value="0">
			<input type="hidden" name="mu_mpl_search_id" value="<%=mu_mpl_search_id%>"> 	
			
			<input type="hidden" name="object_id" value="<%=o_id%>">
			<input type="hidden" name="is_single" value="<%=o_is_single%>">
	
			<td><select name="left_bracket">
  	  					<%=cachePicklist("#mpl_left_bracket","")%>
  	  				</select></td>
  		<td><input class=cn_input03 type="text" size="50" name="field_code" value="" ondblclick="fieldSelect(this.form)"></td>
			<td><input class=cn_input03 type="text" size="15" name="field_name" value="" ondblclick="fieldSelect(this.form)"></td>
    		
  		<td><select name="condition">
  	  					<%=cachePicklist("#mpl_condition","=")%>
  	  				</select>
  			</td>
  		<td><input class=cn_input03 type="text" size="15" name="matching_value" value="" ></td>
			<td><select name="right_bracket">
  	  					<%=cachePicklist("#mpl_right_bracket","")%>
  	  				</select></td>
			<td><select name="and_or">
  	  					<%=cachePicklist("#mpl_and_or","")%>
  	  				</select></td>
			<td><input class=cn_input03 name="sort_no" type="text" size="3" value="999"></td>
    		<td><BUTTON class=cn_button01 type=submit >新增</button></td>
  </TR>
</form>
<%end if %>
</table>
可使用标签:<br>
{^CURRENTGROUP}：值标签。当前用户组名<br>
{^CURRENTUSERID}：值标签。当前用户ID<br>
{^PARAM1}：值标签。 url参数 Param1<br>
{^PARAM2}：值标签。 url参数 Param2<br>
{^DATEDIFF(字段名)}：字段标签。距离当前日期字段的天数，该标签只能单独使用。使用举例{^DATEDIFF(C.D3)}
<!--datediff(day,CONVERT(VARCHAR(10),GETDATE(),120),'2000-01-01' )-->

</div>










<div class="cn_list_title">分组</div>
<DIV class=cn_col>
<TABLE border=0 cellSpacing=1 cellPadding=0>
 
	<THEAD>
  	<TR>
  		<tH>字段代码</tH>
  		<tH>字段名称</tH>
			<TH>排序</TH>
			<TH>操作</TH>
   </TR>
   </THEAD>
  <TBODY>
 
 <%
 Dim FRM_mu_mpl_group_id
 sqlString = "Select * From mu_mpl_group Where archive='F' and mu_mpl_search_id ="&mu_mpl_search_id  & " order by sort_no"  
executeQuery conn,movaRS,sqlString,1,3
do 
	if movaRS.eof or movaRS.bof then exit do
FRM_archive = movaRS("archive")
FRM_field_code = movaRS("field_code")
FRM_mu_mpl_group_id = movaRS("mu_mpl_group_id")
FRM_mu_mpl_search_id = movaRS("mu_mpl_search_id")
FRM_field_name = movaRS("field_name") 
FRM_sort_no = movaRS("sort_no")

	
%>
	<form method=post name="mplorder<%=FRM_mu_mpl_group_id%>" action=mplGroup_.asp>
  <TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
			<input type="hidden" name="archive" value="F">
			<input type="hidden" name="object" value="mu_mpl_group">
			<input type="hidden" name="mu_mpl_group_id" value="<%=FRM_mu_mpl_group_id%>">
			<input type="hidden" name="mu_mpl_search_id" value="<%=mu_mpl_search_id%>"> 
    		<td><input class=cn_input03 type="text" size="50" name="field_code" value="<%=FRM_field_code%>" ondblclick="fieldSelect(this.form)"></td>
    		<td><input class=cn_input03 type="text" size="15" name="field_name" value="<%=FRM_field_name%>" ondblclick="fieldSelect(this.form)"></td>
    		<td><input class=cn_input03 type="text" name=sort_no size="3" value="<%=FRM_sort_no%>"></td>
    		<td>
    			<%if chkAccount("mplEdit") then %>
    			<BUTTON class=cn_button01 type=submit >保存</button>
    			<BUTTON class=cn_button06 type=submit onClick="return chkDel(this.form)" >删除</button></td>
    			<%end if %>
    		
  </TR>
</form>
<%	
	movaRS.moveNext
loop
%>
<%if chkAccount("mplEdit") then %>
 <form method=post name="new_mplGroup_" action=mplGroup_.asp>
  <TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
			<input type="hidden" name="archive" value="F">
			<input type="hidden" name="object" value="mu_mpl_group">
			<input type="hidden" name="mu_mpl_group_id" value="0">
			<input type="hidden" name="mu_mpl_search_id" value="<%=mu_mpl_search_id%>"> 
    		<td><input class=cn_input03 type="text" size="50" name="field_code" value="" ondblclick="fieldSelect(this.form)"></td>
    		<td><input class=cn_input03 type="text" size="15" name="field_name" value="" ondblclick="fieldSelect(this.form)"></td>
    		<td><input class=cn_input03 name="sort_no" type="text" size="3" value="999"></td>
    		<td><BUTTON class=cn_button01 type=submit >新增</button> </td>
    		
  </TR>
</form>
<%end if%>

</table>
</div>



<div class="cn_list_title">排序</div>
<DIV class=cn_col>
<TABLE border=0 cellSpacing=1 cellPadding=0>
 
	<THEAD>
  	<TR>
  		<tH>字段代码</tH>
  		<tH>字段名称</tH>
  		<TH>排序方向</TH>
			<TH>排序</TH>
			<TH>操作</TH>
   </TR>
   </THEAD>
  <TBODY>
 
 <%
Dim FRM_mu_mpl_order_id,FRM_asc_desc
sqlString = "Select * From mu_mpl_order Where archive='F' and mu_mpl_search_id ="&mu_mpl_search_id  & " order by sort_no"  
executeQuery conn,movaRS,sqlString,1,3
do 
	if movaRS.eof or movaRS.bof then exit do
FRM_archive = movaRS("archive")
FRM_field_code = movaRS("field_code")
FRM_mu_mpl_order_id = movaRS("mu_mpl_order_id")
FRM_mu_mpl_search_id = movaRS("mu_mpl_search_id")
FRM_field_name = movaRS("field_name")
FRM_asc_desc = movaRS("asc_desc")
FRM_sort_no = movaRS("sort_no")

	
%>
	<form method=post name="mplorder<%=FRM_mu_mpl_order_id%>" action=mplOrder_.asp>
  <TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
			<input type="hidden" name="archive" value="F">
			<input type="hidden" name="object" value="mu_mpl_order">
			<input type="hidden" name="mu_mpl_order_id" value="<%=FRM_mu_mpl_order_id%>">
			<input type="hidden" name="mu_mpl_search_id" value="<%=mu_mpl_search_id%>"> 
    		<td><input class=cn_input03 type="text" size="15" name="field_code" value="<%=FRM_field_code%>" ondblclick="fieldSelect(this.form)"></td>
    		<td><input class=cn_input03 type="text" size="15" name="field_name" value="<%=FRM_field_name%>" ondblclick="fieldSelect(this.form)"></td>
    		<td><select name="asc_desc">
  	  					<%=cachePicklist("#mpl_sort",FRM_asc_desc)%>
  	  				</select></td>
    		<td><input class=cn_input03 type="text" name=sort_no size="3" value="<%=FRM_sort_no%>"></td>
    		<td>
    			<%if chkAccount("mplEdit") then %>
    			<BUTTON class=cn_button01 type=submit >保存</button>
    			<BUTTON class=cn_button06 type=submit onClick="return chkDel(this.form)" >删除</button></td>
    			<%end if %>
    		
  </TR>
</form>
<%	
	movaRS.moveNext
loop
%>
<%if chkAccount("mplEdit") then %>
 <form method=post name="new_mplOrder" action=mplOrder_.asp>
  <TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
			<input type="hidden" name="archive" value="F">
			<input type="hidden" name="object" value="mu_mpl_Order">
			<input type="hidden" name="mu_mpl_Order_id" value="0">
			<input type="hidden" name="mu_mpl_search_id" value="<%=mu_mpl_search_id%>"> 
    		<td><input class=cn_input03 type="text" size="15" name="field_code" value="" ondblclick="fieldSelect(this.form)"></td>
    		<td><input class=cn_input03 type="text" size="15" name="field_name" value="" ondblclick="fieldSelect(this.form)"></td>
    		<td><select name="asc_desc">
  	  					<%=cachePicklist("#mpl_sort","asc")%>
  	  				</select></td>
    		<td><input class=cn_input03 name="sort_no" type="text" size="3" value="999"></td>
    		<td><BUTTON class=cn_button01 type=submit >新增</button> </td>
    		
  </TR>
</form>
<%end if%>
</table>
</div>

<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
 