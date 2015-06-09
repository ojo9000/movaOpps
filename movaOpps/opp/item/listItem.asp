<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<% chkAccountStr "muModel_item" %>
<%
FRM_itemID=getParamID(req("itemId"))
CUR_item_name = ""
%>

<style type="text/css">
<!--
.itemLeft {
	float: left;
	width: 500px;
	 
}

.itemRight {
	float: left;
	width: 400;
}
-->
</style>

<div  class="itemLeft">
<div class="cn_list_title">自定义字段类型列表 </div> 
<DIV class=cn_col>

<TABLE border=0 cellSpacing=1 cellPadding=0>
  <THEAD>
  	<TR>
            <TH>类型代码</TH>
            <TH>类型名称</TH>
            <TH>字段类型</TH>
            <% if Session("superadmin")  then %>
            <TH>是否插件</TH>
          	<% end if %>
	          <TH></TH>
   </TR>
   </THEAD>
  <TBODY>
<% 			
			 
 			Dim sqlString,condition,securitySQL,order
 			Dim 	FRM_item_id,cur_item_name,cur_item_code,FRM_modifydate,FRM_field_type,allowDelete,FRM_itemID
 			Dim FRM_item_code,FRM_item_name,FRM_item_list_id,FRM_txt,FRM_sort_no,FRM_is_pub
 			sqlString="select * from mu_item where archive='F' "
 			condition = ""
 			securitySQL = " and owner='" & session("customerNo") & "'"
 			order =  " order by modifydate desc " 
 			
 			 
			sqlString=sqlString & condition & securitySQL &  order 
			 
			executeQuery conn,rs,sqlString, 1, 1
 
			do 
				if rs.eof or rs.bof then exit do
				FRM_item_id = rs("item_id")
				if FRM_itemID = FRM_item_id then 
					cur_item_name=rs("item_name")
					cur_item_code = rs("item_code")
				end if 
				FRM_item_code = rs("item_code")
				FRM_item_name = rs("item_name")
				FRM_modifydate = formatdate(rs("modifydate"),2)
 				FRM_field_type = rs("field_type")
 				FRM_is_pub= rs("is_pub")
 				allowDelete = true
 				if FRM_is_pub = "F" then allowDelete = false
%>
	<FORM id=form method=post name="itemForm<%=FRM_item_id%>" action=item_.asp>
		<input type="hidden" name="item_id" value="<%=FRM_item_id%>">
		<input type="hidden" name="del" value="F">
  	<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
  	  		<td><a href="listItem.asp?itemId=<%=FRM_item_id%>"><%=FRM_item_code %></a></TD>
  	  		<td><input class=cn_input03 type="text" size="15" name="item_name" value="<%=FRM_item_name%>"></TD>
					<td><select name="field_type">
  	  					<%=cachePicklist("#field_type",FRM_field_type)%>
						</select>
					</td>
					<%if Session("superadmin")  then %>
					<td><select name="is_pub">
  	  					<%=cachePicklist("#isNo",FRM_is_pub)%>
						</select></td>
					<%else %>
						<input type=hidden name="is_pub" value="<%=FRM_is_pub%>">
					<%end if %>
					<td> <button  class=cn_button01 type="submit" onClick="return chk(this.form)">保存</button>
						<% if allowDelete then %>
						<button  class=cn_button01 type="submit" onClick="return chkDel(this.form)">删除</button>
						<%end if%> 
						</TD>
  	</TR>
 </form>
<%			
			rs.Movenext 
		Loop
%>
</Tbody>
</table>
<script>
	function chk(form){
		var str;
		str="";
		if (form.item_name.value==""){
			str=str +  "类型名称必须输入" + "\n";
		}
		form.del.value="F";
		return showInputError(str);
	}
	
	function chkDel(form){
		form.del.value="T";
		return confirm("确定需要删除吗？");
	}
</script>
</div>


<div class="cn_list_title">新增自定义字段类型</div> 
<DIV class=cn_col>
<TABLE border=0 cellSpacing=1 cellPadding=0>
  <THEAD>
