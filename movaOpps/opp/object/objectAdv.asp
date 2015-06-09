<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<script>
	$(function() {
		$( "#end_edit_js" ).resizable({
			handles: "se"
		});
		$( "#pre_edit_js" ).resizable({
			handles: "se"
		});
		
		$( "#pre_new_js" ).resizable({
			handles: "se"
		});
		
		$( "#end_new_js" ).resizable({
			handles: "se"
		});
		$( "#new_submit_js" ).resizable({
			handles: "se"
		});
		$( "#edit_submit_js" ).resizable({
			handles: "se"
		}); 
		
		$( "#pub_js" ).resizable({
			handles: "se"
		}); 
		
		
		
	});
	</script>
	
 
	
<% chkAccountStr "muModel_opp" %>
<%
Dim object_id	,tmpResult,sqlString,condition,order,securitySQL
Dim FRM_object_id,FRM_table_name,FRM_object_name,FRM_is_seat,FRM_is_locked,FRM_is_publish,FRM_is_system,FRM_is_discard,FRM_is_rule,FRM_view_col,FRM_is_private,FRM_print_template,FRM_is_hierarchy,FRM_chk_repeat,FRM_allow_batch,FRM_add_continue,FRM_is_single,FRM_all_show_master,FRM_pre_new_js,FRM_pre_edit_js,FRM_end_new_js,FRM_end_edit_js,FRM_edit_submit_js,FRM_new_submit_js,FRM_pub_js,FRM_search_scope,FRM_supper_manager 
Dim 	FRM_is_owner,FRM_depend_master 

object_id = req("id")

sqlString = "select * from mu_object where archive='F' and owner='"& session("customerNo") &"' and object_id=" & object_id 
executeQuery conn,movaRS,sqlString,1,1
if movaRS.bof or movaRS.eof then
movaRS.close
msgbox "记录不存在，或者您打开了一个错误的页面","/movaOpps/opp/object/object.asp?1=1"
end if 
 
 		FRM_object_id = movaRS("object_id")
		FRM_table_name = movaRS("table_name")
		FRM_object_name = movaRS("object_name")
		FRM_is_seat = movaRS("is_seat")
		FRM_is_locked = movaRS("is_locked")
		FRM_is_publish = movaRS("is_publish")
		FRM_is_system = movaRS("is_system")
		FRM_is_discard = movaRS("is_discard")
		FRM_is_rule= movaRS("is_rule")
		FRM_view_col =movaRS("view_col")
		FRM_is_private = movaRS("is_private")
		FRM_print_template = movaRS("print_template")
		FRM_is_hierarchy = movaRS("is_hierarchy")
		FRM_chk_repeat = movaRS("chk_repeat")
 		FRM_allow_batch = movaRS("allow_batch")
 		FRM_add_continue = movaRS("add_continue")
 		FRM_is_single=movaRS("is_single")
 		FRM_all_show_master = movaRS("all_show_master")
 		FRM_pre_new_js  = decode_SQL2HTML(movaRS("pre_new_js"))
 		FRM_pre_edit_js = decode_SQL2HTML(movaRS("pre_edit_js"))
 		FRM_end_new_js = decode_SQL2HTML(movaRS("end_new_js"))
 		FRM_end_edit_js = decode_SQL2HTML(movaRS("end_edit_js"))
 		FRM_edit_submit_js = decode_SQL2HTML(movaRS("edit_submit_js"))
 		FRM_new_submit_js = decode_SQL2HTML(movaRS("new_submit_js"))
 		FRM_pub_js = decode_SQL2HTML(movaRS("pub_js"))
 		FRM_search_scope = movaRS("search_scope")
 		FRM_supper_manager = movaRS("supper_manager")
 		FRM_show_no = movaRS("show_no")
 		
 		FRM_template_field = movaRS("template_field")
 		FRM_template_define = movaRS("template_define")
 		
 		
 		FRM_is_owner = movaRS("is_owner")
 		FRM_depend_master = movaRS("depend_master")
%>
<script>
	function chk()
	{
		var str;
		str="";
		 
		return showInputError(str);
	}
</script> 
<div class="cn_list_title">"<font color=red><%=FRM_object_name%></font>"定义，<a href="object.asp">返回模型列表</a>
	，<%if chkAccount("modulFList") then %><a href="objectField.asp?object_id=<%=object_id%>">查看<%=FRM_object_name%>字段列表</a>
	，<a href="dataDict.asp?object_id=<%=object_id%>" target="_blank" title="新窗口查看">数据字典</a>
	<%end if %>	
