<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
 
<% chkAccountStr "modulFList" %>
<%
	function T2shi(str) 
		if ucase(str)="T" then 
			T2shi = "��"
		else
			T2shi = "��"
		end if 
	end Function
	
	Dim recordType 
	recordType  = "select selectvalue,'&nbsp;' + txt as txt  from mova_picklist where code='record_type' and archive='F' union select item_code as selectvalue,'*' + item_name as txt from mu_item where archive='F'  and owner='" & session("customerNo") & "'"

%>
<script>
		function chgYN(obj){
			if (obj.value=="��"){
				obj.value="��";	
			}else{
				obj.value="��";
			}
		}
		
</script>

<%
'��ȡ��ǰҵ��ģ����Ϣ
Dim object_id,orderBy,sqlString
object_id = req("object_id")
orderBy  = req("orderBy")
sqlString = "select * from mu_object where owner='" & session("customerNo") & "' and archive='F' and object_id="& object_id 

executeQuery conn,movaRS,sqlString,1,1
if movaRS.bof or movaRS.eof then
movaRS.close
msgbox "��¼�����ڣ�����������һ�������ҳ��",1
end if 

'Dim Form_Frm
Dim FRM_object_name,FRM_is_publish,FRM_object_code,FRM_table_name,FRM_field_id
FRM_object_name = movaRS("object_name")
FRM_is_publish = movaRS("is_publish")
FRM_object_code= movaRS("object_code")
FRM_table_name = movaRS("table_name")
%>
 
<script>
	function chk(form){
		var str;
		str="";
		if (form.item_name.value==""){
			str=str +  "�������Ʊ�������" + "\n";
		}
		form.del.value="F";
		return showInputError(str);
	}
	
	function chkDel(form){
		form.del.value="T";
		return confirm("ȷ����Ҫɾ����");
	}
</script>
 
<div class="cn_list_title">��<font color=red><%=FRM_object_name%></font>���ֶ��б�</div> 
<DIV class=cn_col>

	<button  class=cn_button01 type="button" onClick="window.location.href='objectField.asp?object_id=<%=object_id%>'">���༭�ֶ�����</button>
	<button  class=cn_button01 type="button" onClick="window.location.href='objectField.asp?object_id=<%=object_id%>&orderBy=list'">���б��ֶ�����</button>
	<button  class=cn_button01 type="button" onClick="window.location.href='objectField.asp?object_id=<%=object_id%>&orderBy=code'">���ֶ���������</button>
	<button  class=cn_button06 type="button" onClick="window.location.href='objectAdv.asp?id=<%=object_id%>'"><%=FRM_object_name%>�߼�����</button>
	<a href="objectAdv.asp?id=<%=object_id%>">����ҵ��ģ��</a>
 
	<br>
	<%
		'˵����Ϣ
		if FRM_object_name = "MU_CUSTOMER" then
			%>
				<ul>˵����
					<li><%=FRM_object_name%>���б����Ϣ�� �����Ϊϵͳ�С����ڲ�ѯ���б�ͱ༭ʱ��ʾ������Ҫ��������</li>
					<li>Ĭ�ϵ�һ�У��͵ڶ���Ϊ �������� �� ����Ҫ�绰����������Ӧ������ӡ��༭���б���ѯ����Ҫʹ�õ��ֶΡ�</li>
					<li>��<%=FRM_object_name%>���漰�Ĳ�ѯ�����У�<%=FRM_object_name%>��Ż���Ϊ��һ�������˴�����Ϊ�̶�����</li>
					<li>������Ʋ����룬���ʾ���в����ڡ�</li>
					<li>����Ҫ���ı���ע�ֶΣ���ʹ��������ϵĴ��ı��У�������ı����ֶ�������</li>
					<li><a href="dataDict.asp?object_id=<%=object_id%>" target="_blank">�´��ڲ鿴�����ֵ�</a></li>
				</ul>
			<%
		else
			%>
				<ul>˵����
					<li><%=FRM_object_name%>���б����Ϣ�� �����Ϊϵͳ�С����ڲ�ѯ���б�ͱ༭ʱ��ʾ������Ҫ��������</li>
					<li>��<%=FRM_object_name%>���漰���б��У������Զ��ڵ�һ����ʾ����Ӧ��<%=FRM_object_name%>������</li>
					<li>��<%=FRM_object_name%>���漰�Ĳ�ѯ�����У�<%=FRM_object_name%>��Ż���Ϊ��һ������<%=FRM_object_name%>������������Ϊ�ڶ��������˴���������Ϊ�̶�����</li>
					<li>������Ʋ����룬���ʾ���в����ڡ�</li>
					<li>����Ҫ���ı���ע�ֶΣ���ʹ��������ϵĴ��ı��У�������ı����ֶ�������</li>
					<li><a href="dataDict.asp?object_id=<%=object_id%>" target="_blank">�´��ڲ鿴�����ֵ�</a></li>
				</ul>
			<%
		end if 
		
	%>
 

