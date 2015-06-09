<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<% chkAccountStr "muExtMenu" %>
<%
	 'modi code:
Dim customer_id
Dim sqlString
Dim FRM_sync_remote,condition,securitySQL,order,FRM_mu_ext_menu_id,FRM_sort_no,FRM_menu_url,FRM_menu_name
Dim FRM_ext_domain,FRM_ext_menu,FRM_popup_url,FRM_security_code
'Dim Form_Frm
Dim FRM_logo_pic,FRM_company,FRM_extDomain

sqlString = "select * from mu_config where customer_no='" & session("customerNo") & "'"
executeQuery conn,movaRS,sqlString,1,1
if movaRS.bof or movaRS.eof then
	movaRS.close
	msgbox "记录不存在，或者您打开了一个错误的页面",1
 
end if 

'Dim Form_Frm
FRM_sync_remote = movaRS("sync_remote")
FRM_ext_domain = movaRS("ext_domain")
FRM_ext_menu = movaRS("ext_menu")
FRM_popup_url	= movaRS("popup_url")
FRM_security_code = movaRS("security_code")
%>
<script>
	function chk()
	{
		var str;
		str="";
		
 
		return showInputError(str);
	}
	
	
	function openFileWindow(jsObject,allowExt,allowSize,filePath,fileName){
	var str;
	var fileUrl ="/movaOpps/opp/upload/pub_form.asp?jsObject=" + jsObject + "&allowExt=" + allowExt + "&allowSize=" + allowSize + "&filePath=" + filePath + "&fileName=" + fileName
	str=window.open(fileUrl,"FileWindow","scrollbars=yes,width=450,height=20");  
	str.opener = self;
	if (str.focus) str.focus();
}



</script>

<div class="cn_list_title">外挂菜单配置</font></div> 
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
 <form action="extMenu_.asp" method="post" name="mainform" id="mainform" onSubmit="return chk()"> 
	<input type="hidden" name="customer_no" value="<%=session("customerNo")%>">
  <TBODY>
 <!--tr>
    <TD class=cn_td09 align=right valign="top">外挂菜单名称:</TD>
    <TD align=left>
    	
    	 <br>如果不启用外挂菜单，请保持此项为空
    </TD> 
 </tr-->
 <INPUT name=ext_menu type=hidden size=50 class=cn_input03 value="<%=FRM_ext_menu%>">
    	 <INPUT name=ext_menu_bk type=hidden    value="<%=FRM_ext_menu%>">
 <tr>
    <TD class=cn_td09 align=right valign="top">外挂域名:</TD>
    <TD align=left><INPUT name=ext_domain type=text size=50 class=cn_input03 value="<%=FRM_ext_domain%>">{DOMAIN}
    	<br>使用外挂域名，请确保该网址能正常访问。（通常为已经登录该网址所对应的系统）
    </TD> 
 </tr>
 
 
	<tr>
    <TD class=cn_td09 align=right valign="top"> </TD>
    <TD align=left colspan=3 >
    <button class="cn_button01" type="submit" onClick="return chk()">保存</button>
    
    <button class="cn_button01" type="button" onClick="reflash()">更新缓存</button> 如果更新缓存，则当前所做的系统默认信息将进行统一刷新
 		</TD></TR>
  <TR>
  </TBODY></FORM></TABLE>
  <script>
  	function reflash(){
  		if (confirm("您确定更新缓存吗？\n更新缓存后，所有账户必须重新登录系统才能生效。")){
  			window.location.href="/movaOpps/core/system/picklist/cache.asp";
  		}	
  	}
	</script>
</div>
<%if FRM_ext_menu <>"" then %>
	<div class="cn_list_title">外挂菜单</div>
	<DIV class=cn_col>当您指定外挂功能域名时，请指定具体的功能清单，以此提供用户界面操作。
		<br>菜单网址，可以包含外挂域名通配符{DOMAIN}。
	<TABLE border=0 cellSpacing=1 cellPadding=0>
  <THEAD> 
          	<TR>
						<TH>上级节点</TH>
						<TH>菜单名称</TH>
            <TH>菜单网址</TH>
            <TH>排序</TH>
	          <TH>操作</TH>
   </TR>
