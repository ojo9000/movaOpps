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
				"ȷ��": function() {
					setField();
					
				},
				"���": function() {
					tmpFrom.field_code.value = "";
					tmpFrom.field_name.value ="";
					$( this ).dialog( "close" );
				},
				"ȡ��": function() {
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
msgbox "��¼�����ڣ�����������һ�������ҳ��",1
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
		return confirm("ȷ����Ҫɾ����");
	}
	
	
</script> 
<div class="cn_list_title">"<%=FRM_field_name%>"�ֶζ��壬<a href="objectAdv.asp?id=<%=object_id%>">���ص�ǰҵ��ģ��</a>
	��<a href="objectField.asp?object_id=<%=FRM_object_id%>">�����ֶ��б�</a>��<a href="dataDict.asp?object_id=<%=object_id%>" target="_blank" title="�´��ڲ鿴">�����ֵ�</a></div> 
<DIV class=cn_col01>
<FORM id=form method=post name="listModel" action=field_.asp>
<TABLE border=0 cellSpacing=1 cellPadding=0>
		<input type="hidden" name="field_id" value="<%=FRM_field_id%>">
		<input type="hidden" name="object_id" value="<%=FRM_object_id%>">
		<input type="hidden" name="old_field_type" value="<%=FRM_field_type%>">
		<input type="hidden" name="del" value="F">
  <TBODY>
    <tr>
    		<td class=cn_td09 align=right><span class="cn_font02">*</span>����:</td>
    		<td><input class=cn_input03 type="text" size="15" name="field_name" value="<%=FRM_field_name%>"></td>
    </tr>
	  <tr>
	  		<td class=cn_td09 align=right><span class="cn_font02">*</span>�ֶ�����:</td>
	  		<td><select name="field_type">
  	  					<%=cachePicklist(recordType,FRM_field_type)%>
						</select>
  	  	</td>
	  </tr>
	   <tr>
	  	<td class=cn_td09 align=right><span class="cn_font02">*</span>����:</td>
	  	<td><select name="is_forbidden">
  	  					<%=cachePicklist("#isNo",FRM_is_forbidden)%>
					</select>�ֶ���������ã�����ֶβ������κν�����ʾ���൱�ڸ��ֶα������ݣ��������á�
	  	</td>
	  </tr>
	   
	  <tr>
	  	<td class=cn_td09 align=right><span class="cn_font02">*</span>����:</td>
	  	<td><select name="is_required">
  	  					<%=cachePicklist("#isNo",FRM_is_required)%>
					</select>
	  	</td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>(���):</td>
	  		<td><select name="is_new">
  	  					<%=cachePicklist("#isNo",FRM_is_new)%>
  	  				</select> 
	  		</td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>(�༭):</td>
	  		<td><select name="is_edit">
  	  					<%=cachePicklist("#isNo",FRM_is_edit)%>
  	  				</select> 
	  		</td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>(�б�):</td>
	  		<td><select name="is_list">
  	  					<%=cachePicklist("#isNo",FRM_is_list)%>
  	  				</select> 
	  		</td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>(��ѯ):</td>
	  		<td><select name="is_search">
  	  					<%=cachePicklist("#isNo",FRM_is_search)%>
  	  				</select> 
	  		</td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>������:</td>
	  		<td><input class=cn_input03 type="text" size="2" name="col_span" value="<%=FRM_col_span%>"></td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>�п�:</td>
	  		<td><input class=cn_input03  type="text" size="2" name="width" value="<%=FRM_width%>"></td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>�и�:</td>
	  		<td><input class=cn_input03  type="text" size="2" name="high" value="<%=FRM_high%>"></td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>��������:</td>
	  		<td><select name="search_type">
  	  					<option value=""></option>
  	  					<%=cachePicklist("#condition_type",FRM_search_type)%>
  	  				</select>
  	  				�����������Ϊ�����ڡ� ���� ���ֶ�������ѯ��ϵͳ���ṩ���ֶεĹ�����ѯ���б�����ֶ�ֵ��ͬ�����м�¼
  	  	</td>
		</tr>
		<tr><td class=cn_td09 align=right><span class="cn_font02">*</span>�༭����:</td>
				<td><input class=cn_input03 type="text" size="3" name="sort_edit" value="<%=FRM_sort_edit%>"></td>
		</tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>�б�����:</td>
	  		<td><input class=cn_input03 type="text" size="3" name="sort_list" value="<%=FRM_sort_list%>"></td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>�Ƿ�Ϊ���ı�:</td>
	  		<td><select name="is_richText">
  	  					<%=cachePicklist("#isNo",FRM_is_richText)%>
  	  				</select>�����ֶ�����Ϊ���ı�ʱ��Ч��
	  		</td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>�Ƿ�Ϊ����:</td>
	  		<td><select name="is_attachment">
  	  					<%=cachePicklist("#isNo",FRM_is_attachment)%>
  	  				</select>�����ֶ�����Ϊ��ͨ�ı�ʱ��Ч��
	  		</td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>��ɫ������ʾ:</td>
	  		<td><input class=cn_input03 type="text" style="width:100%" name="hidden_by" value="<%=FRM_hidden_by%>"><br>
	  		��������Ҫ���صĽ�ɫ���룬�Զ��Ÿ��������ʾ��ָ���Ľ�ɫ�����ز���ʾ���������Ҫ������ʾ�����ֵ����Ϊ�ա�����*�����ʾ�����н�ɫ����
	  		</td>
	  </tr>
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>�ֶ�״̬������ʾ:</td>
	  		<td><input class=cn_input03 type="text" style="width:100%" name="hidden_by_field" value="<%=FRM_hidden_by_field%>"><br>
	  		��������Ҫ���ص��ֶδ��뼰ֵ����ʽ���£� ��VA^�д�����,VB^�Ѵ��� ��^�ָ��ֶ���ֵ ��һ���Զ��Ÿ�����
	  	 <br>��ʾ��ָ���ֶε�ָ��ֵ���ز���ʾ��
	  		</td>
	  </tr>
	 
	   <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>�����������:</td>
	  		<td><input class=cn_input03 type="text" style="width:100%" name="fk_select" value="<%=FRM_FK_select%>"><br>
	  		��ʽ�� select top 1 xx_value as <b>value</b> from xxTable where xx_id=<b>^id</b>
	  		</td>
	  </tr>
	   <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>������봰��:</td>
	  		<td><input class=cn_input03 type="text" style="width:100%" name="fk_window" value="<%=FRM_FK_window%>"><br>
	  		��ʽ��http://domain/?id=<b>^id</b>
	  		</td>
	  </tr>
	   
				
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>�Ƿ����������޸�:</td>
	  		<td>
	  			<select name="allow_batch">
  	  					<%=cachePicklist("#isNo",FRM_allow_batch)%>
  	  				</select>ֻ���ڸ�ҵ��������������޸�ʱ��Ч�������ѡ������ֶν��������޸Ĳ�����ֻ�����б�����ʾ���ֶβ��ܽ��������޸ġ�
	  		</td>
	  </tr>
	  
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>Ĭ��ֵ:</td>
	  		<td><input class=cn_input03 type="text" size="15" name="def_value" value="<%=FRM_def_value%>">
	  				�����Ҫ�趨ϵͳ�ڶ���Ĭ��ֵ����ѡ��<select name="def" onChange="this.form.def_value.value=this.value">
	  					<%=cachePicklist("#defValue",FRM_def_value )%>
	  				</select>
	  			
	  		</td>
	  </tr>
	  
	  <tr><td class=cn_td09 align=right><span class="cn_font02">*</span>�Ƿ������ֶ�:</td>
	  		<td>
	  			<select name="allow_recall">
  	  					<%=cachePicklist("#isNo",FRM_allow_recall)%>
  	  				</select>�����ֶΣ�����������ʱ����ʱ�����Լ���ǰһ����¼���ֶ�ֵ
	  		</td>
	  </tr>
  
		<tr>
			<td class=cn_td09 align=right>����ʱ�ֶ�ֻ��:</td>
	  		<td><input class=cn_input03 type="text" style="width:100%" name="new_read_only" value="<%=FRM_new_read_only%>">
  	  				������Ҫֻ���Ľ�ɫ���룬�Զ��Ÿ��������ʾ��ָ���Ľ�ɫֻ����ʾ���������Ҫֻ�������ֵ����Ϊ�ա�����*�����ʾ�����н�ɫֻ��
	  		</td>
	  </tr>
	  <tr>
			<td class=cn_td09 align=right>�༭ʱ�ֶ�ֻ��:</td>
	  		<td><input class=cn_input03 type="text" style="width:100%" name="edit_read_only" value="<%=FRM_edit_read_only%>">
  	  				������Ҫֻ���Ľ�ɫ���룬�Զ��Ÿ��������ʾ��ָ���Ľ�ɫֻ����ʾ���������Ҫֻ�������ֵ����Ϊ�ա� ����*�����ʾ�����н�ɫֻ��
	  		</td>
	  </tr>
		</tr>

	  <tr><td class=cn_td09 align=right>�Ƿ��¡��ʶ�ֶ�:</td>
	  		<td><select name="clone_by">
  	  					<%=cachePicklist("#isNo",FRM_clone_by)%>
  	  				</select>���Ϊ��¡��ʶ�ֶΣ���ô����ӻ��߱༭һ��ҵ������ʱ��ϵͳ����ݸ��ֶε�ֵ��ѯһ����ͬ�ֶ�ֵ��ҵ�����ݡ�������������"�����¡"���ֶ�ֵ������Ĭ�ϸ�ֵ��
	  		</td>
	  </tr>
	  <tr><td class=cn_td09 align=right>�Ƿ������¡:</td>
	  		<td><select name="allow_clone">
  	  					<%=cachePicklist("#isNo",FRM_allow_clone)%>
  	  				</select>
	  		</td>
	  </tr>
	  		<tr><td class=cn_td09 align=right>״̬����:</td>
	  		<td>�����ֶ�Ϊ״̬�ֶ�ʱ���趨����ʹ��ϵͳ���Ը����ֶ�ֵ��ȷ����Ӧ��״̬����������벻Ҫ����س�����  
	  			<br>һ��ģ��ֻ���趨һ���ֶ���Ϊ״̬�����������10��״̬��
	  			<br>ÿһ�б�ʾһ��״̬���Խ��еĲ������ұ�����"|"���Ž���
	  			<br>^��ʾ�ɽ������в�����״̬���� .()������
	  			<br>�����ڱ�ʾ�����ڸ�״̬ʱ������༭���ֶΡ����������Ϊ* ,���ʾ���������ֶα༭�������Ҫ������״̬����Ĭ��һ��ֵ
	  			<br>���ӣ�"��ȷ��(VR,VZ,VM)->^(),�Ѵ���(����),��ȡ��(ȡ��)|�Ѵ���(VA,VB,VC)->���տ�(�տ�ȷ��),��ת��(ת��),�ѳ���(����)|�ѳ���()->.()"
	  			
	  			<textarea  name="status_rule"  id="status_rule"  style="width:100%" rows="5" ><%=FRM_status_rule%></textarea>
	  			<input type="hidden" name="status_rule_bk" value="FRM_status_rule">
	  			<%if FRM_status_rule<>"" then %><input type="checkbox" name="resetSec" value="true">����ΪȨ�޵㡣����Ȩ�޵���ɾ����ǰ�����ɵ�Ȩ�޵�<%end if %>
	  		</td>
	  	</tr>
	 
	  		<tr><td class=cn_td09 align=right>����ʱ<br>onChange�¼�JS�ű�:</td>
	  		<td><textarea  name="new_onchange" style="width:100%"  cols="100" rows="5"  id="new_onchange"><%=FRM_new_onchange%></textarea>        
	  		</td>
	  	</tr>
	  
	  		<tr><td class=cn_td09 align=right>�༭ʱ<br>onChange�¼�JS�ű�:</td>
	  		<td><textarea  name="edit_onchange" style="width:100%" cols="100" rows="5" id="edit_onchange"><%=FRM_edit_onchange%></textarea>        
	  		</td>
	  	</tr>
	  		<tr><td class=cn_td09 align=right>����ʱ<br>HTML�������:</td>
	  		<td><textarea  name="new_ext_html" style="width:100%" cols="100" rows="3" id="new_ext_html"><%=FRM_new_ext_html%></textarea>�������ֶα�ע������              
	  		</td>
	  	</tr>
	   
	  		<tr><td class=cn_td09 align=right>�༭ʱ<br>HTML�������:</td>
	  		<td><textarea  name="edit_ext_html" style="width:100%" cols="100" rows="3" id="edit_ext_html"><%=FRM_edit_ext_html%></textarea>�������ֶα�ע������       
	  		</td>
	  	</tr>
	   
	  <tr>
	  	<td colspan="2">
	  			<%if chkAccount("modulFEdit") then %><BUTTON class=cn_button01 type=submit >����</button><%end if %>
	  			<%if chkAccount("modulFDel") then %><BUTTON class=cn_button01 type=submit onClick="return chkDel(this.form)" >ɾ��</button><%end if %>
	  			
	  	</td>
		</tr>
  
  
  <tr>
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


