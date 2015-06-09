<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<% chkAccountStr "toolBox_groupCount" %>
<script>
	function chk()
	{
		var str;
		str="";
		if (!chkDate(this.form.start_date.value,this.form.end_date.value,30)){
			str=str +  "时间间隔输入不正确" + "\n";
		}
		return showInputError(str);
	}
		
	var defEndTime= "<%=getDate(0,"day")%>";
	var defStartTime = "<%=getDate(-7,"day")%>";
</script>
<div class="cn_list_title">分组统计&nbsp;&nbsp;&nbsp;第一步</div>
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
  <FORM id=form method=post name=mainform action=groupReport01.asp>
  <TBODY>
	   
  
	  <TR>
	    <TD class="cn_td09"   align=right >请选择一个业务数据:</TD>
	    <TD align=left >
	    	<select name="object">
				<%=picklist(userObjectPicklistSQL,"")%>
				</select>
				<input type="hidden" name="objectName" value="">
				<input type="hidden" name="isStart" value="1">
				
			<BUTTON class=cn_button01 type=submit onClick="this.form.objectName.value=this.form.object.options[this.form.object.selectedIndex].text" >下一步</button>
			</TD>
	    
		</TR>
  <tr>
  
  </TR></TBODY></FORM></TABLE>
</DIV>
 



 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->