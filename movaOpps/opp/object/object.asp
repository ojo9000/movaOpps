<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<% chkAccountStr "muModel_opp" %>
<% 
	Dim haveCustomerTable ,sqlString,securitySQL,order,condition
	Dim FRM_object_id,FRM_table_name,FRM_object_name,FRM_is_locked,FRM_is_publish,FRM_is_system,FRM_is_discard,FRM_is_rule,FRM_view_col,FRM_print_template
	
	haveCustomerTable = false
%>
<script>
	function chk(form){
		var str;
		str="";
		if (form.object_name.value==""){
			str=str +  "业务模型名称必须输入" + "\n";
		}
		form.del.value="F";
		if (showInputError(str)){
			return confirm("您确定需要创建" + form.object_name.value + "吗？");
		}else{
			return false;	
		};
	}
	
	function chkDel(form){
		form.del.value="T";
		return confirm("确定需要删除吗？");
	}
</script>
 
<div class="cn_list_title">业务模型列表</div> 
<DIV class=cn_col>
<TABLE border=0 cellSpacing=1 width="400" cellPadding=0>
  <THEAD>
  	<TR>
            <TH>业务模型名称</TH>
            <TH>业务模型表</TH>
	          <TH>编辑列数</TH>
	          <TH>排序</TH>
	          <TH>是否发布</TH>
	          <TH></TH>
   </TR>
   </THEAD>
  <TBODY>
  	<% 			
			 
 			sqlString="select * from mu_object where archive='F' "
 			securitySQL = " and owner='" & session("customerNo") & "'"
 			order =  " order by is_system desc,is_publish desc,sort_no" 
 			
 			
			sqlString=sqlString & condition & securitySQL &  order 
 
			executeQuery conn,movaRS,sqlString, 1, 1
 
			do 
				if movaRS.eof or movaRS.bof then exit do

				FRM_object_id = movaRS("object_id")
				FRM_table_name = movaRS("table_name")
				FRM_object_name = movaRS("object_name")
				FRM_is_locked = movaRS("is_locked")
				FRM_is_publish = movaRS("is_publish")
				FRM_is_system = movaRS("is_system")
				FRM_is_discard = movaRS("is_discard")
				FRM_is_rule = movaRS("is_rule")
				FRM_view_col =movaRS("view_col")
				FRM_print_template = movaRS("print_template")
				FRM_sort_no = movaRS("sort_no")
				
				if FRM_table_name = "MU_CUSTOMER" then haveCustomerTable = true
%>
	<FORM id=form method=post name="listModel<%=FRM_object_id%>" action=object_.asp>
		<input type="hidden" name="object_id" value="<%=FRM_object_id%>">
		<input type="hidden" name="is_rule" value="<%=FRM_is_rule%>">
		<input type="hidden" name="del" value="F">
		<input type="hidden" value="<%=FRM_print_template%>" name="print_template">
  	<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
  	  		<td><input class=cn_input03 type="text" size="20" name="object_name" value="<%=FRM_object_name%>"></TD>
  	  		<td><%=FRM_table_name%></TD>
  	  		<td><select name="view_col">
  	  					<%=cachePicklist("#shuzi",FRM_view_col)%>
  	  				</select>
  	  		</td>
  	  		<td><input class=cn_input03  type="text" size=2 name="sort_no" value="<%=FRM_sort_no%>"</td>
  	  		<td><select name="is_publish">
  	  					<%=cachePicklist("#isNo",FRM_is_publish)%>
  	  				</select>
  	  		</td>
  	  		
  	  		</td>  
  	  		<td>
  	  				<%if chkAccount("modulEdit") then %><button  class=cn_button01 type="submit" onClick="" onClick="return chk(this.form)">保存</button><%end if %>
							<%if chkAccount("modulFList") then %><button  class=cn_button06 type="button" onClick="window.location.href='objectField.asp?object_id=<%=FRM_object_id%>'">查看字段</button><%end if %>
							<%if chkAccount("modulDel") then %>
								<%if FRM_is_publish="F" and FRM_is_system="F" then %>
								<button  class=cn_button01 type="submit" onClick="return chkDel(this.form)">删除</button>
								<%end if %>
							<%end if %>
							
							<a href="objectAdv.asp?id=<%=FRM_object_id%>">高级的设置</a>
					</TD>				
  	</TR>
 </form>
<%			
			movaRS.Movenext 
		Loop
%>
</Tbody>
</table>
<ul>说明：
		<li>"编辑列数"，表示在编辑界面中，每行需要显示信息项的最大数目</li>
		<li>如果"是否发布"为 是， 则该业务模型不能更改。</li>
		<li>如果"是否发布"为 否， 则该业务模型不能被使用，系统会提示用户没有这个业务模型。</li>
</ul>
</div>
<%if chkAccount("modulNew") then %>
<div class="cn_list_title">新增业务模型</div> 
<DIV class=cn_col>
<TABLE border=0 cellSpacing=1 width="400" cellPadding=0>
  <THEAD>
  	<TR>
            <TH>业务模型名称</TH>
	          <TH>业务模型表</TH>
	          <TH>是否单一模型</TH>
	          <TH>编辑列数</TH>
	          <TH></TH>
   </TR>
   </THEAD>
  <TBODY>
	<FORM id=form method=post name="newObject" action=object_.asp>
		<input type="hidden" name="object_id" value="">
		<input type="hidden" name="del" value="F">
		<input type="hidden" name="is_locked" value="F">
		<input type="hidden" name="is_discard" value="F">
		<input type="hidden" name="is_publish" value="F"> 
	<%
	if not haveCustomerTable then 
		%>
		<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
  	  		<td colspan="4">
  				<div align=left>您还没有创建客户模型，请点击
  				<button  class=cn_button01 type="submit" onClick="return createCustomer(this.form)">创建客户模型</button><br>
  					<ul>说明：
  						<li>创建客户模型后，必须重新登录系统后，才能正确使用</li>
  					</ul>
  				</div>
  	  		</TD>
  	</TR>
		<script>
				function createCustomer(form){
						if (confirm("您确定开始创建客户模型吗？")){
							form.table_name.value="MU_CUSTOMER";
							return true;
						}else{
							return false;	
						}
				}
		</script>		
		<%
	else
	%>					

  	<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
  	  		<td><input class=cn_input03 type="text" size="20" name="object_name" value=""></TD>
  	  		<td><select name="table_name">
  	  					<%=cachePicklist("#opp_table","MU_OPP")%>
  	  				</select>
  	  		</td>
  	  		<td><select name="is_single">
  	  					<%=cachePicklist("#isNo","T")%>
  	  				</select>
  	  		</td>
  	  		<td><select name="view_col">
  	  					<%=cachePicklist("#shuzi",2)%>
  	  				</select>
  	  		</td>
  	  			
  	  		<td><button  class=cn_button01 type="submit" onClick="return chk(this.form)">保存</button></TD>
  	</TR>
 <%end if %>
 </form>
 </TBODY>
</table>
说明：<br>
1) 如果业务模型为单一表，则表示该业务模型与客户表无关联关系。一旦确定，将不可编辑。<br>
2) 业务模型表一旦确定，将不可编辑。

</div> 

</div>
 <%end if %>
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->