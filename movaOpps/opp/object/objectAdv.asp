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
msgbox "��¼�����ڣ�����������һ�������ҳ��","/movaOpps/opp/object/object.asp?1=1"
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
<div class="cn_list_title">"<font color=red><%=FRM_object_name%></font>"���壬<a href="object.asp">����ģ���б�</a>
	��<%if chkAccount("modulFList") then %><a href="objectField.asp?object_id=<%=object_id%>">�鿴<%=FRM_object_name%>�ֶ��б�</a>
	��<a href="dataDict.asp?object_id=<%=object_id%>" target="_blank" title="�´��ڲ鿴">�����ֵ�</a>
	<%end if %>	
</div>
<DIV class=cn_col01><FORM id=form method=post name="listModelx" action=object_.asp>
<TABLE border=0 cellSpacing=1 cellPadding=0>
		<input type="hidden" name="object_id" value="<%=FRM_object_id%>">
		<input type="hidden" name="del" value="F">
		<input type="hidden" name="editType" value="ADV">
  <TBODY>
   
    <tr>
    		<td class=cn_td09 align=right><span class="cn_font02">*</span>ҵ��ģ������:</td>
    		<td><input class=cn_input03 type="text" size="20" name="object_name" value="<%=FRM_object_name%>">
    			ҵ��ģ�ͱ�<%=FRM_table_name%>��<%if FRM_is_single="T" then %> ��һ��<%else%>�ͻ���ر�<%end if %>
    			</td>
    </tr>
    <tr><td class=cn_td09 align=right>���������ɫ:</td>
	  		<td><input type=text class=cn_input03 name="supper_manager" value="<%=FRM_supper_manager%>" >
	  			�����ɫ����,�Զ��Ÿ���.���漰�Ľ�ɫ������������Լ���������е��ֶ�
	  		</td>
	  </tr>
	  
	  <tr>
	  	<td class=cn_td09 align=right>�༭����:</td>
	  	<td><select name="view_col">
  	  					<%=cachePicklist("#shuzi",FRM_view_col)%>
  	  				</select>
	  	</td>
	  </tr>
	  
	  <tr><td class=cn_td09 align=right>�Ƿ�Ĭ���б���ʾ���:</td>
	  		<td><select name="show_no">
  	  					<%=cachePicklist("#isNo",FRM_show_no)%>
  	  				</select>
	  		</td>
	  </tr>
	  <tr><td class=cn_td09 align=right>�Ƿ񷢲�:</td>
	  		<td><select name="is_publish">
  	  					<%=cachePicklist("#isNo",FRM_is_publish)%>
  	  				</select>
	  		</td>
	  </tr>
	 <tr><td class=cn_td09 align=right>Ĭ�Ͽɲ�ѯ��Χ:</td>
	  		<td><select name="search_scope">
  	  					<%=cachePicklist("#search_scope",FRM_search_scope)%>
  	  				</select>
	  		</td>
	  </tr>
	  <tr><td class=cn_td09 align=right>֧�ּ�������:</td>
	  		<td><select name="is_hierarchy">
  	  					<%=cachePicklist("#isNo",FRM_is_hierarchy)%>
  	  				</select>
	  		</td>
	  </tr>
	  <%if FRM_is_single<>"T" then %>
	  <tr>
	  	<td class=cn_td09 align=right>���������ֹ��ɾ��:</td>
	  	<td> <input type=text style="width:100%" class=cn_input03 name="depend_master" value="<%=FRM_depend_master%>" ><br>
	  		�����ʽ"[�ֶδ���]^[ֵ]^[N|M|D]" ���ŷָ�����������ĳ�ֶ���������ǰ�ӱ��Ƿ������ɾ��
	  	</td>
	  </tr>
	 
	  <%end if %>
	   <tr>
	  	<td class=cn_td09 align=right>�����Լ������Լ��༭:</td>
	  	<td>
	  		<select name="is_owner">
					<%=cachePicklist("#isNo",FRM_is_owner)%>
  	  	</select>
  	  				�����ù��ܺ�ֻ���Լ������ļ�¼���Լ������޸� ��ɾ����
	  	</td>
	  </tr>
	  
	  <tr>
	  	<td class=cn_td09 align=right>��ͼģ�������ֶ�:</td>
	  	<td><input type=text size=30 class=cn_input03 name="template_field" value="<%=FRM_template_field%>" >
	  	</td>
	  </tr>
	  <tr>
	  	<td class=cn_td09 align=right>��ͼģ�嶨��:</td>
	  	<td>
	  		<textarea  name="template_define"   cols="100" rows="5" id="template_define"><%=FRM_template_define%></textarea>
	  		<br>
	  		��ʽ���ֶ�ֵ1^|�ֶ���1|�ֶ���2|^|�Ӷ���id|�Ӷ���|,�ֶ�ֵ2^|�ֶ���1|�ֶ���2|^|�Ӷ���id|�Ӷ���|
	  		<br>�ֶ������Ͷ����Ϊ�����ص�
	  	</td>
	  </tr>
	   



	  
	  <tr><td class=cn_td09 align=right>��ӡģ��:</td>
	  		<td>
	  			<input class=cn_input03 type="text" value="<%=FRM_print_template%>" name="print_template">
	  			<BUTTON class=cn_button01 type=button onClick="this.form.print_template.value=''" >����Ҫ��ӡ</button>
	  			 <% if FRM_print_template<>"" then %>
	  			 &nbsp;&nbsp;&nbsp;<a href="/movaOpps/opp/report/template/<%=FRM_print_template%>" target="_blank">Ԥ��</a>
	  			<% end if %>
	  		</td>
	  </tr>
	  <input type="hidden" name="is_rule" value="F"> 
	  <% if FRM_is_rule="T" then %>
	  	<tr><td class=cn_td09 align=right>(ҵ�����)˽�����ݱ���:</td>
	  		<td><select name="is_private">
  	  					<%=cachePicklist("#isNo",FRM_is_private)%>
  	  				</select>&nbsp;&nbsp;�������ѡ���ҵ�����ݵ�¼����ֻ���޸ġ�ɾ���Լ�¼��ļ�¼��
	  		</td>
	  	</tr>
	  <% end if %>
	  
	  <tr><td class=cn_td09 align=right>�����ظ������ֶ�:</td>
	  		<td><select name="chk_repeat">
								<option value=""></option>
  	  					<%=getObjectFieldPicklist(FRM_object_id,FRM_chk_repeat)%>
  	  				</select>&nbsp;&nbsp;ѡ����ֶν���Ϊ���ݴ���ʱ�ظ�������ֶ�
	  		</td>
	  	</tr>
	  	
	  	<tr><td class=cn_td09 align=right>�Ƿ�������������:</td>
	  		<td><select name="allow_batch">
  	  					<%=cachePicklist("#isNo",FRM_allow_batch)%>
  	  				</select>&nbsp;&nbsp;�����ڶ��������б�ʱ�����������²�����
	  		</td>
	  	</tr>
	  	<tr><td class=cn_td09 align=right>�Ƿ�����¼��:</td>
	  		<td><select name="add_continue">
  	  					<%=cachePicklist("#isNo",FRM_add_continue)%>
  	  				</select>&nbsp;&nbsp;���ѡ������¼�룬����������ݳɹ����Զ�������һ����Ϣ��¼�����
	  		</td>
	  	</tr>
	  	<%if FRM_is_single="F" then %>
	  	<tr><td class=cn_td09 align=right>�Ƿ���ʾ��������Ϣ:</td>
	  		<td><select name="all_show_master">
  	  					<%=cachePicklist("#isNo",FRM_all_show_master)%>
  	  				</select>&nbsp;&nbsp;���ѡ���ǣ������ģ��������ӱ༭ʱ����ʾ��Ӧ�������ֶ���Ϣ��
	  		</td>
	  	</tr>
	  	<%end if %> 
	  	 
	   
	  		<tr><td class=cn_td09 align=right>����JS�ű�:</td>
	  		<td>�˴�����ʹ�����±�ǩ��{�ֶα���},{@�ֶα���}<br><textarea  name="pub_js"   cols="100" rows="5" id="pub_js"><%=FRM_pub_js%></textarea>
	  		</td>
	  	</tr>
	  	
	  	
	  
	  
	  		<tr><td class=cn_td09 align=right>����ʱǰ��JS�ű�:</td>
	  		<td>�˴�����ʹ�����±�ǩ��{�ֶα���},{@�ֶα���}<br><textarea  name="pre_new_js"   cols="100" rows="5" id="pre_new_js"><%=FRM_pre_new_js%></textarea>
	  		</td>
	  	</tr>
	 
	  		<tr><td class=cn_td09 align=right>����ʱ����JS�ű�:</td>
	  		<td><textarea  name="end_new_js"   cols="100" rows="5" id="end_new_js"><%=FRM_end_new_js%></textarea>        
	  		</td>
	  	</tr>
	  	<tr><td class=cn_td09 align=right>�����ύǰJS�ű�:</td>
	  		<td><textarea  name="new_submit_js"   cols="100" rows="5" id="new_submit_js"><%=FRM_new_submit_js%></textarea>        
	  		</td>
	  	</tr>
	  	
 
	  		<tr><td class=cn_td09 align=right>�༭ʱǰ��JS�ű�:</td>
	  		<td>�˴�����ʹ�����±�ǩ��{�ֶα���},{@�ֶα���}<br><textarea  name="pre_edit_js" id="pre_edit_js" cols="100" rows="5" ><%=FRM_pre_edit_js%></textarea>        
	  		</td>
	  	</tr>
	  
	  		<tr><td class=cn_td09 align=right>�༭ʱ����JS�ű�:</td>
	  		<td><textarea  name="end_edit_js" cols="100" rows="5"  id="end_edit_js"><%=FRM_end_edit_js%></textarea>        
	  		</td>
	  	</tr>
	  	<tr><td class=cn_td09 align=right>�༭�ύǰJS�ű�:</td>
	  		<td><textarea  name="edit_submit_js"   cols="100" rows="5" id="edit_submit_js"><%=FRM_edit_submit_js%></textarea>        
	  		</td>
	  	</tr>
	
	
	 
	  <tr> 
	  	<td colspan=2>
	  			<%if chkAccount("modulEdit") then %><BUTTON class=cn_button01 type=submit >����</button>	<BUTTON class=cn_button01 type=reset >����</button>	<%end if %>
	  	</td>
		</tr>
		<Tr>
			<td colspan=2">
				<ul>JS�ű�˵��:
	  			<li>1)&nbsp;ǰ��JS�ű�����Ӧ������ҳ����ʾǰִ��</li>
	  			<li>2)&nbsp;����JS�ű�����Ӧ������ҳ����ʾ��ִ��</li>
	  			<li>3)&nbsp;����ʹ�����±�ǩ��ʽ��ȡ��Ӧ���ֶ���Ϣ</li>
	  			<li>&nbsp;&nbsp;<b>{!�ֶα���}</b>&nbsp;&nbsp;&nbsp;���õ�ǰģ�͸��ֶεı�������Ӧ�ı��������ģ���ֶ��б��һ��<br>
	  			    &nbsp;&nbsp;<b>{!@�ֶα���}</b>&nbsp;&nbsp;&nbsp;���õ�ǰģ�͸��ֶε�ֵ<br>
	  				  &nbsp;&nbsp;<b>{~�ֶα���}</b>&nbsp;&nbsp;&nbsp;���ù���ģ�͸��ֶεı�������Ӧ�ı��������ģ���ֶ��б��һ��<br>
	  				  &nbsp;&nbsp;<b>{~@�ֶα���}</b>&nbsp;&nbsp;&nbsp;���ù���ģ�͸��ֶε�ֵ<br>
	  				  &nbsp;&nbsp;<b>{!@TEAM}</b>&nbsp;&nbsp;&nbsp;���õ�ǰģ�͵�����Teamֵ,ֵΪ�����ַ����뵽���б���в���<br>
	  				  &nbsp;&nbsp;<b>{^^TEAM}</b>&nbsp;&nbsp;&nbsp;���õ�ǰ�����û���Teamֵ,ֵΪ�����ַ����뵽���б���в���<br>
	  				  &nbsp;&nbsp;<b>{!@OBJECTID}</b>&nbsp;&nbsp;&nbsp;���õ�ǰģ�͵�ID,ֵΪ�����ַ����뵽ҵ��ģ���б���в���<br>
	  				  &nbsp;&nbsp;<b>{~@OBJECTID}</b>&nbsp;&nbsp;&nbsp;���ù���ģ�͵�ID,ֵΪ�����ַ����뵽ҵ��ģ���б���в���<br>
	  			</li>
	  			<li>4)&nbsp;����JS����:</li>
	  				<li>&nbsp;&nbsp;getValue("����") &nbsp;&nbsp;:&nbsp;&nbsp; ��ȡ�ַ��͵ı�ֵ</li>
	  				<li>&nbsp;&nbsp;setInt("����") &nbsp;&nbsp;:&nbsp;&nbsp; ��ȡ��ֵ�͵ı�ֵ</li>
	  				<li>&nbsp;&nbsp;setValue("����","ֵ") &nbsp;&nbsp;:&nbsp;&nbsp; ���ñ���ֵ</li>
	  				<li>&nbsp;&nbsp;getCurrentDatetime("��ʽ") &nbsp;&nbsp;:&nbsp;&nbsp; ��ȡ��ǰ��ʱ�� YYYY-MM-D H:M:S ,YYYY-H-D h:m:s</li>
	  			</li>
	  		</ul>
			</td>
		</tr>

  </TBODY></TABLE></FORM>
