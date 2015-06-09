<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" --> 
<script>
	$(function() {
		$( "#new_onchange" ).resizable({
			handles: "se"
		});
		$( "#edit_onchange" ).resizable({
			handles: "se"
		}); 
		$( "#status_rule" ).resizable({
			handles: "se"
		}); 
		$( "#new_ext_html" ).resizable({
			handles: "se"
		}); 
		$( "#edit_ext_html" ).resizable({
			handles: "se"
		}); 
		
		
		
		$( "#field_select_dialog" ).dialog({
			autoOpen: false,
			height: 306,
			width: 855,
			modal: true,
			buttons: {
				"确定": function() {
					setField();
					
				},
				"清空": function() {
					tmpFrom.field_code.value = "";
					tmpFrom.field_name.value ="";
					$( this ).dialog( "close" );
				},
				"取消": function() {
					$( this ).dialog( "close" );
				}
			} 
		});
		
		
		
		
		
	});
	</script>
	
<% chkAccountStr "modulFList" %>
<%
Dim id,object_id,sqlString,securitySQL,condition
id = req("id")
object_id = req("objectId")

sqlString = "select *  from mu_object_field where archive='F' and owner='" & session("customerNo") & "' and object_id=" & object_id & " and field_id=" & id
executeQuery conn,movaRS,sqlString,1,1
if movaRS.bof or movaRS.eof then
movaRS.close
msgbox "记录不存在，或者您打开了一个错误的页面",1
end if 

	Dim recordType 
	recordType  = "select selectvalue,'&nbsp;' + txt as txt  from mova_picklist where code='record_type' and archive='F' union select item_code as selectvalue,'*' + item_name as txt from mu_item where archive='F'  and owner='" & session("customerNo") & "'"
	
	Dim customerField
	customerField = "select upper('~' + field_code )  as selectvalue,field_name+'~'+field_code as txt  from mu_object o ,mu_object_field f where o.object_id=f.object_id "
	customerField = customerField & " and f.owner='"& session("customerNo") &"' and f.archive='F' and o.archive='F' "
	customerField = customerField & " and o.table_name='MU_CUSTOMER' and field_name <>''"
	sqlString="select *,isNull(field_name,'_') as fn from mu_object_field where archive='F' and object_id=" & object_id
	sqlString =sqlString & " and field_id = " & id
	securitySQL = " and owner='" & session("customerNo") & "'"
 	Dim FRM_field_id,FRM_object_id,FRM_field_code,FRM_field_name,FRM_field_type,FRM_is_new,FRM_is_list,FRM_is_edit,FRM_is_seat,FRM_is_search,FRM_is_required,FRM_search_type,FRM_def_value,FRM_col_span,FRM_sort_edit,FRM_sort_list,FRM_width,FRM_high,FRM_is_rule,FRM_allow_batch,FRM_allow_recall,FRM_clone_by,FRM_allow_clone,FRM_new_onChange,FRM_edit_onChange,FRM_edit_ext_html,FRM_new_ext_html,FRM_new_read_only,FRM_edit_read_only,FRM_is_forbidden,FRM_status_rule,FRM_is_richText,FRM_is_attachment,FRM_hidden_by 		
	Dim FRM_FK_select,FRM_FK_window,FRM_hidden_by_field 
			sqlString=sqlString & condition & securitySQL 
			
			executeQuery conn,movaRS,sqlString, 1, 1
				FRM_field_id = movaRS("field_id")
				FRM_object_id = movaRS("object_id")
				FRM_field_code  = movaRS("field_code")
				FRM_field_name = movaRS("field_name")
				FRM_field_type = movaRS("field_type")
				FRM_is_new = movaRS("is_new")
				FRM_is_list =  movaRS("is_list")
				FRM_is_edit =  movaRS("is_edit")
				FRM_is_seat =  movaRS("is_seat")
				FRM_is_search =  movaRS("is_search")
				FRM_is_required =movaRS("is_required")
				FRM_search_type = movaRS("search_type")
				FRM_def_value = movaRS("def_value")
				FRM_col_span = movaRS("col_span")
				FRM_sort_edit = movaRS("sort_edit")
				FRM_sort_list = movaRS("sort_list")
				FRM_width = movaRS("width")
				FRM_high = movaRS("high")
				FRM_is_rule=movaRS("is_rule")
				FRM_allow_batch = movaRS("allow_batch")
				FRM_allow_recall = movaRS("allow_recall")
				FRM_clone_by = movaRS("clone_by")
				FRM_allow_clone = movaRS("allow_clone")
				FRM_new_onChange = decode_SQL2HTML(movaRS("new_onchange"))
				FRM_edit_onChange = decode_SQL2HTML(movaRS("edit_onchange"))
				FRM_edit_ext_html = decode_SQL2HTML(movaRS("edit_ext_html"))
				FRM_new_ext_html = decode_SQL2HTML(movaRS("new_ext_html"))
				
				
				FRM_new_read_only = movaRS("new_read_only")
				FRM_edit_read_only = movaRS("edit_read_only")
				FRM_is_forbidden = movaRS("is_forbidden")
				FRM_status_rule = movaRS("status_rule")
				FRM_is_richText = movaRS("is_richText")
				FRM_is_attachment = movaRS("is_attachment")
				FRM_hidden_by = movaRS("hidden_by")
				FRM_FK_select = movaRS("fk_select")
				FRM_FK_window = movaRS("fk_window")
				FRM_hidden_by_field= movaRS("hidden_by_field")
				