</div>
<DIV class=cn_col01><FORM id=form method=post name="listModelx" action=object_.asp>
<TABLE border=0 cellSpacing=1 cellPadding=0>
		<input type="hidden" name="object_id" value="<%=FRM_object_id%>">
		<input type="hidden" name="del" value="F">
		<input type="hidden" name="editType" value="ADV">
  <TBODY>
   
    <tr>
    		<td class=cn_td09 align=right><span class="cn_font02">*</span>业务模型名称:</td>
    		<td><input class=cn_input03 type="text" size="20" name="object_name" value="<%=FRM_object_name%>">
    			业务模型表：<%=FRM_table_name%>，<%if FRM_is_single="T" then %> 单一表<%else%>客户相关表<%end if %>
    			</td>
    </tr>
    <tr><td class=cn_td09 align=right>超级管理角色:</td>
	  		<td><input type=text class=cn_input03 name="supper_manager" value="<%=FRM_supper_manager%>" >
	  			输入角色代码,以逗号隔开.所涉及的角色可以跳过所有约束更改所有的字段
	  		</td>
	  </tr>
	  
	  <tr>
	  	<td class=cn_td09 align=right>编辑列数:</td>
	  	<td><select name="view_col">
  	  					<%=cachePicklist("#shuzi",FRM_view_col)%>
  	  				</select>
	  	</td>
	  </tr>
	  
	  <tr><td class=cn_td09 align=right>是否默认列表显示编号:</td>
	  		<td><select name="show_no">
  	  					<%=cachePicklist("#isNo",FRM_show_no)%>
  	  				</select>
	  		</td>
	  </tr>
	  <tr><td class=cn_td09 align=right>是否发布:</td>
	  		<td><select name="is_publish">
  	  					<%=cachePicklist("#isNo",FRM_is_publish)%>
  	  				</select>
	  		</td>
	  </tr>
	 <tr><td class=cn_td09 align=right>默认可查询范围:</td>
	  		<td><select name="search_scope">
  	  					<%=cachePicklist("#search_scope",FRM_search_scope)%>
  	  				</select>
	  		</td>
	  </tr>
	  <tr><td class=cn_td09 align=right>支持级联对象:</td>
	  		<td><select name="is_hierarchy">
  	  					<%=cachePicklist("#isNo",FRM_is_hierarchy)%>
  	  				</select>
	  		</td>
	  </tr>
	  <%if FRM_is_single<>"T" then %>
	  <tr>
	  	<td class=cn_td09 align=right>依据主表禁止添删改:</td>
	  	<td> <input type=text style="width:100%" class=cn_input03 name="depend_master" value="<%=FRM_depend_master%>" ><br>
	  		输入格式"[字段代码]^[值]^[N|M|D]" 逗号分隔，依赖主表某字段来决定当前从表是否可以添删改
	  	</td>
	  </tr>
	 
	  <%end if %>
	   <tr>
	  	<td class=cn_td09 align=right>开启自己创建自己编辑:</td>
	  	<td>
	  		<select name="is_owner">
					<%=cachePicklist("#isNo",FRM_is_owner)%>
  	  	</select>
  	  				开启该功能后，只有自己创建的记录，自己才能修改 和删除。
	  	</td>
	  </tr>
	  
	  <tr>
	  	<td class=cn_td09 align=right>视图模板依赖字段:</td>
	  	<td><input type=text size=30 class=cn_input03 name="template_field" value="<%=FRM_template_field%>" >
	  	</td>
	  </tr>
	  <tr>
	  	<td class=cn_td09 align=right>视图模板定义:</td>
	  	<td>
	  		<textarea  name="template_define"   cols="100" rows="5" id="template_define"><%=FRM_template_define%></textarea>
	  		<br>
	  		格式：字段值1^|字段名1|字段名2|^|子对象id|子对象|,字段值2^|字段名1|字段名2|^|子对象id|子对象|
	  		<br>字段名，和对象均为需隐藏的
	  	</td>
	  </tr>
	   



	  
	  <tr><td class=cn_td09 align=right>打印模板:</td>
	  		<td>
	  			<input class=cn_input03 type="text" value="<%=FRM_print_template%>" name="print_template">
	  			<BUTTON class=cn_button01 type=button onClick="this.form.print_template.value=''" >不需要打印</button>
	  			 <% if FRM_print_template<>"" then %>
	  			 &nbsp;&nbsp;&nbsp;<a href="/movaOpps/opp/report/template/<%=FRM_print_template%>" target="_blank">预览</a>
	  			<% end if %>
	  		</td>
	  </tr>
	  <input type="hidden" name="is_rule" value="F"> 
	  <% if FRM_is_rule="T" then %>
	  	<tr><td class=cn_td09 align=right>(业务规则)私有数据保护:</td>
	  		<td><select name="is_private">
  	  					<%=cachePicklist("#isNo",FRM_is_private)%>
  	  				</select>&nbsp;&nbsp;启动这个选项后，业务数据的录入人只能修改、删除自己录入的记录。
	  		</td>
	  	</tr>
	  <% end if %>
	  
	  <tr><td class=cn_td09 align=right>数据重复检验字段:</td>
	  		<td><select name="chk_repeat">
								<option value=""></option>
  	  					<%=getObjectFieldPicklist(FRM_object_id,FRM_chk_repeat)%>
  	  				</select>&nbsp;&nbsp;选择的字段将作为数据创建时重复检验的字段
	  		</td>
	  	</tr>
	  	
	  	<tr><td class=cn_td09 align=right>是否允许批量操作:</td>
	  		<td><select name="allow_batch">
  	  					<%=cachePicklist("#isNo",FRM_allow_batch)%>
  	  				</select>&nbsp;&nbsp;允许在对象数据列表时进行批量更新操作。
	  		</td>
	  	</tr>
	  	<tr><td class=cn_td09 align=right>是否连续录入:</td>
	  		<td><select name="add_continue">
  	  					<%=cachePicklist("#isNo",FRM_add_continue)%>
  	  				</select>&nbsp;&nbsp;如果选择连续录入，则在添加数据成功后，自动进入下一个信息的录入界面
	  		</td>
	  	</tr>
	  	<%if FRM_is_single="F" then %>
	  	<tr><td class=cn_td09 align=right>是否显示主数据信息:</td>
	  		<td><select name="all_show_master">
  	  					<%=cachePicklist("#isNo",FRM_all_show_master)%>
  	  				</select>&nbsp;&nbsp;如果选择是，则会在模型数据添加编辑时，显示相应主数据字段信息　
	  		</td>
	  	</tr>
	  	<%end if %> 
	  	 
	   
	  		<tr><td class=cn_td09 align=right>公共JS脚本:</td>
	  		<td>此处不可使用以下标签：{字段编码},{@字段编码}<br><textarea  name="pub_js"   cols="100" rows="5" id="pub_js"><%=FRM_pub_js%></textarea>
	  		</td>
	  	</tr>
	  	
	  	
	  
	  
	  		<tr><td class=cn_td09 align=right>新增时前置JS脚本:</td>
	  		<td>此处不可使用以下标签：{字段编码},{@字段编码}<br><textarea  name="pre_new_js"   cols="100" rows="5" id="pre_new_js"><%=FRM_pre_new_js%></textarea>
	  		</td>
	  	</tr>
	 
	  		<tr><td class=cn_td09 align=right>新增时后置JS脚本:</td>
	  		<td><textarea  name="end_new_js"   cols="100" rows="5" id="end_new_js"><%=FRM_end_new_js%></textarea>        
	  		</td>
	  	</tr>
	  	<tr><td class=cn_td09 align=right>新增提交前JS脚本:</td>
	  		<td><textarea  name="new_submit_js"   cols="100" rows="5" id="new_submit_js"><%=FRM_new_submit_js%></textarea>        
	  		</td>
	  	</tr>
	  	
 
	  		<tr><td class=cn_td09 align=right>编辑时前置JS脚本:</td>
	  		<td>此处不可使用以下标签：{字段编码},{@字段编码}<br><textarea  name="pre_edit_js" id="pre_edit_js" cols="100" rows="5" ><%=FRM_pre_edit_js%></textarea>        
	  		</td>
	  	</tr>
	  
	  		<tr><td class=cn_td09 align=right>编辑时后置JS脚本:</td>
	  		<td><textarea  name="end_edit_js" cols="100" rows="5"  id="end_edit_js"><%=FRM_end_edit_js%></textarea>        
	  		</td>
	  	</tr>
	  	<tr><td class=cn_td09 align=right>编辑提交前JS脚本:</td>
	  		<td><textarea  name="edit_submit_js"   cols="100" rows="5" id="edit_submit_js"><%=FRM_edit_submit_js%></textarea>        
	  		</td>
	  	</tr>
	
	
	 
	  <tr> 
	  	<td colspan=2>
	  			<%if chkAccount("modulEdit") then %><BUTTON class=cn_button01 type=submit >保存</button>	<BUTTON class=cn_button01 type=reset >重置</button>	<%end if %>
	  	</td>
		</tr>
		<Tr>
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
<%if FRM_is_single="F" and FRM_all_show_master="T" then %>
<div class="cn_list_title">编辑时，主界面关联字段显示</div>
<DIV class=cn_col>
	<TABLE border=0 cellSpacing=1 cellPadding=0>
  <THEAD> 
		<TR>
			<TH>字段选择</TH>
			<TH>排序</TH>
			<TH>操作</TH>
   </TR>
