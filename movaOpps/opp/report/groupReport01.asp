<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<% chkAccountStr "toolBox_groupCount" %>
<%
	Dim FRM_objectId,FRM_objectName
	FRM_objectId = req("object")
	FRM_objectName = req("objectName")
	
	
	Dim FRM_field01,FRM_field02
	Dim FRM_fieldName01,FRM_fieldName02
	
	FRM_field01 = req("field01")
	FRM_field02 = req("field02")
	FRM_fieldName01 = req("fieldName01")
	FRM_fieldName02 = req("fieldName02")
	
	
	'��ȡ��ǰ����ı���
	Dim Frm_tableName,FRM_object_code
	Frm_tableName = getObjectProperty(FRM_objectId,"table_name")
	FRM_object_code = getObjectProperty(FRM_objectId,"object_code")
	
	
	'ʱ�䷶Χ
	dim FRM_end_date,FRM_start_date
	FRM_end_date = req("end_date")
	FRM_start_date = req("start_date")
%>
 
<script>
	function chk()
	{
		var str;
		str="";
		if (!chkDate(this.form.start_date.value + " 00:00:00" ,this.form.end_date.value + " 00:00:00",30)){
			str=str +  "ʱ�������벻��ȷ" + "\n";
		}
		return showInputError(str);
	}
	
	function setFieldName(form){
		form.fieldName01.value=form.field01.options[form.field01.selectedIndex].text;
		form.fieldName02.value=form.field02.options[form.field02.selectedIndex].text;
	}
	var defEndTime= "<%=getDate(0,"day")%>";
	var defStartTime = "<%=getDate(-7,"day")%>";
</script>
<div class="cn_list_title">��<font color=red><%=FRM_objectName%></font>������ͳ��&nbsp;&nbsp;&nbsp;<% if req("isStart")= "1" then  %>�ڶ���<%end if %></div>
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
  <FORM id=form method=post name=mainform action=groupReport01.asp>
  	<input type="hidden" name="isStart" value="0">
  	<input type="hidden" name="object" value="<%=FRM_objectId%>">
  	<input type="hidden" name="fieldName01" value="<%=FRM_fieldName01%>">
  	<input type="hidden" name="fieldName02" value="<%=FRM_fieldName02%>">
  	<input type="hidden" name="objectName" value="<%=FRM_objectName%>">
  <TBODY>
	  <TR>
    <TD class=cn_td09 align=right>ʱ���:</TD>
    <TD align=left colspan=5>
    	�� <INPUT READONLY class=cn_input03 type=text size="10" value="<%=getDate(-7,"day")%>" name="start_date" id="start_date" ondblclick="this.value=defStartTime"><%=getCalendar("md2","start_date","F")%>��
    	<INPUT  READONLY class=cn_input03 type=text  size="10" name="end_date" value="<%=getDate(-1,"day")%>" id="end_date" ondblclick="this.value=defEndTime"><%=getCalendar("md1","end_date","F")%> 
    	˫��ʱ������򣬻�ȡĬ�ϵ�����
    </TD>
  </TR>
  
	  <TR>
	    <TD class="cn_td09" align=right >�����ֶ�һ:</TD>
	    <TD align=left >
	    	<select name="field01">
						<%=getObjectFieldPicklistByGroup(FRM_objectId,FRM_field01)%>
				</select>
	    </TD>
	   </tr>
	   <tr>
	   <TD class="cn_td09"   align=right >�����ֶζ�:</TD>
	    <TD align=left >
	    	<select name="field02">
						<option value=""></option>
						<%=getObjectFieldPicklistByGroup(FRM_objectId,FRM_field02)%>
				</select>
	    </TD>
		</TR>
  <tr>
  	<TD align=left ></td>
 
    <TD  align=left><BUTTON class=cn_button01 type=submit onClick="setFieldName(this.form);return chk(this);">����ͳ��</BUTTON> ������Ϣ��Ϊ��ȷ�������ң�ʱ��β�����30��<br>
    
    	</TD>
  </TR></TBODY></FORM></TABLE> 
</DIV>
 
<!--��ѯ���-->

<% if req("isStart") <> "1" then  %>
<!--��ѯ���-->
<div class="cn_list_title">ͳ��ʱ�䷶Χ��<%=FRM_start_date%> �� <%=FRM_end_date%></div>
<DIV class=cn_col>
	
<TABLE border=0 cellSpacing=1 cellPadding=0>
  <THEAD>
  	<TR>
<% if FRM_fieldName01 <>"" then %><TH><%=FRM_fieldName01%></TH><%end if %>
<% if FRM_fieldName02 <>"" then %><TH><%=FRM_fieldName02%></TH><%end if %>
	     <TH>����</TH>
   </TR>
   </THEAD>
  <TBODY>
  	
<% 			
 			sqlString = "select " 
 			sqlString = sqlString & FRM_field01 & " " 
 			
 			if FRM_field02<>"" then 
 				sqlString = sqlString & "," & FRM_field02 & " "
 			end if 
			
			sqlString = sqlString & ",count(*) as groupCount "
 			
 			sqlString = sqlString & "from "& Frm_tableName 
 			
 			condition = " where object_code='" & FRM_object_code & "' and archive='F' " 
 			condition = condition & " and createdate > '" & FRM_start_date & " 00:00:00'" 
 			condition = condition & " and createdate <'" & FRM_end_date & " 23:59:59'" 
 			
 			groupString =  " group by "
 			groupString = groupString & FRM_field01 & " " 
 			
 			if FRM_field02<>"" then 
 				groupString = groupString & " ," &  FRM_field02 & " " 
 			end if 
 			 
 			orderSQL = " order by count(*) desc "
 		 
			
			securitySQL = " and owner='" & session("customerNo") & "'"
			
			if condition="" then condition = " and 1=2 "
			sqlString=sqlString & condition & securitySQL &  groupString  & orderSQL
 
			executeQuery conn,rs,sqlString, 1, 1
			' ��ʼ��ҳ
			InitRS rs, 100	' Ĭ��ÿҳ ����
			For i = 1 to rs.pagesize 
				if rs.eof then exit For 

				RESULT_field01 = rs(FRM_field01)
				if FRM_field02<>"" then RESULT_field02 = rs(FRM_field02)
				RESULT_groupCount = rs("groupCount")
			 
%>
  <TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
    		<td><%=RESULT_field01  %></TD>
    		<%if FRM_field02<>"" then %> 
	    		<td><%=RESULT_field02  %></TD>
    		<%end if %>
    		<td><%=RESULT_groupCount%></TD>
  </TR>
 
<%			
		rs.Movenext
		Next
%>

</TBODY>
 
  
  <TR>
    <TD colSpan=15> <% call PageNavigator %></TD></TR>  </TABLE>
<%end if %>




 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->