%>
<script>
	function chk()
	{
		var str;
		str="";
		 
		return showInputError(str);
	}
	
	
	function chkDel(form){
		form.del.value="T";
		return confirm("确定需要删除吗？");
	}
	
	
</script> 
<div class="cn_list_title">"<%=FRM_field_name%>"字段定义，<a href="objectAdv.asp?id=<%=object_id%>">返回当前业务模型</a>
	，<a href="objectField.asp?object_id=<%=FRM_object_id%>">返回字段列表</a>，<a href="dataDict.asp?object_id=<%=object_id%>" target="_blank" title="新窗口查看">数据字典</a></div> 
<DIV class=cn_col01>
<FORM id=form method=post name="listModel" action=field_.asp>
<TABLE border=0 cellSpacing=1 cellPadding=0>
		<input type="hidden" name="field_id" value="<%=FRM_field_id%>">
		<input type="hidden" name="object_id" value="<%=FRM_object_id%>">
		<input type="hidden" name="old_field_type" value="<%=FRM_field_type%>">
		<input type="hidden" name="del" value="F">
  <TBODY>
    <tr>
    		<td class=cn_td09 align=right><span class="cn_font02">*</span>名称:</td>
    		<td><input class=cn_input03 type="text" size="15" name="field_name" value="<%=FRM_field_name%>"></td>
    </tr>
	  <tr>
	  		<td class=cn_td09 align=right><span class="cn_font02">*</span>字段类型:</td>
	  		<td><select name="field_type">
  	  					<%=cachePicklist(recordType,FRM_field_type)%>
						</select>
  	  	</td>
	  </tr>
	   <tr>
	  	<td class=cn_td09 align=right><span class="cn_font02">*</span>禁用:</td>
	  	<td><select name="is_forbidden">
  	  					<%=cachePicklist("#isNo",FRM_is_forbidden)%>
					</select>字段如果被禁用，则该字段不参与任何界面显示。相当于该字段保留数据，但不启用。
	  	</td>
	  </tr>
	   
	  <tr>
	  	<td class=cn_td09 align=right><span class="cn_font02">*</span>必填:</td>
	  	<td><select name="is_required">
  	  					<%=cachePicklist("#isNo",FRM_is_required)%>
					</select>
	  	</td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>(添加):</td>
	  		<td><select name="is_new">
  	  					<%=cachePicklist("#isNo",FRM_is_new)%>
  	  				</select> 
	  		</td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>(编辑):</td>
	  		<td><select name="is_edit">
  	  					<%=cachePicklist("#isNo",FRM_is_edit)%>
  	  				</select> 
	  		</td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>(列表):</td>
	  		<td><select name="is_list">
  	  					<%=cachePicklist("#isNo",FRM_is_list)%>
  	  				</select> 
	  		</td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>(查询):</td>
	  		<td><select name="is_search">
  	  					<%=cachePicklist("#isNo",FRM_is_search)%>
  	  				</select> 
	  		</td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>跨列数:</td>
	  		<td><input class=cn_input03 type="text" size="2" name="col_span" value="<%=FRM_col_span%>"></td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>行宽:</td>
	  		<td><input class=cn_input03  type="text" size="2" name="width" value="<%=FRM_width%>"></td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>行高:</td>
	  		<td><input class=cn_input03  type="text" size="2" name="high" value="<%=FRM_high%>"></td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>条件类型:</td>
	  		<td><select name="search_type">
  	  					<option value=""></option>
  	  					<%=cachePicklist("#condition_type",FRM_search_type)%>
  	  				</select>
  	  				如果条件类型为“等于” 并且 该字段允许被查询，系统将提供该字段的关联查询，列表与该字段值相同的所有记录
  	  	</td>
		</tr>
		<tr><td class=cn_td09 align=right><span class="cn_font02">*</span>编辑排序:</td>
				<td><input class=cn_input03 type="text" size="3" name="sort_edit" value="<%=FRM_sort_edit%>"></td>
		</tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>列表排序:</td>
	  		<td><input class=cn_input03 type="text" size="3" name="sort_list" value="<%=FRM_sort_list%>"></td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>是否为富文本:</td>
	  		<td><select name="is_richText">
  	  					<%=cachePicklist("#isNo",FRM_is_richText)%>
  	  				</select>仅当字段类型为大文本时有效。
	  		</td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>是否为附件:</td>
	  		<td><select name="is_attachment">
  	  					<%=cachePicklist("#isNo",FRM_is_attachment)%>
  	  				</select>仅当字段类型为普通文本时有效。
	  		</td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>角色隐藏显示:</td>
	  		<td><input class=cn_input03 type="text" style="width:100%" name="hidden_by" value="<%=FRM_hidden_by%>"><br>
	  		输入所需要隐藏的角色代码，以逗号隔开。则表示对指定的角色不隐藏不显示。如果不需要隐藏显示，则该值保留为空。输入*号则表示对所有角色隐藏
	  		</td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>字段状态隐藏显示:</td>
	  		<td><input class=cn_input03 type="text" style="width:100%" name="hidden_by_field" value="<%=FRM_hidden_by_field%>"><br>
	  		输入所需要隐藏的字段代码及值。格式如下： “VA^招待任务,VB^已处理” 以^分隔字段与值 ，一组以逗号隔开。
	  	 <br>表示对指定字段的指定值隐藏不显示。
	  		</td>
	  </tr>
	 
	   <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>外键输入条件:</td>
	  		<td><input class=cn_input03 type="text" style="width:100%" name="fk_select" value="<%=FRM_FK_select%>"><br>
	  		格式： select top 1 xx_value as <b>value</b> from xxTable where xx_id=<b>^id</b>
	  		</td>
	  </tr>
	   <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>外键输入窗口:</td>
	  		<td><input class=cn_input03 type="text" style="width:100%" name="fk_window" value="<%=FRM_FK_window%>"><br>
	  		格式：http://domain/?id=<b>^id</b>
	  		</td>
	  </tr>
	   
				
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>是否允许批量修改:</td>
	  		<td>
	  			<select name="allow_batch">
  	  					<%=cachePicklist("#isNo",FRM_allow_batch)%>
  	  				</select>只有在该业务对象允许批量修改时有效。你可以选择这个字段进行批量修改操作。只有在列表上显示的字段才能进行批量修改。
	  		</td>
	  </tr>
	  
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>默认值:</td>
	  		<td><input class=cn_input03 type="text" size="15" name="def_value" value="<%=FRM_def_value%>">
	  				如果需要设定系统内定的默认值，请选择：<select name="def" onChange="this.form.def_value.value=this.value">
	  					<%=cachePicklist("#defValue",FRM_def_value )%>
	  				</select>
	  			
	  		</td>
	  </tr>
	  
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>是否记忆该字段:</td>
	  		<td>
	  			<select name="allow_recall">
  	  					<%=cachePicklist("#isNo",FRM_allow_recall)%>
  	  				</select>记忆字段，在连续创建时数据时，可以记忆前一个记录的字段值
	  		</td>
	  </tr>
  
		<tr>
			<td class=cn_td09 align=right>新增时字段只读:</td>
	  		<td><input class=cn_input03 type="text" style="width:100%" name="new_read_only" value="<%=FRM_new_read_only%>">
  	  				输入需要只读的角色代码，以逗号隔开。则表示对指定的角色只读显示。如果不需要只读，则该值保留为空。输入*号则表示对所有角色只读
	  		</td>
	  </tr>
	  <tr>
			<td class=cn_td09 align=right>编辑时字段只读:</td>
	  		<td><input class=cn_input03 type="text" style="width:100%" name="edit_read_only" value="<%=FRM_edit_read_only%>">
  	  				输入需要只读的角色代码，以逗号隔开。则表示对指定的角色只读显示。如果不需要只读，则该值保留为空。 输入*号则表示对所有角色只读
	  		</td>
	  </tr>
		</tr>

	  <tr><td class=cn_td09 align=right>是否克隆标识字段:</td>
	  		<td><select name="clone_by">
  	  					<%=cachePicklist("#isNo",FRM_clone_by)%>
  	  				</select>如果为克隆标识字段，那么在添加或者编辑一个业务数据时，系统会根据该字段的值查询一条相同字段值的业务数据。并将根据所有"允许克隆"的字段值，进行默认赋值。
	  		</td>
	  </tr>
	  <tr><td class=cn_td09 align=right>是否允许克隆:</td>
	  		<td><select name="allow_clone">
  	  					<%=cachePicklist("#isNo",FRM_allow_clone)%>
  	  				</select>
	  		</td>
	  </tr>
	  		<tr><td class=cn_td09 align=right>状态规则:</td>
	  		<td>当该字段为状态字段时，设定规则，使得系统可以根据字段值来确定相应的状态处理操作。请不要输入回车符号  
	  			<br>一个模型只能设定一个字段作为状态规则，最多允许10个状态。
	  			<br>每一行表示一个状态可以进行的操作，且必须以"|"符号结束
	  			<br>^表示可进行所有操作。状态必须 .()结束。
	  			<br>括号内表示当处于该状态时，允许编辑的字段。如果括号内为* ,则表示允许所有字段编辑，如果需要规则则状态必须默认一个值
	  			<br>例子："已确定(VR,VZ,VM)->^(),已处理(处理),已取消(取消)|已处理(VA,VB,VC)->已收款(收款确认),已转交(转交),已撤销(撤销)|已撤销()->.()"
	  			
	  			<textarea  name="status_rule"  id="status_rule"  style="width:100%" rows="5" ><%=FRM_status_rule%></textarea>
	  			<input type="hidden" name="status_rule_bk" value="FRM_status_rule">
	  			<%if FRM_status_rule<>"" then %><input type="checkbox" name="resetSec" value="true">保存为权限点。保存权限点则将删除当前已生成的权限点<%end if %>
	  		</td>
	  	</tr>
	 
	  		<tr><td class=cn_td09 align=right>新增时<br>onChange事件JS脚本:</td>
	  		<td><textarea  name="new_onchange" style="width:100%"  cols="100" rows="5"  id="new_onchange"><%=FRM_new_onchange%></textarea>        
	  		</td>
	  	</tr>
	  
	  		<tr><td class=cn_td09 align=right>编辑时<br>onChange事件JS脚本:</td>
	  		<td><textarea  name="edit_onchange" style="width:100%" cols="100" rows="5" id="edit_onchange"><%=FRM_edit_onchange%></textarea>        
	  		</td>
	  	</tr>
	  		<tr><td class=cn_td09 align=right>新增时<br>HTML补充输出:</td>
	  		<td><textarea  name="new_ext_html" style="width:100%" cols="100" rows="3" id="new_ext_html"><%=FRM_new_ext_html%></textarea>可用于字段备注及其它              
	  		</td>
	  	</tr>
	   
	  		<tr><td class=cn_td09 align=right>编辑时<br>HTML补充输出:</td>
	  		<td><textarea  name="edit_ext_html" style="width:100%" cols="100" rows="3" id="edit_ext_html"><%=FRM_edit_ext_html%></textarea>可用于字段备注及其它       
	  		</td>
	  	</tr>
	   
	  <tr>
	  	<td colspan="2">
	  			<%if chkAccount("modulFEdit") then %><BUTTON class=cn_button01 type=submit >保存</button><%end if %>
	  			<%if chkAccount("modulFDel") then %><BUTTON class=cn_button01 type=submit onClick="return chkDel(this.form)" >删除</button><%end if %>
	  			
	  	</td>
		</tr>
  
  
  <tr>
  	<td colspan=2">
				<ul>JS脚本说明:
	  			<li>1)&nbsp;前置JS脚本将相应操作的页面显示前执行</li>
	  			<li>2)&nbsp;后置JS脚本将相应操作的页面显示后执行</li>
	  			<li>3)&nbsp;可以使用以下标签格式获取相应的字段信息</li>
	  			<li>&nbsp;&nbsp;<b>{!字段编码}</b>&nbsp;&nbsp;&nbsp;引用当前模型该字段的表单名，相应的编码请参照模型字段列表第一列<br>
	  			    &nbsp;&nbsp;<b>{!@字段编码}</b>&nbsp;&nbsp;&nbsp;引用当前模型该字段的值<br>
	  				  &nbsp;&nbsp;<b>{~字段编码}</b>&nbsp;&nbsp;&nbsp;引用关联模型该字段的表单名，相应的编码请参照模型字段列表第一列<br>
	  				  &nbsp;&nbsp;<b>{~@字段编码}</b>&nbsp;&nbsp;&nbsp;引用关联模型该字段的值<br>
	  				  &nbsp;&nbsp;<b>{!@TEAM}</b>&nbsp;&nbsp;&nbsp;引用当前模型的所属Team值,值为数字字符，请到组列表进行查阅<br>
	  				  &nbsp;&nbsp;<b>{^^TEAM}</b>&nbsp;&nbsp;&nbsp;引用当前操作用户的Team值,值为数字字符，请到组列表进行查阅<br>
	  				  &nbsp;&nbsp;<b>{!@OBJECTID}</b>&nbsp;&nbsp;&nbsp;引用当前模型的ID,值为数字字符，请到业务模型列表进行查阅<br>
	  				  &nbsp;&nbsp;<b>{~@OBJECTID}</b>&nbsp;&nbsp;&nbsp;引用关联模型的ID,值为数字字符，请到业务模型列表进行查阅<br>
	  			</li>
	  			<li>4)&nbsp;内置JS方法:</li>
	  				<li>&nbsp;&nbsp;getValue("表单名") &nbsp;&nbsp;:&nbsp;&nbsp; 获取字符型的表单值</li>
	  				<li>&nbsp;&nbsp;setInt("表单名") &nbsp;&nbsp;:&nbsp;&nbsp; 获取数值型的表单值</li>
	  				<li>&nbsp;&nbsp;setValue("表单名","值") &nbsp;&nbsp;:&nbsp;&nbsp; 设置表单的值</li>
	  				<li>&nbsp;&nbsp;getCurrentDatetime("格式") &nbsp;&nbsp;:&nbsp;&nbsp; 获取当前的时间 YYYY-MM-D H:M:S ,YYYY-H-D h:m:s</li>
	  			</li>
	  		</ul>
			</td>
		</tr>
		
		
  </TBODY></TABLE></FORM>