</tr>	
</THEAD>
<TBODY>
	 
	<FORM id=form method=post name="masterForm" action="object_master_field_.asp">
		<input type="hidden" name="object_id" value="<%=FRM_object_id%>">
		<input type="hidden" name="archive" value="F">
		<input type="hidden" name="object" value="mu_object_master_field" >
		<input type="hidden" name="mu_object_master_field_id" value="" >
  	<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
 		 	<td>
 		 		<select name="field_id">
 		 			<option value=""></option>
 		 			<%=getObjectFieldIDPicklist(getJoinObjectId(FRM_object_id,""),"")%>
 		 		</select>
 		 	</td>
 		 	<td>
 		 		<input type="text" class=cn_input03 name="sort_no" value="999">
 		 	</td>
 			<td>
 					<%if chkAccount("modulEdit") then %><BUTTON  class=cn_button06  type=submit >新增保存</button> <%end if %>
 			</td>
 		</tr>
 	</form>
 	<%
 	sqlString="select * from mu_object_master_field where object_id="& FRM_object_id &" and archive='F' order by sort_no "
 			condition = ""
 			securitySQL = ""
 			order =  "" 
 			
 			 
			sqlString=sqlString & condition & securitySQL &  order 
			 
			executeQuery conn,movaRS,sqlString, 1, 1
			do 
				if movaRS.eof or movaRS.bof then exit do
				FRM_mu_object_master_field_id = movaRS("mu_object_master_field_id")
				FRM_field_id = movaRS("field_id")
				
				FRM_sort_no = movaRS("sort_no")
				movaRS.moveNext