</div>
<%if FRM_is_single="F" and FRM_all_show_master="T" then %>
<div class="cn_list_title">�༭ʱ������������ֶ���ʾ</div>
<DIV class=cn_col>
	<TABLE border=0 cellSpacing=1 cellPadding=0>
  <THEAD> 
		<TR>
			<TH>�ֶ�ѡ��</TH>
			<TH>����</TH>
			<TH>����</TH>
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
 					<%if chkAccount("modulEdit") then %><BUTTON  class=cn_button06  type=submit >��������</button> <%end if %>
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
 					<BUTTON class=cn_button01 type=submit >����</button> 
 					<button class=cn_button01  type="submit" onClick="this.form.archive.value='T';return confirmDel(this.form)">ɾ��</button>
 					
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
<div class="cn_list_title">��ӡģ��</div>
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
  <tr>
  		<td class=cn_td09 align=right>ģ���ļ�:</td>
	  	<td><input class=cn_input03 type=file name=uploadfile size=40  >&nbsp; 
	  		<%if chkAccount("modulEdit") then %><BUTTON class=cn_button01 type=submit onClick="return chk(this.form)">�ϴ�</button><%end if %>
	  		����ѡ��һ����չ��Ϊ.HTM�ļ�
	  		</td>
	</tr>
	
	<tr>
	  	<td colspan="2">
	  		<ul>ģ�������ķ���:
	  			<li>1)&nbsp;����������Ҫ�Ĵ�ӡ��ʽ������һ��Word�ļ���</li>
	  			<li>2)&nbsp;��word�ļ����Ϊ".htm"��ʽ���ļ�������ʹ��Microsoft Office 2003 ���в���</li>
	  			<li>3)&nbsp;ʹ�� ���±� �����ı���ʽ�½���Ҫ���������ñ�ǩ <b>{�ֶ�����}</b> ���档</li>
	  			<li>4)&nbsp;ʹ�ñ�ǩ <b>{~�ֶ�����}</b> �������������������ͨ���ǿͻ���Ϣ�</li>
	  			<li>5)&nbsp;�����ǩ:<br>
	  				&nbsp;&nbsp; <b>{^CURRENTTIME}</b> ���ô�ӡʱ�ĵ�ǰʱ��<br>
	  				&nbsp;&nbsp; <b>{^NO}</b> ���ñ��<br>
	  				&nbsp;&nbsp; <b>{^CREATEDATE}</b> ���ü�¼����ʱ��<br>
	  				&nbsp;&nbsp; <b>{^MODIFYDATE}</b> ���ü�¼����޸�ʱ��<br>
	  			</li>
	  			<li>6)&nbsp;�����ļ����������ļ��ϴ����ɡ�</li>
	  			
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
			str = str + "����ѡ��һ���ļ�";
		}
		return showInputError(str);
}
 
	
</script>
 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
 