</div>


<% if FRM_is_rule="T" then %>
<script>
		function chkRule(form){
			var str;
			str="";
			if (form.con_field.value==""){ str = str + "必须选择一个字段" + "\n";}
			if (form.con_value.value==""){ str = str + "设定值不能为空" + "\n";}
			
			return showInputError(str);
		}
		function confirmDel(form){
			return confirm("您确定删除这个规则吗？");
		}
</script>
<div class="cn_list_title">业务字段规则</div>
<DIV class=cn_col>描述一个角色用户在查看一个业务数据时，对某个字段数据的编辑限制条件（这里只需要定义禁止编辑的条件）
	<TABLE border=0 cellSpacing=1 cellPadding=0>
  <THEAD> 
          	<TR>
						<TH>规则涉及角色</TH>
	          <TH>允许编辑</TH>
						<TH>操作</TH>
   </TR>
</tr>	
</THEAD>
<TBODY>
	<FORM id=form method=post name="ruleForm" action=fieldRule_.asp>
		<input type="hidden" name="object_id" value="<%=FRM_object_id%>">
		<input type="hidden" name="field_id" value="<%=FRM_field_id%>">
		<input type="hidden" name="object_rule_id" value="-1">
		<input type="hidden" name="archive" value="F">
		<input type="hidden" name="type" value="F">
		<input type="hidden" name="con_field" value="<%=FRM_field_code%>">
		
  	<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
  	  		<td><select name="con_role">
  	  				<%=cachePicklist("#user_role","CCUSER")%>
  	  				</select>
					</td>
				 
					<td><select name="con_edit">
  	  				<%=cachePicklist("#isNo","T")%>
  	  				</select>
					</td>
					<td><button class=cn_button06 type="submit" onClick="return chkRule(this.form)">新增保存</button></TD>
  	</TR>
 </form>
 
   	<% 			
			 
 			sqlString="select * from mu_object_rule where object_id="& FRM_object_id &" and type='F' and con_field='"& FRM_field_code &"' and archive='F' order by con_field "
 			condition = ""
 			securitySQL = ""
 			order =  "" 
 			
 			 
			sqlString=sqlString & condition & securitySQL &  order 
			 
			executeQuery conn,movaRS,sqlString, 1, 1
			do 
				if movaRS.eof or movaRS.bof then exit do
				FRM_object_rule_id = movaRS("object_rule_id")
				FRM_type = movaRS("type")
				
				FRM_object_id = movaRS("object_id")
				FRM_con_role = movaRS("con_role")
				FRM_con_field = movaRS("con_field")
				FRM_con_value = movaRS("con_value")
				FRM_con_edit = movaRS("con_edit")
				FRM_con_delete = movaRS("con_delete")
				 
