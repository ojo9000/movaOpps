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
			str=str +  "���κű�������" + "\n";
		}
		if (document.mainform1.objectCode.value==""){
			str=str +  "ҵ��ģ�ͱ�������" + "\n";
		}
		
	 	if (str!=""){
			str="�Բ����������벻��ȷ!\n---------------------------------\n" + str;
			alert(str);
			return false;
		}else {
			return confirm("��ȷ����Ҫ��������" + document.mainform1.import_batch_no.value + "�ĵ��������?");	
		}
		
	}
	
	function chkImport(isStart){
		var str;
		str="";
		if (document.mainform.objectCode.value==""){
			str=str +  "ҵ��ģ�ͱ�������" + "\n";
		}
		if (document.mainform.team.value==""){
			str=str +  "Ĭ�����������" + "\n";
		}
		if (document.mainform.team.value==""){
			str=str +  "����ѡ��һ�������ļ���" + "\n";
		}
		if (str!=""){
			str="�Բ����������벻��ȷ!\n---------------------------------\n" + str;
			alert(str);
			return false;
		}else {
			document.mainform.isStart.value=isStart;
			return  confirm("��ȷ����ʼ������");
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
 <div class="cn_list_title">���ݵ���</div> 
<div class="cn_list_title_right"></div>
<DIV class=cn_col01>
<table width="100%" border="0" cellspacing="0" cellpadding="5">
 <form name="mainform" method="post" action="import_.asp">
	<input type="hidden" name="isStart" value="0">
	<tr height="20"> 
    <td  class="cn_td09" ><font color=red>*</font>��������:</td>
    <td class="" ><input   name="import_batch_no" type="hidden"  value="<%=importTimestamp%>" size="30" maxlength="20"> 
    	 <b><font color=red size=+1><%=importTimestamp%></font></b> ���ס�����κ�,�Ա���е�����˲����� 
    </td>
  </tr>
  <tr height="20">
    <td  class="cn_td09" ><font color=red>*</font>�����ļ�:</td>
    <td class="" >
    	<INPUT name=import_file type=text size=50 class=cn_input03 value=""><button class="cn_button01" type="button" onClick="openFileWindow('document.mainform.import_file','XLS','100000','client/file','import_<%=session("customerNo")%>')">�ϴ�����</button>
    	<br>��֧��office2003�ĵ��ӱ���ļ��ĵ�һ���������벻Ҫ���Ĺ���������ơ�
    	<br>���ӱ���һ��Ϊ�ֶ����֣�������ҵ��ģ�͵������ֵ����ֶ����ơ�
    </td>
  </tr>
   <tr height="20">
    <td  class="cn_td09" ><font color=red>*</font>ҵ��ģ��:</td>
    <td class="" >
    	<select name="objectCode" >
    		<option value=""/>
    		<%=picklist("SELECT object_code as selectvalue,[object_name] as txt FROM mu_object  WHERE is_publish='T' order by [object_name]","")%>
			</select>
    </td>
  </tr>
   <tr height="20">
    <td  class="cn_td09" ><font color=red>*</font>Ĭ����:</td>
    <td class="" >
    		<select name="team">
   										<option value=""></option>
    									<%=getUserTeamPicklist("","")%>
    								</select>�����Ҫ��������Ϣ������Ҫ����һ������Ϊ"team"
    </td>
  </tr>
   <tr bgcolor="#FFFFFF" class="mainbuttomline"> 
   <td width="100" align="right"   valign="top" ></td>
   <td > <input class="cn_button01"  name="submit" type="submit" onClick="return chkImport(0)" value="����">
   	<input class="cn_button06"  name="submit" type="submit" onClick="return chkImport(1)" value="�����ε���">
   	�����ε��룬�����������µ����κš��Ա���з����λ��˲���
   	</td>
 </tr>
</table> 
      </form>
</div>
<div class="cn_list_title">���˵���</div> 
 <DIV class=cn_col01>
<table width="100%" border="0" cellspacing="0" cellpadding="5">
 <form name="mainform1" method="post" action="rollbackImport_.asp">
	<input type="hidden" name="object" value="mova_role">
	<tr height="20"> 
    <td  class="cn_td09" ><font color=red>*</font>��������:</td>
    <td class="" ><input  class=cn_input03  name="import_batch_no" type="text"  size="30" maxlength="20"> 
    </td>
  </tr>
   <tr height="20">
    <td  class="cn_td09" ><font color=red>*</font>ҵ��ģ��:</td>
    <td class="" >
    	<select name="objectCode" >
    		<option value=""/>
    		<%=picklist("SELECT object_code as selectvalue,[object_name] as txt FROM mu_object  WHERE is_publish='T' order by [object_name]","")%>
			</select>
    </td>
  </tr>
   <tr bgcolor="#FFFFFF" class="mainbuttomline"> 
   <td width="100" align="right"   valign="top" ></td>
   <td  > <input class="cn_button01"  name="submit" onClick="return confirmRollback()" type="submit" value="����"></td>
 </tr>
</table> 
      </form>
</div> 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->