<% if FRM_is_rule="T" then %>
<script>
		function chkRule(form){
			var str;
			str="";
			if (form.con_field.value==""){ str = str + "����ѡ��һ���ֶ�" + "\n";}
			if (form.con_value.value==""){ str = str + "�趨ֵ����Ϊ��" + "\n";}
			
			return showInputError(str);
		}
		function confirmDel(form){
			return confirm("��ȷ��ɾ�����������");
		}
</script>
<div class="cn_list_title">ҵ���ֶι���</div>
<DIV class=cn_col>����һ����ɫ�û��ڲ鿴һ��ҵ������ʱ����ĳ���ֶ����ݵı༭��������������ֻ��Ҫ�����ֹ�༭��������
	<TABLE border=0 cellSpacing=1 cellPadding=0>
  <THEAD> 
          	<TR>
						<TH>�����漰��ɫ</TH>
	          <TH>����༭</TH>
						<TH>����</TH>
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
					<td><button class=cn_button06 type="submit" onClick="return chkRule(this.form)">��������</button></TD>
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
						<button class=cn_button01  type="submit" onClick="this.form.archive.value='F';return chkRule(this.form)">����</button>
						<button class=cn_button01  type="submit" onClick="this.form.archive.value='T';return confirmDel(this.form)">ɾ��</button>
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
<div id="field_select_dialog" title="ѡ��һ���ֶ�">
	 ssss
		</div>
<input type=button value="����" onClick="testwin();	"> 
<input type=button value="����2" onClick="testwin1();	"> 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->

 