%>
	<FORM id=form method=post name="ruleForm<%=FRM_object_rule_id%>" action=fieldRule_.asp>
		<input type="hidden" name="object_rule_id" value="<%=FRM_object_rule_id%>">
		<input type="hidden" name="object_id" value="<%=FRM_object_id%>">
		<input type="hidden" name="field_id" value="<%=FRM_field_id%>">
		<input type="hidden" name="type" value="<%=FRM_type%>">
		<input type="hidden" name="archive" value="F">
		<input type="hidden" name="con_field" value="<%=FRM_con_field%>">
  	<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
  	  		<td><select name="con_role">
  	  				<%=cachePicklist("#user_role",FRM_con_role)%>
  	  				</select>
					</td>
					<td><select name="Con_edit">
  	  				<%=cachePicklist("#isNo",FRM_con_edit)%>
  	  				</select>
					</td>
					<td>
						<button class=cn_button01  type="submit" onClick="this.form.archive.value='F';return chkRule(this.form)">保存</button>
						<button class=cn_button01  type="submit" onClick="this.form.archive.value='T';return confirmDel(this.form)">删除</button>
					</TD>
  	  		
  	</TR>
 </form>
<%			
			movaRS.Movenext 
		Loop
%>


 
 
 </TBODY>
</table>
</div> 
 
<% end if %>

  	  		
<script>
function	testwin(){
	 	$('#field_select_dialog').html("<iframe width='100%' height='100%' frameborder='0' id='Preview' src='http://localhost:8080/movaOpps/core/pub/dailog/listUser.asp'/>");
		$('#field_select_dialog').dialog('open');
	 
	}
 
function	testwin1(){
	 	$('#field_select_dialog').html("<iframe width='100%' height='100%' frameborder='0' id='Preview' src='http://www.baidu.com'/>");
		$('#field_select_dialog').dialog('open');
	 
	}
</script>
<div id="field_select_dialog" title="选择一个字段">
	 ssss
		</div>
<input type=button value="测试" onClick="testwin();	"> 
<input type=button value="测试2" onClick="testwin1();	"> 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->

 