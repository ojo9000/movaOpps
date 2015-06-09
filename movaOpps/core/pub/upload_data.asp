<!--#include file = "include.asp" -->
<%
function GetExtendName(FileName)
	dim ExtName
	I = InstrRev(FileName,".")
	ExtName = Right(FileName,len(FileName)-I)
	GetExtendName = ExtName
end function

function GetMainName(FileName)
	dim MainName
	'Response.Write FileName
	'Response.End 
	I = InstrRev(FileName,".")
	MainName = Left(FileName,I-1)
	GetMainName = MainName
end function

iname = req("iname")
if iName="" then 
	call MsgBox("将保存的相对路径名称不能为空",1)
End If
Application.Lock
	Application("Download") = "/webpic/"	
Application.UnLock

If Request.ServerVariables("REQUEST_METHOD") = "POST" and req("type")<>"" Then
	UpdFileName = req("upfilename")
	ExtName		= GetExtendName(UpdFileName)
	'Response.End
	call CreateDIR(Application("Download"))

	Set Fs		   = Server.CreateObject("scripting.filesystemobject")
	Set objUpload  = Server.CreateObject("aspcn.upload")

	ImgDirectory   = Server.MapPath(Application("Download"))
	TempFileName	  =  Cstr(NowFlag) & "." & ExtName

	Tfile = server.MapPath(Application("Download")& TempFileName)

	objupload.maxsize	= 999999999 'Application("MaxUpLoadDataSize")	'设定文件最大长度不超过100K,默认值为100K
	objupload.overwrite	= 2				'设定如果目标文件存在，进行覆盖，默认为1，表示不能覆盖	
	objupload.path		= ImgDirectory	'设定上传到服务器的路径，这里必须为绝对路径，默认值为c:\
	objupload.uptofile	= 1				'设置为上传后保存为文件
	objUpload.NewFileName =  TempFileName
	varResult = objUpload.Upload		'调用upload方法将文件保存
	
	If varResult<>"OK" Then	Call Msgbox("上传失败!",1) '如果varResult返回OK,则文件上载成功
	
	'获得上传的参数
	Size		= objUpload.size("file1")
	set objUpload = nothing
	Set Fs		= nothing 

	NewsID		  = Trim(Session("newsID"))
	Filelink	  = Application("Download") & TempFileName
	FileName	  = TempFileName
	%>	
	   <script language="javascript">
	      if(parent.document.all.<%=iname%>){parent.document.all.<%=iname%>.value = '<%=FileLink%>';}
	      if(parent.document.all.imgPreview){parent.document.all.imgPreview.src = '<%=FileLink%>';}
	      //alert(parent.document.all.<%=iname%>.value);
	      history.back();
	   </script>
	<%
Response.End 
end if
%>

<style type="text/css">
A:visited {COLOR: #000000; TEXT-DECORATION: none}
A:active {COLOR: #000000; TEXT-DECORATION: none}
A:link {COLOR: #000000; TEXT-DECORATION: none}
A:hover {COLOR: #ff6600; text-deroration: none}
.text
{
    FONT-SIZE: 9pt
    COLOR: #000000;
    FONT-FAMILY: 宋体;
    TEXT-DECORATION: none
}
TABLE,td {FONT-SIZE: 9pt}

.stinput
{	BORDER-TOP-WIDTH: 1px; 
	PADDING-RIGHT: 1px; 
	PADDING-LEFT: 1px; 
	BORDER-LEFT-WIDTH: 1px; 
	FONT-SIZE: 9pt; 
	BORDER-LEFT-COLOR: #cccccc; 
	BORDER-BOTTOM-WIDTH: 1px; 
	BORDER-BOTTOM-COLOR: #cccccc; 
	PADDING-BOTTOM: 1px; 
	BORDER-TOP-COLOR: #cccccc; 
	PADDING-TOP: 1px; 
	BORDER-RIGHT-WIDTH: 1px; 
	BORDER-RIGHT-COLOR: #cccccc;
	HEIGHT: 22px; 
	FONT-FAMILY: 宋体;
}
</style>

<body topmargin=0 leftmargin=0 bgcolor=#EFEFEF>
	   <script language="javascript">
	      function checkit() {
			if(!document.all.file1.value)
				{
					alert('请先选择要上传的文件');
					return false;
					}
			else
			{
				//alert(window.document.forms[0].action);
				window.document.forms[0].action = window.document.forms[0].action +'&upfilename=' + document.all.file1.value;
				//alert(window.document.forms[0].action);
				return true;
				}
				
	      }
	   </script>
<table border=0 width=100%  cellpadding=1 cellspacing=0 height=100%>
<FORM id="updform" name="updform" 
action="upload_data.asp?type=save&iname=<%=iname%>" method=post enctype="multipart/form-data" target="_self"
onsubmit="return checkit();">
<tr><td align=left><input type=file  size="11"  id="file1" name="file1" class=stinput>
 <input type=submit class=stinput value="上传" id=button1 name="supload">
 </td></tr>
 </form></table>
 