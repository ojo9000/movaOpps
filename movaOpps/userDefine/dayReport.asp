<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" --> 
<% 
Dim sqlString,orderbyStr,i,mova_userid,username,login,phone,email,role
Dim team_name,appVar,z,itemArray,opp_type,picklistArray,param1,status
%> 
  
<DIV class=cn_col01>
    <form name="mainform" method="post" action="dayReport.asp">
  <table width="100%" border="0" cellspacing="1" cellpadding="1">
  	<input type="hidden" name="isStart" value="0">
                <tr height="20"> 
                  <td  class="cn_td09" >日期:</td>
                  <td class="2" >
                  <INPUT  READONLY ondblclick="this.value=''" size="10" class=cn_input03 type=text name="__S_C__V7" id="__S_C__V7">
                  <img src='/movaOpps/css/001/images/calendar.gif' id='__SC__V7' align='top'>
		<script>		Calendar.setup({
		trigger    : "__SC__V7",
		inputField :  "__S_C__V7",
		animation  : false,
		onSelect   : function() { this.hide()  ; 
	}
		});
		
		function  chk(){
			return confirm("开始报表");	
		}
		</script>

	
                  	</td>
                </tr> 
                
                <tr class="mainbuttomline"> 
                  <td align="right" width="100"   valign="top" ></td>
                  <td colspan=4> <input name="submit22" class="cn_button01"  type="submit" class="bf" onClick="return chk()" value="查询"></td>
                </tr>
              </table> 
</form>
</div>

<div class="cn_list_title">日报表</div> 
<DIV class=cn_col01> 
	<table width="100%" border="0" cellspacing="1" cellpadding="1">
                          <thead>
                          <tr height="20"> 
                            <th width="100"  class="formlistTitle" >类别</th>
                            <th class="formlistTitle" >渠道</th>
                            <th class="formlistTitle" >内容</th>
                            <th class="formlistTitle" >受理日期</th>
                            <th class="formlistTitle" >情况说明及处理意见</th>
                            <th class="formlistTitle" >状态</th>
                            <th class="formlistTitle" >责任部门</th>   
                            <th class="formlistTitle" >跟进人员</th>    
                            <th class="formlistTitle" >是否超时</th> 
                            
                         </tr>
                       </thead>
                     <tbody>

<%
			if req("__S_C__V7")="" then 
				response.write "</table></div></body></html>"
				response.end
			end if 
			Dim curDay 
			
			curDay = req("__S_C__V7")
			sqlString = "select * from mu_opp20 where object_code='M00_K1000003850' and archive='F' " 'and team= " & session("cTeam")
			sqlString =  sqlString &" and V0 ='投诉' "
			
			sqlString =  sqlString &" and V7 like '"&curDay  &"%' "
			'CONVERT(varchar(100), modifydate, 20) like '2015-04-08%'
 
 
			orderbyStr  = " order by createdate desc "
 
			
			sqlString=sqlString  & orderbyStr   
			'response.write sqlString
			executeQuery conn,movaRs1, sqlString,1,1

			' 初始化页
	 
			do 
				if movaRS1.eof or movaRS1.bof then exit do
				%>
				<tr>
				<td><%=movaRS1("V0")%></td>
        <td><%=movaRS1("VH")%></td>
        <td>[<%=movaRS1("V3")%>]-[<%=movaRS1("V8")%>] -<font color=red>[<%=movaRS1("VR")%>]</font><br>
        	  <%=movaRS1("ZA")%>  </td>
        <td><%=movaRs1("V4")%></td>
        <td><%=getProcess(movaRS1("opp_no"))%></td>
        <td><%=movaRs1("V1")%></td>
        <td><%=movaRs1("VT")%></td>   
        <td><%=movaRs1("VF")%></td>    
        <td>-</td> 
      	</tr>
			 <%
														
			 	movaRs1.Movenext
			Loop
			movaRS1.close

function getProcess(oppNo)
		sqlString = "SELECT za FROM MU_OPP13 WHERE object_code='M00_K1000003845' and archive='F' and V4='"&oppNo&"'"
		executeQuery conn,movaRs, sqlString,1,1
		geti=0
		do 
			geti = geti+1
			if movaRS.eof or movaRS.bof then exit do
				getProcess = getProcess & movaRs("za") & getI
				if geti>0 then getProcess = getProcess & "<hr size='1'/>"
				 
			movaRs.Movenext
		Loop
		movaRs.close
end Function 

%>		
 
</td>
                          </tr>
                        </tbody>
                        </table> 
                     
<div class="cn_list_title">汇总</div>  
	<table width="100%" border="0" cellspacing="1" cellpadding="1">
                          <thead>
                          <tr height="20"> 
                            <th    class="formlistTitle" >项目</th>
                            <th class="formlistTitle" >当日报修</th>
                            <th class="formlistTitle" >当日完成</th>
                            <th class="formlistTitle" >未发送</th> 
                            <th class="formlistTitle" >实施中</th>
                            <th class="formlistTitle" >已完成</th>   
                            <th class="formlistTitle" >非正常关闭</th>    
                            <th class="formlistTitle" >正常关闭</th> 
                            <th class="formlistTitle" >终止</th> 
                            
                         </tr>
                       </thead>
                       <tbody>
                       	<%
			sqlString = "select distinct project from view_project_customer where  project not like '测试%'"
			
		 
			'CONVERT(varchar(100), modifydate, 20) like '2015-04-08%'
 
 
			orderbyStr  = " order by project  "
 
			
			sqlString=sqlString  & orderbyStr    
			executeQuery conn,movaRs1, sqlString,1,1

			' 初始化页
	 
			do 
				if movaRS1.eof or movaRS1.bof then exit do  
					dim projectName 
					projectName=movaRs1("project")
					
					sqlTitle = "select count(*) from MU_OPP20 WHERE object_code='M00_K1000003850' and archive='F' and V3 like '"&projectName&"%'"
				%>
				
                       	<tr  > 
                            <td ><%=projectName%></td>
<td  >
	<!--当日报修-->
	<%=getOnefield(sqlTitle & " and CONVERT(varchar(100), createdate, 20) like '"& curDay &"%'")%></td>
<td  ><!--当日完成-->
	<%=getOnefield(sqlTitle & " and v1 in ('已完成','正常关闭','非正常关闭','终止') and  CONVERT(varchar(100), modifydate, 20) like '"& curDay &"%'")%>
	</td>
<td  ><!--未发送-->
<%=getOnefield(sqlTitle & " and V1='未发送'")%>	
	</td>
<td  ><!---实施中（包含已发送）-->
<%=getOnefield(sqlTitle  & " and V1 in ('已发送','实施中')")%>	
	</td>
 
<td  ><!--已完成-->
	<%=getOnefield(sqlTitle  & " and V1='已完成'")%>	
	</td>   
<td  ><!--非正常关闭-->
<%=getOnefield(sqlTitle  & " and V1='非正常关闭'")%>	</td>    
<td  ><!--正常关闭-->
	<%=getOnefield(sqlTitle  & " and V1='正常关闭'")%>	</td> 
<td  ><!--终止-->
	<%=getOnefield(sqlTitle  & " and V1='终止'")%>	</td> 
                            
                         </tr>
        <% 
        	movars1.moveNext
        Loop 
        %>                 
                    </tbody>
                   

                        </table> 
                     	
                     	
<script>
	function setParentWindowValue(id,value){
		
	}
</script>
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