%>
	<FORM id=form method=post name="masterForm<%=FRM_mu_object_master_field_id%>" action="object_master_field_.asp">
		<input type="hidden" name="object_id" value="<%=FRM_object_id%>">
		<input type="hidden" name="archive" value="F">
		<input type="hidden" name="object" value="mu_object_master_field" >
		<input type="hidden" name="mu_object_master_field_id" value="<%=FRM_mu_object_master_field_id%>" >
  	<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
 		 	<td>
 		 		<select name="field_id">
 		 			<option value=""></option>
 		 			<%=getObjectFieldIDPicklist(getJoinObjectId(FRM_object_id,""),FRM_field_id)%>
 		 		</select>
 		 	</td>
 		 	<td>
 		 		<input type="text" class=cn_input03 name="sort_no"  value="<%=FRM_sort_no%>">
 		 	</td>
 			<td>
 					<%if chkAccount("modulEdit") then %>
 					<BUTTON class=cn_button01 type=submit >保存</button> 
 					<button class=cn_button01  type="submit" onClick="this.form.archive.value='T';return confirmDel(this.form)">删除</button>
 					
 					<%end if %>
 			</td>
 		</tr>
 	</form>
<%				
			loop
			movaRS.close
%>
</tbody>
</table>
</div>
<%end if %>
 
<form action="../upload/UpLoadForm.asp?action=save" method=post name=myform enctype="multipart/form-data">
<input type="hidden" name="object_id" value="<%=FRM_object_id%>">
<div class="cn_list_title">打印模板</div>
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
  <tr>
  		<td class=cn_td09 align=right>模板文件:</td>
	  	<td><input class=cn_input03 type=file name=uploadfile size=40  >&nbsp; 
	  		<%if chkAccount("modulEdit") then %><BUTTON class=cn_button01 type=submit onClick="return chk(this.form)">上传</button><%end if %>
	  		必须选择一个扩展名为.HTM文件
	  		</td>
	</tr>
	
	<tr>
	  	<td colspan="2">
	  		<ul>模板制作的方法:
	  			<li>1)&nbsp;根据您所需要的打印格式，新增一个Word文件。</li>
	  			<li>2)&nbsp;将word文件另存为".htm"格式的文件，建议使用Microsoft Office 2003 进行操作</li>
	  			<li>3)&nbsp;使用 记事本 ，在文本方式下将需要填充的内容用标签 <b>{字段名称}</b> 代替。</li>
	  			<li>4)&nbsp;使用标签 <b>{~字段名称}</b> 引用其所关联的数据项（通常是客户信息项）</li>
	  			<li>5)&nbsp;特殊标签:<br>
	  				&nbsp;&nbsp; <b>{^CURRENTTIME}</b> 引用打印时的当前时间<br>
	  				&nbsp;&nbsp; <b>{^NO}</b> 引用编号<br>
	  				&nbsp;&nbsp; <b>{^CREATEDATE}</b> 引用记录创建时间<br>
	  				&nbsp;&nbsp; <b>{^MODIFYDATE}</b> 引用记录最后修改时间<br>
	  			</li>
	  			<li>6)&nbsp;保存文件，并将此文件上传即可。</li>
	  			
	  		</ul>
	  	</td>
	</tr>
</table>
</div>
</form>
<script>
function chk(form){
		var str;
		str="";
		if (form.uploadfile.value==""){
			str = str + "必须选择一个文件";
		}
		return showInputError(str);
}
 
	
</script>
 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
 