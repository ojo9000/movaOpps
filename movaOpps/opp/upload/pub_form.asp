<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!DOCTYPE HTML PUBLIC "-/[/W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD> 
<META content="text/html; charset=gb2312" http-equiv=Content-Type> 
<LINK rel=stylesheet type=text/css  href="<%=movaStyle%>/style.css">
<title>附件上传</title>
<META name=GENERATOR content="MSHTML 8.00.6001.18928"></HEAD>
<BODY  >

<%
	Dim FRM_jsObject ,FRM_allowExt,FRM_allowSize,FRM_filePath,FRM_fileName
	FRM_jsObject = req("jsObject")
	FRM_allowExt = req("allowExt")
	FRM_allowSize = req("allowSize")
	FRM_filePath = req("filePath")
	FRM_fileName = req("fileName")
%>

 <form action="pub_upload.asp?allowSize=<%=FRM_allowSize%>" method="post" name="mainform" id="mainform" enctype="multipart/form-data"> 
		<input type="hidden" name="jsObject" value="<%=FRM_jsObject%>">
		<input type="hidden" name="allowExt" value="<%=FRM_allowExt%>">
		<input type="hidden" name="filePath" value="<%=FRM_filePath%>">
		<input type="hidden" name="fileName" value="<%=FRM_fileName%>">
			<input class=cn_input03 type=file name=uploadfile size=40  >
			<BUTTON class=cn_button01 name="aaa" type=submit >上传</button>
			<br>
			说明：<br>
			&nbsp;&nbsp;1)&nbsp;&nbsp;只允许上传&nbsp;&nbsp;<%=replace(FRM_allowExt,"|","，")%>&nbsp;&nbsp;的文件<BR>
			&nbsp;&nbsp;2)&nbsp;&nbsp;最多只能上传大小为 <%=FRM_allowSize%>K 的文件
  </form>
   
</BODY></HTML>


