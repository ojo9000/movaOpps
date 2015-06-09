<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
 
<% chkAccountStr "modulFList" %> 

<%
'获取当前业务模型信息
Dim object_id,orderBy,sqlString,securitySQL,order,condition
Dim FRM_object_name,FRM_is_publish,FRM_object_code,FRM_table_name,FRM_field_code,FRM_is_forbidden,FRM_field_type,FRM_field_name
object_id = req("object_id")
orderBy  = req("orderBy")
sqlString = "select * from mu_object where owner='" & session("customerNo") & "' and archive='F' and object_id="& object_id 

executeQuery conn,movaRS,sqlString,1,1
if movaRS.bof or movaRS.eof then
movaRS.close
msgbox "记录不存在，或者您打开了一个错误的页面",1
end if 

'Dim Form_Frm
FRM_object_name = movaRS("object_name")
FRM_is_publish = movaRS("is_publish")
FRM_object_code= movaRS("object_code")
FRM_table_name = movaRS("table_name")
%>
  
 
<div class="cn_list_title">《<font color=red><%=FRM_object_name%></font>》数据字典，<%=FRM_table_name%></div> 
<DIV class=cn_col>
 

<TABLE border=0 cellSpacing=1 width="400" cellPadding=0>
  <THEAD>
  	<TR>
            <TH>字段名称</TH>
            <TH>名称</TH>
	          <TH>字段类型</TH> 
	          
   </TR>
   </THEAD>
  <TBODY>
  	<% 			
			 
 			sqlString="select a.field_code,a.field_name,a.is_forbidden,"
			sqlString = sqlString & " isnull(b.item_name+'(' + b.field_type + ')',a.field_type) as field_type "
			sqlString = sqlString & " from mu_object_field a left join mu_item b "
			sqlString = sqlString & " on a.field_type=b.item_code "
 			sqlString = sqlString & " where a.archive='F' "
 			sqlString = sqlString & " and a.object_id=" & object_id 
 			
 			securitySQL = " and a.owner='" & session("customerNo") & "'"
 			if  isNull(orderBy) or orderBy="" then 
 				order =  " order by is_forbidden,sort_edit " 
 			end if 
 			 
 			
			sqlString=sqlString & condition & securitySQL &  order  
			executeQuery conn,movaRS,sqlString, 1, 1
			do 
				if movaRS.eof or movaRS.bof then exit do 
				FRM_field_code  = ucase(movaRS("field_code"))
				FRM_field_name = movaRS("field_name")
				FRM_field_type = movaRS("field_type")  
				FRM_is_forbidden=	movaRS("is_forbidden") 
				
%>
 
  	<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
			<td><font  <%if FRM_is_forbidden = "T" then %>color=red<%end if%>><%=FRM_field_code%></font></td>
			<td><%=FRM_field_name%> </td>
			<td><%=FRM_field_type%></td>
  	</TR>

<%			
			movaRS.Movenext 
		Loop
%>
  	 
</Tbody>
</table>
</div>
  
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->