<TABLE border=0 cellSpacing=1 width="400" cellPadding=0>
  <THEAD>
  	<TR>
            <TH>&nbsp;</TH>
            <TH>����</TH>
	          <TH>�ֶ�����</TH>
	          <TH>����</TH>
	          <TH>(���)</TH>
	          <TH>(�༭)</TH>
	          <TH>(�б�)</TH>
	          <TH>(��ѯ)</TH>
	          <TH>������</TH>
	          <TH>�п�</TH>
	          <TH>�и�</TH>
	          <TH>��������</TH>
	          <TH>Ĭ��ֵ</TH>
	          <TH>�༭����</TH>
	          <TH>�б�����</TH>
	          <TH></TH>
	          
   </TR>
   </THEAD>
  <TBODY>
  	<FORM id=form method=post name="listModel<%=FRM_field_id%>" action=objectField_.asp>
  	<input type="hidden" name="actionType" value="modify">
  	<input type="hidden" name="object_id" value="<%=object_id%>">
  	<% 			
			Dim securitySQL,order,condition,FRM_object_id,FRM_field_code,FRM_field_name
			Dim FRM_field_type,FRM_is_new,FRM_is_list,FRM_is_edit,FRM_is_seat,FRM_is_search
			Dim FRM_is_required,FRM_search_type,FRM_def_value,FRM_col_span,FRM_sort_edit
			Dim FRM_sort_list,FRM_width,FRM_high,FRM_is_forbidden
			
 			sqlString="select *,isNull(field_name,'_') as fn from mu_object_field where archive='F' and object_id=" & object_id
 			securitySQL = " and owner='" & session("customerNo") & "'"
 			if  isNull(orderBy) or orderBy="" then 
 				order =  " order by is_forbidden,sort_edit " 
 			end if 
 			
 			if orderBy="list" then 
 				order =  " order by is_forbidden,sort_list " 
 			end if 
 			
 			if orderBy="code" then 
 				order =  " order by is_forbidden,field_code " 
 			end if 
 			
			sqlString=sqlString & condition & securitySQL &  order 
			executeQuery conn,movaRS,sqlString, 1, 1
			do 
				if movaRS.eof or movaRS.bof then exit do
				FRM_field_id = movaRS("field_id")
				FRM_object_id = movaRS("object_id")
				FRM_field_code  = ucase(movaRS("field_code"))
				FRM_field_name = movaRS("field_name")
				FRM_field_type = movaRS("field_type")
				FRM_is_new = T2shi(movaRS("is_new"))
				FRM_is_list =  T2shi(movaRS("is_list"))
				FRM_is_edit =  T2shi(movaRS("is_edit"))
				FRM_is_seat =  T2shi(movaRS("is_seat"))
				FRM_is_search =  T2shi(movaRS("is_search"))
				FRM_is_required =  T2shi(movaRS("is_required"))
				FRM_search_type = movaRS("search_type")
				FRM_def_value = movaRS("def_value")
				FRM_col_span = movaRS("col_span")
				FRM_sort_edit = movaRS("sort_edit")
				FRM_sort_list = movaRS("sort_list")
				FRM_width = movaRS("width")
				FRM_high = movaRS("high")
				FRM_is_forbidden=	movaRS("is_forbidden") 
				
