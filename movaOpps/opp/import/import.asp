<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->

<% chkAccountStr "dataImport" %>
<%
Dim importTimestamp  

if session("import_batch_no")<>"" then 
	importTimestamp = session("import_batch_no")
else
	importTimestamp  = getTimestamp()
	session("import_batch_no") = importTimestamp
end if 
%>
<script>
	function confirmRollback(){
		document.mainform1.import_batch_no.value = document.mainform1.import_batch_no.value.trim();
		str="";
		if (document.mainform1.import_batch_no.value==""){
			str=str +  "批次号必须输入" + "\n";
		}
		if (document.mainform1.objectCode.value==""){
			str=str +  "业务模型必须输入" + "\n";
		}
		
	 	if (str!=""){
			str="对不起，您的输入不正确!\n---------------------------------\n" + str;
			alert(str);
			return false;
		}else {
			return confirm("您确定需要回退批次" + document.mainform1.import_batch_no.value + "的导入操作吗?");	
		}
		
	}
	
	function chkImport(isStart){
		var str;
		str="";
		if (document.mainform.objectCode.value==""){
			str=str +  "业务模型必须输入" + "\n";
		}
		if (document.mainform.team.value==""){
			str=str +  "默认组必须输入" + "\n";
		}
		if (document.mainform.team.value==""){
			str=str +  "必须选择一个导入文件。" + "\n";
		}
		if (str!=""){
			str="对不起，您的输入不正确!\n---------------------------------\n" + str;
			alert(str);
			return false;
		}else {
			document.mainform.isStart.value=isStart;
			return  confirm("您确定开始导入吗？");
		}
	}
	
 	function openFileWindow(jsObject,allowExt,allowSize,filePath,fileName){
		var str;
		var fileUrl ="/movaOpps/opp/upload/pub_form.asp?jsObject=" + jsObject + "&allowExt=" + allowExt + "&allowSize=" + allowSize + "&filePath=" + filePath + "&fileName=" + fileName
		str=window.open(fileUrl,"FileWindow","scrollbars=yes,width=450,height=20");  
		str.opener = self;
		if (str.focus) str.focus();
		}
</script>
 <div class="cn_list_title">数据导入</div> 
<div class="cn_list_title_right"></div>
<DIV class=cn_col01>
<table width="100%" border="0" cellspacing="0" cellpadding="5">
 <form name="mainform" method="post" action="import_.asp">
	<input type="hidden" name="isStart" value="0">
	<tr height="20"> 
    <td  class="cn_td09" ><font color=red>*</font>导入批次:</td>
    <td class="" ><input   name="import_batch_no" type="hidden"  value="<%=importTimestamp%>" size="30" maxlength="20"> 
    	 <b><font color=red size=+1><%=importTimestamp%></font></b> 请记住该批次号,以便进行导入回退操作。 
    </td>
  </tr>
  <tr height="20">
    <td  class="cn_td09" ><font color=red>*</font>倒入文件:</td>
    <td class="" >
    	<INPUT name=import_file type=text size=50 class=cn_input03 value=""><button class="cn_button01" type="button" onClick="openFileWindow('document.mainform.import_file','XLS','100000','client/file','import_<%=session("customerNo")%>')">上传附件</button>
    	<br>仅支持office2003的电子表格文件的第一个工作表，请不要更改工作表的名称。
    	<br>电子表格第一行为字段名字，请输入业务模型的数据字典中字段名称。
    </td>
  </tr>
   <tr height="20">
    <td  class="cn_td09" ><font color=red>*</font>业务模型:</td>
    <td class="" >
    	<select name="objectCode" >
    		<option value=""/>
    		<%=picklist("SELECT object_code as selectvalue,[object_name] as txt FROM mu_object  WHERE is_publish='T' order by [object_name]","")%>
			</select>
    </td>
  </tr>
   <tr height="20">
    <td  class="cn_td09" ><font color=red>*</font>默认组:</td>
    <td class="" >
    		<select name="team">
   										<option value=""></option>
    									<%=getUserTeamPicklist("","")%>
    								</select>如果需要导入组信息，则需要定义一个列名为"team"
    </td>
  </tr>
   <tr bgcolor="#FFFFFF" class="mainbuttomline"> 
   <td width="100" align="right"   valign="top" ></td>
   <td > <input class="cn_button01"  name="submit" type="submit" onClick="return chkImport(0)" value="导入">
   	<input class="cn_button06"  name="submit" type="submit" onClick="return chkImport(1)" value="新批次导入">
   	新批次导入，将重新生成新的批次号。以便进行分批次回退操作
   	</td>
 </tr>
</table> 
      </form>
</div>
<div class="cn_list_title">回退导入</div> 
 <DIV class=cn_col01>
<table width="100%" border="0" cellspacing="0" cellpadding="5">
 <form name="mainform1" method="post" action="rollbackImport_.asp">
	<input type="hidden" name="object" value="mova_role">
	<tr height="20"> 
    <td  class="cn_td09" ><font color=red>*</font>导入批次:</td>
    <td class="" ><input  class=cn_input03  name="import_batch_no" type="text"  size="30" maxlength="20"> 
    </td>
  </tr>
   <tr height="20">
    <td  class="cn_td09" ><font color=red>*</font>业务模型:</td>
    <td class="" >
    	<select name="objectCode" >
    		<option value=""/>
    		<%=picklist("SELECT object_code as selectvalue,[object_name] as txt FROM mu_object  WHERE is_publish='T' order by [object_name]","")%>
			</select>
    </td>
  </tr>
   <tr bgcolor="#FFFFFF" class="mainbuttomline"> 
   <td width="100" align="right"   valign="top" ></td>
   <td  > <input class="cn_button01"  name="submit" onClick="return confirmRollback()" type="submit" value="回退"></td>
 </tr>
</table> 
      </form>
</div> 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->