</tr>	
</THEAD>
<TBODY>
	<FORM id=form method=post name="extmenuForm" action=extMenuList_.asp>
		<input type="hidden" name="customer_no" value="<%=session("customerNo")%>">
		<input type="hidden" name="mu_ext_menu_id" value="0">
		<input type="hidden" name="actionType" value="NEW">
  	<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
  		<td><font color=red>*</font>
  			<select name="parentId"> 
  				<%=picklist("select top 1  0 as selectvalue,'根' as txt from mova_function union select  mova_functionid as selectvalue,functionname as txt from mova_function  where parent_id=0","0")%>
  			</select>
					</td>
					
  	  		<td><font color=red>*</font><input class=cn_input03  type="text" name="menu_name" value="">
					</td>
					<td>
						<font color=red>*</font><input class=cn_input03  type="text" name="menu_url" value="" size=50> 
					</td>
					<td><input type="text"  class=cn_input03 name="sort_no" value="99" ></td>	
					<td><button class=cn_button06  type="submit" onClick="return chkRule(this.form)">新增保存</button></TD>
  	</TR>
 </form>
 
   	<% 			
			 
 			sqlString="select * from mu_ext_menu where archive='F' and customer_no='"& session("customerno") &"'  order by sort_no "
 		 
			sqlString=sqlString & condition & securitySQL &  order 
			 
			executeQuery conn,movaRS,sqlString, 1, 1
			do 
				if movaRS.eof or movaRS.bof then exit do
				FRM_menu_name = movaRS("menu_name")
				FRM_menu_url = movaRS("menu_url")
				FRM_sort_no = movaRS("sort_no") 
				FRM_mu_ext_menu_id = movaRS("mu_ext_menu_id")
				FRM_parent_id= movaRS("parent_id")
%>
	<FORM id=form method=post name="extmenuForm<%=FRM_mu_ext_menu_id%>" action=extMenuList_.asp>
		<input type="hidden" name="customer_no" value="<%=session("customerNo")%>">
		<input type="hidden" name="mu_ext_menu_id" value="<%=FRM_mu_ext_menu_id%>">
		<input type="hidden" name="actionType" value="MODIFY">
  	<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
  		<td> 
  			<select name="parentId"> 
  				<%=picklist("select top 1  0 as selectvalue,'根' as txt from mova_function union select  mova_functionid as selectvalue,functionname as txt from mova_function  where parent_id=0",FRM_parent_id)%>
  			</select>
					</td>
  	  		<td><font color=red>*</font><input class=cn_input03  type="text" name="menu_name" value="<%=FRM_menu_name%>">
					</td>
					<td>
						<font color=red>*</font><input class=cn_input03  type="text" name="menu_url" value="<%=FRM_menu_url%>" size=50> 
					</td>
					<td><input type="text"  class=cn_input03 name="sort_no"  value="<%=FRM_sort_no%>"></td>	
					<td>
						<button class=cn_button01  type="submit" onClick="this.form.actionType.value='MODIFY'">保存</button>
						<button class=cn_button01  type="submit" onClick="return chkDel_extMenu(this.form)">删除</button>
					</td>
  	</tr>
 </form>
<%			
			movaRS.Movenext 
		Loop
%>
<script>
		function chkDel_extMenu(form){
			if (confirm("您确定需要删除这个菜单吗?")){
				 form.actionType.value='DELETE';
				return true;
			}else{
				return false;	
			}
		}
</script> 

 
 </TBODY>
</table>
</div> 
	
	
<%end if %>
 	 <br>
 <br>
 <br>
 <br>
 <br> 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->