%>
		<input type="hidden" name="field_id" value="<%=FRM_field_id%>">
		<input type="hidden" name="del" value="F">
  	<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
  	  		<th><font  <%if FRM_is_forbidden = "T" then %>color=red<%end if%>><%=FRM_field_code%></font></th>
  	  		<%if ucase(FRM_field_code)<> "MAIN_PHONEx" and ucase(FRM_field_code)<> "CUSTOMERx" then %>
  	  			<td><input class=cn_input03 type="text" size="15" name="field_name" value="<%=FRM_field_name%>"></TD>
  	  		<td>
  	  			<%if ucase(left(FRM_field_code,1))="Z" then %>���ı�
  	  			<input type="hidden" name="field_type" value="TEXT">
  	  			<%else%>
  	  			<select name="field_type">
  	  					<%=cachePicklist(recordType,FRM_field_type)%>
  	  				</select>
  	  			<%end if %>
  	  		</td>
  	  		<%else%>
  	  			<td><input class=cn_input03 type="hidden" size="15" name="field_name" value="<%=FRM_field_name%>"><%=FRM_field_name%></TD>
  	  		<td>
  	  			<input type="hidden" name="field_type" value="<%=FRM_field_type%>">
  	  		</td>
  	  		<%end if %>
 
  	  		<td><input  type="text" size="2" name="is_required" value="<%=FRM_is_required%>" readOnly onclick="chgYN(this)"></td>
  	  		<td><input  type="text" size="2" name="is_new" value="<%=FRM_is_new %>"  onclick="chgYN(this)"></td>
  	  		<td><input type="text" size="2" name="is_edit" value="<%=FRM_is_edit%>" readOnly onclick="chgYN(this)"></td>
  	  		<td><input type="text" size="2" name="is_list" value="<%=FRM_is_list%>" readOnly onclick="chgYN(this)"></td>
  	  		<td><input type="text" size="2" name="is_search" value="<%=FRM_is_search%>" readOnly onclick="chgYN(this)"></td>
  	  		<td><input class=cn_input03 type="text" size="2" name="col_span" value="<%=FRM_col_span%>"></td>
  	  		<td><input class=cn_input03  type="text" size="2" name="width" value="<%=FRM_width%>"></td>
  	  		<td><input class=cn_input03  type="text" size="2" name="high" value="<%=FRM_high%>"></td>
  	  		
  	  		<td><select name="search_type">
  	  					<option value=""></option>
  	  					<%=cachePicklist("#condition_type",FRM_search_type)%>
  	  				</select>
  	  		</td>
  	  		<td><input class=cn_input03 type="text" size="15" name="def_value" value="<%=FRM_def_value%>"></td>
  	  		<td><input class=cn_input03 type="text" size="3" name="sort_edit" value="<%=FRM_sort_edit%>"></td>
  	  		<td><input class=cn_input03 type="text" size="3" name="sort_list" value="<%=FRM_sort_list%>"></td>
  	  		
  	  		<td>
  	  				<a href="field.asp?objectId=<%=FRM_object_id%>&id=<%=FRM_field_id%>">�߼�����</a>
						 
					</TD>				
  	</TR>

<%			
			movaRS.Movenext 
		Loop
%>
  	
  			<%if  movaRS.recordcount>0 then %>
  	  				<%if chkAccount("modulFEdit") then %>
<tr>
  		<td colspan="16">
  	  				<button  class=cn_button01 type="submit" onClick="">����</button><%end if %>
  	  </td>
  	</tr>					
  	  				<%end if %>
  		
 </form>
<%if chkAccount("modulFNew") then %>
	<FORM id=form method=post name="newModel" action=objectField_.asp>
		<input type="hidden" name="actionType" value="create">
		<input type="hidden" name="field_id" value="">
		<input type="hidden" name="object_id" value="<%=object_id%>">
		<input type="hidden" name="table_name" value="<%=FRM_table_name%>">
		<input type="hidden" name="del" value="F">
		<input type="hidden" name="old_field_type" value="-">
		
  	<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
  	  		<tH>&nbsp;</th>
  	  		<td><input class=cn_input03 type="text" size="15" name="field_name" value=""></TD>
  	  		<td>
  	  			<select name="field_type">
  	  					<%=cachePicklist(recordType,"VARCHAR")%>
						</select>
  	  		</td>
  	  		<td><input  type="text" size="2" name="is_required" value="��" readOnly onclick="chgYN(this)"></td>
  	  		<td><input  type="text" size="2" name="is_new" value="��" readOnly onclick="chgYN(this)"></td>
  	  		<td><input type="text" size="2" name="is_edit" name="is_edit" value="��" readOnly onclick="chgYN(this)"></td>
  	  		<td><input type="text" size="2" name="is_list" value="��" readOnly onclick="chgYN(this)"></td>
  	  		<td><input type="text" size="2" name="is_search" value="��" readOnly onclick="chgYN(this)"></td>
  	  		<td><input class=cn_input03 type="text" size="2" name="col_span" value="0"></td>
  	  		<td><input class=cn_input03  type="text" size="2" name="width" value="20"></td>
  	  		<td><input class=cn_input03  type="text" size="2" name="high" value="1"></td>
  	  		
  	  		<td><select name="search_type">
  	  					<option value=""></option>
  	  					<%=cachePicklist("#condition_type","")%>
  	  					</option>
 
  	  				</select>
  	  		</td>
  	  		<td><input class=cn_input03 type="text" size="15" name="def_value" value=""></td>
  	  		<td><input class=cn_input03 type="text" size="3" name="sort_edit" value="999"></td>
  	  		<td><input class=cn_input03 type="text" size="3" name="sort_list" value="999"></td>
  	  		
  	  		<td>
 							
  	  		<button  class=cn_button06 type="submit" onClick="">�����ֶα���</button>��
  	  				
						 
					</TD>				
  	</TR>
 </form>

<%end if %>
</Tbody>
</table>
</div>
  
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->