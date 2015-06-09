<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->

<script>
	function clearPlugin(keyid){
		var saveData="1";
		if (confirm("确定需要卸载插件吗?")){
			if (confirm("确定保留该插件所涉及的业务数据吗？")){
				saveData="1";
			}else{
				saveData = "0";
			}
			window.location.href="clearPlugin_.asp?saveData=" + saveData + "&plugin_no=" + keyid ;
		}else{
			return false;	
		};
	}
</script>
<%
Dim FRM_plugin_id 

FRM_plugin_id=getParamID(req("keyid"))
%>
<DIV class=cn_main>
<div class="cn_list_title">已经安装的插件列表 </div>
<div class="cn_list_title_right"><a href="installPlugins.asp">安装新插件</a></div>
<DIV class=cn_col>

<TABLE border=0 cellSpacing=1 cellPadding=0>
  <THEAD>
  	<TR>
            <TH>插件代码</TH>
            <TH>插件名称</TH>
            <TH>版本</TH>
            <TH>更新日期</TH>
            <TH></TH>
   	</TR>
   </THEAD>
  <TBODY>
<% 			
 			Dim sqlString
 			Dim FRM_plugin_name,FRM_plugin_no,FRM_version,FRM_createdate
 			sqlString="select * from mova_plugin  "
			sqlString = sqlString & " order by plugin_name" 			
			executeQuery conn,movaRS,sqlString, 1, 1
			do 
				if movaRS.eof or movaRS.bof then exit do
				FRM_plugin_id = movaRS("plugin_id")
				FRM_plugin_name = movaRS("plugin_name")
				FRM_plugin_no = movaRS("plugin_no")
				FRM_version = movaRS("version")
				FRM_createdate = formatdate(movaRS("createdate"),2)
%>
  	<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
					<td><%=FRM_plugin_no %></TD>
  	  		<td><%=FRM_plugin_name %></TD>
  	  		<td><%=FRM_version %></TD>
  	  		<td><%=FRM_createdate %></TD>
  	  		<td>
  	  			<a href="#" onClick="return clearPlugin('<%=FRM_plugin_no%>')">删除</a>
					</TD> 
  	</TR>
<%			
			movaRS.Movenext
		Loop
%>
</Tbody>
</table> 
</div>
</div>
 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
<!--

SELECT * FROM mu_object WHERE object_code='M00_K000000042' AND archive='F';

SELECT * FROM mu_object_field WHERE [object_id] = (SELECT [object_id] FROM mu_object WHERE object_code='M00_K000000042' AND archive='F') AND archive='F';

SELECT * FROM mu_object_field WHERE 
[object_id] = (SELECT [object_id] FROM mu_object WHERE object_code='M00_K000000042' AND archive='F') AND archive='F'
AND FIELD_TYPE<>'VARCHAR' AND FIELD_TYPE<>'INT' AND FIELD_TYPE<>'TIME' AND FIELD_TYPE<>'TEXT';


SELECT * FROM mu_mpl_search mms  WHERE [object_CODE] = 'M00_K000000042' AND archive='F';
SELECT * FROM mu_mpl_condition mmc WHERE mu_mpl_search_id=(SELECT [object_id] FROM mu_object WHERE object_code='M00_K000000042' AND archive='F') AND archive='F';
SELECT * FROM mu_mpl_group mmg WHERE mu_mpl_search_id=(SELECT [object_id] FROM mu_object WHERE object_code='M00_K000000042' AND archive='F') AND archive='F';
SELECT * FROM mu_mpl_order mmo WHERE mu_mpl_search_id=(SELECT [object_id] FROM mu_object WHERE object_code='M00_K000000042' AND archive='F') AND archive='F';
SELECT * FROM mu_mpl_pre_condition mmpc WHERE mu_mpl_search_id=(SELECT [object_id] FROM mu_object WHERE object_code='M00_K000000042' AND archive='F') AND archive='F';
SELECT * FROM mu_mpl_select mms WHERE mu_mpl_search_id=(SELECT [object_id] FROM mu_object WHERE object_code='M00_K000000042' AND archive='F') AND archive='F';



SELECT * FROM mu_item WHERE item_code IN (
	SELECT DISTINCT field_type FROM mu_object_field WHERE 
[object_id] = (SELECT [object_id] FROM mu_object WHERE object_code='M00_K000000042' AND archive='F') AND archive='F'
AND FIELD_TYPE<>'VARCHAR' AND FIELD_TYPE<>'INT' AND FIELD_TYPE<>'TIME' AND FIELD_TYPE<>'TEXT') AND archive='F';

SELECT * FROM mu_item_list WHERE item_id IN (
	SELECT item_id FROM mu_item WHERE item_code IN (
	SELECT DISTINCT field_type FROM mu_object_field WHERE 
[object_id] = (SELECT [object_id] FROM mu_object WHERE object_code='M00_K000000042' AND archive='F') AND archive='F'
AND FIELD_TYPE<>'VARCHAR' AND FIELD_TYPE<>'INT' AND FIELD_TYPE<>'TIME' AND FIELD_TYPE<>'TEXT') AND archive='F'
) AND archive='F';

-->
