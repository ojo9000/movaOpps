<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<DIV class=cn_main>
<div class="cn_list_title">�û�������־��ѯ</div> 
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
  <FORM id=form method=post name=form 
  action=searchLog.asp>
  <input type="hidden" name="isStart" value="0">
  <TBODY>
  <TR>
    <TD class="cn_td09"   align=right >ҵ��ģ��:</TD>
    <TD align=left>
    	<select name="object_code">
				<option></option>
				<%=picklist(getObjectListSql(session("customerNo")),"")%>
				<option value="SYSTEM">ϵͳ</option>
    	</select>
    </TD> 
       <TD class=cn_td09 align=right>�˻���:</TD>
    <TD align=left><INPUT 
      class=cn_input03 type=text name=login></TD></TR>
      <TR>
        <TD class=cn_td09 align=right>ҵ����:</TD>
        <TD align=left><INPUT 
      class=cn_input03 type=text name=object_no></TD>
        <TD class=cn_td09 align=right>����:</TD>
       <TD align=left>
       	<select name="operateType">
				<option></option>
				<%=picklist("#system_log_type","")%>
    	</select>
       </TD></TR>
       <TR>
    <TD class=cn_td09 align=right>ʱ���:</TD>
    <TD align=left colspan="3">��<INPUT  READONLY ondblclick="this.value=''" size="10" class=cn_input03 type=text name="startDate" id="startDate">
    	<img src='<%=movaStyle%>/images/calendar.gif' id='s_t' align='top'>
		<script>		Calendar.setup({
		trigger    : "s_t",
		inputField :  "startDate",
		animation  : false,
		onSelect   : function() { this.hide()  ; 
	}
		});
		</script>
 

    	 ��
    	 <INPUT  READONLY ondblclick="this.value=''" size="10" class=cn_input03 type=text name="endDate" id="endDate">
    	<img src='<%=movaStyle%>/images/calendar.gif' id='e_t' align='top'>
		<script>		Calendar.setup({
		trigger    : "e_t",
		inputField :  "endDate",
		animation  : false,
		onSelect   : function() { this.hide()  ; 
	}
		});
		</script>
    	 </TD>
       </TR>
  <TR>
    <TD colSpan=4 align=middle><BUTTON class=cn_button01 type=submit>�� 
      ѯ</BUTTON>
      (���������Ϊ��ȷ����)</TD>
  </TR></TBODY></FORM></TABLE>
</DIV>




<DIV class=cn_col>

<TABLE border=0 cellSpacing=1 cellPadding=0>
 
	<THEAD>
  	<TR>
  		<tH>ҵ��ģ��</tH>
  		<tH>ҵ����</tH>
  		<tH>��������</tH>
  		<tH>������</tH>
			<TH>��������</TH>
			<TH>����</TH>
   </TR>
   </THEAD>
  <TBODY>
<% 			
 			Dim sqlString,order,condition,i,FRM_object_no,FRM_object_name,FRM_operation,FRM_username,FRM_login,FRM_createdate,FRM_description
 			sqlString = "" 
 			sqlString = sqlString & " SELECT mu_log.createdate  , mu_log.description  , mu_log.operation , mu_log.object_no ,"
 			sqlString = sqlString & " mu_log.object_Code , mova_user.username , mova_user.login , "
 			sqlString = sqlString & " mu_log.object_code  ,isNull(mu_object.object_name,'ϵͳ') as object_name"
 			sqlString = sqlString & " FROM mova_user INNER JOIN " 
 			sqlString = sqlString & " mu_log ON mova_user.mova_userid = mu_log.createuser LEFT OUTER JOIN " 
 			sqlString = sqlString & " mu_object ON mu_log.object_Code = mu_object.object_code "
 		  sqlString = sqlSTring & " where (1=1 or isNull(mu_object.table_name,'SYSTEM')='SYSTEM') " 	
 		 
 			order =  " order by mu_log.createdate " 
 			
 			if req("isStart") = "1" then 
 				session("F_object_code") = ""
 				session("F_login") = ""
 				session("F_object_no") = ""
 				session("F_operateType") = ""
 				session("F_startDate") = ""
 				session("F_endDate")=""
 			end if 
 			
 			if req("isStart") = "0" then 
 				'����ǵ����ѯ��ť��ִ������
 				session("F_object_code") = trim(req("object_code"))
 				session("F_login") = trim(req("login"))
 				session("F_object_no") = trim(req("object_no"))
 				session("F_operateType") = trim(req("operateType"))
 				session("F_startDate") = trim(req("startDate"))
 				session("F_endDate")=trim(req("endDate"))
 			end if 
 			
			condition = ""
			if  session("F_object_code")  <>"" then condition= condition & " and mu_log.object_code ='" & session("F_object_code") & "'"
			if 	session("F_login") <> "" then  condition= condition & " and mova_user.login='" & session("F_login") & "'" 
			if 	session("F_object_no") <> "" then  condition= condition & " and mu_log.object_code='" & 	session("F_object_no") & "'"
			if 	session("F_operateType") <> "" then  condition= condition & " and mu_log.operation='" & session("F_operateType") & "'" 
			if 	session("F_startDate") <> "" then  condition= condition & " and mu_log.createdate>=cast( '"& session("F_startDate") &"' as datetime) " 
			if 	session("F_endDate") <> "" then  condition= condition & " and mu_log.createdate<=cast( '"& session("F_endDate") &"' as datetime) "  
						  
			
		  if condition="" then condition = " and 1=2 "
			sqlString=sqlString & condition & order 
			'response.write sqlString   
			executeQuery conn,rs,sqlString, 1, 1

			' ��ʼ��ҳ
			InitRS rs, application("DEF_SPLIT_PAGE")	' Ĭ��ÿҳ ����
			For i = 1 to rs.pagesize 
				if rs.eof then exit For
				FRM_object_no = rs("object_no")
				FRM_object_name = rs("object_name")
				FRM_operation = rs("operation")
				FRM_username = rs("username")
				FRM_login = rs("login")
				FRM_createdate = rs("createdate")
				FRM_description = rs("description")
				 
%>
  <TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
 			<td><%=FRM_object_name%></td>
 			<td><%=FRM_object_no%></td>
 			<td><%=FRM_operation%></td>
 			<td><%=FRM_login%>(<%=FRM_username%>)</td>
 			<td><%=FRM_createdate%></td>
 			<td><%=FRM_description%></td>
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