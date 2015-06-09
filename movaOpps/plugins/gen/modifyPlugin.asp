<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<% chkAccountStr "info_User" %>
<%
Dim mova_userid,sqlString

'Dim Form_Frm
Dim  FLD_plugin_id,FLD_plugin_no

FLD_plugin_id	= getParamID(req("keyid"))
FLD_plugin_no = req("pluginNo")

sqlString = "select * from mova_plugin where plugin_id=" &  FLD_plugin_id  & " or plugin_no='"& FLD_plugin_no &"'"
executeQuery conn,movaRS,sqlString,1,1
if movaRS.bof or movaRS.eof then
movaRS.close
closedatabase
'msgbox "记录不存在，或者您打开了一个错误的页面",1
end if 

Dim FRM_plugin_name,FRM_version,FRM_plugin_no,pluginNo
'Dim Form_Frm
FRM_plugin_name = movaRS("plugin_name")
FRM_version = movaRS("version")
FRM_plugin_no = movaRS("plugin_no")
FLD_plugin_id = movaRS("plugin_id")
pluginNo = FRM_plugin_no
%>

<script>
	function chk()
	{
		var str;
		str="";
		
		if (document.mainform.version.value==""){
			str=str +  "版本号必须输入" + "\n";
		}
	 	
	 	if (document.mainform.plugin_name.value==""){
			str=str +  "插件名称必须输入" + "\n";
		}
		
		return showInputError(str);
	}
	
	
	function chkDel(keyid,pluginNo){
		if (confirm("确定需要删除吗？")){
			window.location.href="delPlugin_.asp?pluginNo="+ pluginNo +"&keyid=" + keyid ;
		};
	}
	function chkDelItem(keyid,pluginNo){
		if (confirm("确定需要删除吗？")){
			window.location.href="delPluginItem_.asp?pluginNo="+ pluginNo +"&keyid=" + keyid ;
		};
	}
	
	
	
	function generatePlugins(keyid){
		if (confirm("确定生成插件脚本吗？")){
			window.location.href="generatePlugins_.asp?keyid=" + keyid ;
		};
	}
	
</script> 
<DIV class=cn_main>
<div class="cn_list_title">编辑插件</div> 
<div class="cn_list_title_right"><a href="plugin.asp">插件管理</a></div>
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
  <FORM id=form method=post name=mainform action=plugin_.asp>
  <input type="hidden" name="plugin_id" value="<%=FLD_plugin_id%>">
  <TBODY>
  	<tr><td  class="cn_td09" >插件编码<font color=red>*</font>:</td><td><%=FRM_plugin_no%></td></tr>
  	<tr><td  class="cn_td09" >插件名称<font color=red>*</font>:</td><td><INPUT class=cn_input03 type=text name=plugin_name size=40 value="<%=FRM_plugin_name%>"></td></tr>
  	<tr><td  class="cn_td09" >版本号<font color=red>*</font>:</td><td><INPUT class=cn_input03 type=text name=version size=20 value="<%=FRM_version%>"></td></tr>
  	<tr><td  class="cn_td09" ></td><td>
  		<BUTTON class=cn_button03 type=submit onClick="return chk()" >保存</button>
  		<BUTTON class=cn_button03 type=button onClick="return chkDel('<%=FLD_plugin_id%>')" >删除</button>
  		<BUTTON class=cn_button03 type=button onClick="generatePlugins('<%=FLD_plugin_id%>')" >生成脚本</button>
  		</td></tr>
  		
	</TBODY>
	</FORM>
</TABLE>
</div>

<div class="cn_list_title">插件模型列表</div> 
<div class="cn_list_title_right"></div>
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
	  <THEAD>
  	<TR>
            <TH>业务模型</TH>
            <TH>模型编码</TH>
            <TH></TH>
   	</TR>
   </THEAD>
  <TBODY>
	<% 			
 			Dim FRM_object_name,FRM_plugin_object_id,FRM_object_code
 			sqlString="select po.plugin_object_id,po.plugin_no,mo.* from mova_plugin_object po ,mu_object mo WHERE po.object_code=mo.object_code "
 			sqlString = sqlString & " and po.plugin_no='"& FRM_plugin_no &"'"
 			sqlString = sqlString & " order by mo.object_code"
 			'response.write sqlString
			executeQuery conn,movaRS,sqlString, 1, 1
			do 
				if movaRS.eof or movaRS.bof then exit do
				FRM_plugin_object_id = movaRS("plugin_object_id")
				FRM_object_name = movaRS("object_name")
				FRM_object_code = movaRS("object_code")
				'FRM_plugin_no = movaRS("plugin_no")
%>
  	<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
  	  		<td><%=FRM_object_name %></TD>
  	  		<td><%=FRM_object_code %></TD>
  	  		<td>
  	  			<a href="#" onClick="chkDelItem('<%=FRM_plugin_object_id%>','<%=FRM_plugin_no%>')">删除</a>
  	  		</TD>
  	</TR>
<%			
			movaRS.Movenext
		Loop
%>
		<FORM id=form method=post name=mainform action=pluginObject_.asp>
			<input type="hidden" name="plugin_no" value="<%=pluginNo%>">
			<input type="hidden" name="keyid" value="<%=FLD_plugin_id%>">
			<TR >
  	  		<td colspan=3>
  	  			<select name="object_code">
  	  				<option value=""></option>
  	  				<%=picklist("SELECT object_code as selectvalue, object_code +'  ' + object_name as txt  FROM mu_object  mo WHERE mo.is_publish='T' ORDER BY object_code","") %>
  	  			</select>
  	  			<BUTTON class=cn_button03 type=submit onClick="return chk()" >新增保存</button>
   	  		</TD>
  	</TR>
  	</form>
	</TBODY>
</table>
</div>
</div>
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->