<TR>
            <TH>类型名称</TH>
            <TH>字段类型</TH>
            <TH></TH>
</tr>	
</THEAD>
<TBODY>
	<FORM id=form method=post name="newItemForm" action=item_.asp>
		<input type="hidden" name="item_id" value="">
		<input type="hidden" name="del" value="">
  	<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
  	  		<td><input class=cn_input03 type="text" size="15" name="item_name" value=""></TD>
  	  		<td><select name="field_type">
  	  					<%=cachePicklist("#field_type","v")%>
						</select>
					</td>
					<td><button class=cn_button01  type="submit" onClick="return chk(this.form)">新增</button></TD>
  	</TR>
 </form>
 </TBODY>
</table>
</div> 

</div>
<div  class="itemRight">
<div class="cn_list_title">《<font color=red><%=cur_item_name%></font>》的列表值</div> 
<DIV class=cn_col>
<TABLE border=0 cellSpacing=1 width="400" cellPadding=0>
  <THEAD>
  	<TR>
            <TH>字段类型名称</TH>
            <TH>列表值</TH>
	          <TH>排序</TH>
	          <TH></TH>
   </TR>
   </THEAD>
  <TBODY>
  	<% 			
			 
 			sqlString="select l.*,i.item_name,i.item_code from mu_item i,mu_item_list l where i.item_id=l.item_id and  i.archive='F' and l.archive='F' "
 			condition = " and l.item_id=" & FRM_itemID
 			securitySQL = " and l.owner='" & session("customerNo") & "'"
 			order =  " order by sort_no" 
 			
 			 
			sqlString=sqlString & condition & securitySQL &  order 
			 
			executeQuery conn,rs,sqlString, 1, 1
 			if rs.eof or rs.bof then 
 				FRM_item_code =  cur_item_code
 			end if 
			do 
				if rs.eof or rs.bof then exit do
				FRM_item_list_id = rs("item_list_id")
				FRM_item_id = rs("item_id")
				FRM_item_code = rs("item_code")
				FRM_item_name = rs("item_name")
				
				FRM_txt = rs("txt")
				FRM_sort_no = rs("sort_no")
				 
%>
	<FORM id=form method=post name="listForm<%=FRM_item_id%>" action=listItem_.asp>
		<input type="hidden" name="item_id" value="<%=FRM_item_id%>">
		<input type="hidden" name="id" value="<%=FRM_item_list_id%>">
		<input type="hidden" name="item_code" value="<%=FRM_item_code%>">
		<input type="hidden" name="del" value="F">
  	<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
  	  		<td><%=FRM_item_name%></TD>
  	  		<td><input class=cn_input03 type="text" size="20" name="txt" value="<%=FRM_txt%>"></TD>
					<td><input class=cn_input03 type="text" size="3" name="sort_no" value="<%=FRM_sort_no%>"></TD>
					<td><button  class=cn_button01 type="submit" onClick="">保存</button>
						<button  class=cn_button01 type="submit" onClick="return chkDel(this.form)">删除</button></TD>
  	</TR>
 </form>
<%			
			rs.Movenext 
		Loop
%>
</Tbody>
</table>
</div>

<div class="cn_list_title">新增列表值</div> 
<DIV class=cn_col>
<TABLE border=0 width="400" cellSpacing=1 cellPadding=0>
  <THEAD>
<TR>
            <TH>列表值</TH>
            <TH>排序</TH>
            <TH></TH>
</tr>	
</THEAD>
<TBODY>
	<FORM id=form method=post name="newItemForm" action=listItem_.asp>
		<input type="hidden" name="item_id" value="<%=FRM_itemID%>">
		<input type="hidden" name="item_code" value="<%=FRM_item_code%>">
		<input type="hidden" name="id" value="">
  	<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
  	  	<td><input class=cn_input03 type="text" size="20" name="txt" value=""></TD>
					<td><input class=cn_input03 type="text" size="3" name="sort_no" value="0"></TD>
					<td><button  class=cn_button01 type="submit" onClick="">保存</button>
					</TD>
  	</TR>
 </form>
 </TBODY>
</table>
</div> 

</div>
 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->