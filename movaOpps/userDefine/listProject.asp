<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" --> 
<% Dim sqlString,orderbyStr,i,mova_userid,username,login,phone,email,role
Dim team_name,appVar,z,itemArray,opp_type,picklistArray,param1,status
%> 
 
<DIV class=cn_col01> 
	<table width="100%" border="0" cellspacing="1" cellpadding="1">
                          <thead>
                          <tr height="20"> 
                            <th width="100"  class="formlistTitle" >项目</th> 
                         </tr>
                       </thead>
                     <tbody>

<%
			Dim v0
			sqlString = "select v0,v0 as v1  from MU_OPP1 where v0 not like '%测试%' and  object_code='M00_K1000003830'  " 
			 
		 
		 
			orderbyStr  = " order by v0 "
 
			
			sqlString=sqlString  & orderbyStr   
			'response.write sqlString
			executeQuery conn,movaRs1, sqlString,1,1

			' 初始化页
			InitRS movaRs1, 5	' 默认每页 行数
			For i = 1 to movaRs1.pagesize 
				if movaRs1.eof then exit For
					v0 = movaRs1("v0") 
%>
                          <tr height="20">
                           <%if req("submit")="true"  then%>
                           <td  class="formlistText" ><a href="javascript:parent.setDialogField_submit('<%=v0%>',pickIdKey,'<%=v0%>',pickValueKey)"><%=v0%></a></td>
                          
                           <%else%>
                           <td  class="formlistText" ><a href="javascript:parent.setDialogField('<%=v0%>',pickIdKey,'<%=v0%>',pickValueKey)"><%=v0%></a></td>
                          
                           <%end if %>
                            
                            
                            </tr>
<%			
		
			 	movaRs1.Movenext
			Next
%>		
 
                          <tr  > 
                            <td colspan="9" align="right"   valign="top" > <form action=<%=Request.ServerVariables("SCRIPT_NAME") %>"> 
		<% Call ShowPageNavigator( Request.ServerVariables("SCRIPT_NAME") & "?strCondition=" & Trim(req("strCondition"))  , 1 ) %>
	</form></td>
                          </tr>
                        </tbody>
                        </table> 
<script>
	function setParentWindowValue(id,value){
		
	}
</script>
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
