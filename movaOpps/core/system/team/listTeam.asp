<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<% chkAccountStr "teamSys" %>
<%
	Dim team_name,status,team_id
%>
<%opendatabase%>
<div class="cn_list_title">组管理</div> 
<div class="cn_list_title_right"><a href="addTeam.asp">添加组</a> | <a href="listTeam.asp">组列表</a></div>

<DIV class=cn_col01>
<table width="100%" border="0" cellspacing="1" cellpadding="1">
	<THEAD>
	
                          <tr height="20"> 
														<tH width="100"  class="formlistTitle" >ID</tH>
                            <tH width="100"  class="formlistTitle" >名称</tH>
                       </tr>
</THEAD>
<TBODY>
<%
	sql = "select * from mova_team order by team_name"
	set movaRs=conn.execute(sql)
	if movaRs.eof or movaRs.bof then
		%>
													<tr height="20"> 
                            <td colspan=4>没有组，<a href="addTeam.asp">添加组</a></td>
                          </tr>
		<%
	else
			do
				if movaRs.eof or movaRs.bof then 
					exit do 
				else 
					team_name = movaRs("team_name")
					status=movaRs("status")
					team_id= movaRS("team_id")
		%>
													<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
														<td  ><%=team_id%></td>
                            <td  ><a href="modiTeam.asp?id=<%=team_id%>" class="tablelist"><%=team_name%></a></td>
                            
                          </tr>
		<%
				movaRs.moveNext
			end if 
		loop 
	end if 
%>
                        </table> 
</div>
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
