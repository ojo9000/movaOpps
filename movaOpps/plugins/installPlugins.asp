<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<script>
 
	
	function chkInstall(isStart){
		var str;
		str="";
 
		if (document.mainform.import_file.value.trim()==""){
			str=str +  "����ѡ��һ������ļ���" + "\n";
		}
		if (str!=""){
			str="�Բ����������벻��ȷ!\n---------------------------------\n" + str;
			alert(str);
			return false;
		}else {
			document.mainform.isStart.value=isStart;
			return  confirm("��ȷ����ʼ��װ��");
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
 <div class="cn_list_title">�����װ</div> 
<div class="cn_list_title_right"></div>
<DIV class=cn_col01>
<table width="100%" border="0" cellspacing="0" cellpadding="5">
 <form name="mainform" method="post" action="installPlugins_.asp">
	<input type="hidden" name="isStart" value="0">
  <tr height="20">
    <td  class="cn_td09" ><font color=red>*</font>�������ļ�:</td>
    <td class="" >
    	<INPUT name=import_file type=text size=50 class=cn_input03 value=""><button class="cn_button01" type="button" onClick="openFileWindow('document.mainform.import_file','sc','100000','client/file','import_<%=session("customerNo")%>')">�ϴ�����</button>
    	<br>��֧�ֲ���ļ�
    </td>
  </tr>
   
   <tr bgcolor="#FFFFFF" class="mainbuttomline"> 
   <td width="100" align="right"   valign="top" ></td>
   <td > <input class="cn_button01"  name="submit" type="submit" onClick="return chkInstall(0)" value="��װ">  
   	</td>
 </tr>
</table> 
      </form>
</div>
 
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->