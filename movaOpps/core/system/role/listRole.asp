<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<% chkAccountStr "roleSys" %>
<%
Dim rolename,rolecode,role_scope,Description,mova_roleid

opendatabase%>
<div class="cn_list_title">角色管理</div> 
<div class="cn_list_title_right"><a href="addRole.asp">添加角色</a> | <a href="listRole.asp">角色列表</a></div>

<DIV class=cn_col01>
<table width="100%" border="0" cellspacing="1" cellpadding="1">
	<THEAD>
	
                          <tr height="20"> 
                            <tH width="100"  class="formlistTitle" >角色名称</tH>
                            <tH class="formlistTitle" >角色代码</tH>
                            <tH class="formlistTitle" >角色范围</tH>
                            <tH class="formlistTitle" >角色说明</tH>
                            <tH class="formlistTitle" >操作</tH>
                          </tr>
</THEAD>
<TBODY>
<%
	sql = "select * from mova_role order by rolecode"
	set movaRs=conn.execute(sql)
	if movaRs.eof or movaRs.bof then
		%>
													<tr height="20"> 
                            <td colspan=4>没有角色，<a href="addRole.asp">添加角色</a></td>
                          </tr>
		<%
	else
			do
				if movaRs.eof or movaRs.bof then 
					exit do 
				else 
					rolename = movaRs("rolename")
					rolecode=movaRs("rolecode")
					mova_roleid=movaRs("mova_roleid")
					role_scope = movaRS("scope")
					description = movaRs("description")
					if roleName ="" then rolename = "-"
		%>
													<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
                            <td  ><a href="modiRole.asp?mova_roleid=<%=mova_roleid%>" class="tablelist"><%=rolename%> </a></td>
                            <td  ><a href="modiRole.asp?mova_roleid=<%=mova_roleid%>" class="tablelist"> <%=rolecode%> </a></td>
                            
                            <td  ><a href="modiRole.asp?mova_roleid=<%=mova_roleid%>" class="tablelist"> <%=role_scope%> </a></td>
                            <td  ><a href="modiRole.asp?mova_roleid=<%=mova_roleid%>" class="tablelist"> <%=description%> </a></td>
                            <td  ><a href="delRole_.asp?mova_roleid=<%=mova_roleid%>" onClick="return confirm('是否删除该角色')" class="tablelist">删除</a></td>
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
