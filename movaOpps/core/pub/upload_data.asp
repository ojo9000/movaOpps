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
	call MsgBox("����������·�����Ʋ���Ϊ��",1)
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

	objupload.maxsize	= 999999999 'Application("MaxUpLoadDataSize")	'�趨�ļ���󳤶Ȳ�����100K,Ĭ��ֵΪ100K
	objupload.overwrite	= 2				'�趨���Ŀ���ļ����ڣ����и��ǣ�Ĭ��Ϊ1����ʾ���ܸ���	
	objupload.path		= ImgDirectory	'�趨�ϴ�����������·�����������Ϊ����·����Ĭ��ֵΪc:\
	objupload.uptofile	= 1				'����Ϊ�ϴ��󱣴�Ϊ�ļ�
	objUpload.NewFileName =  TempFileName
	varResult = objUpload.Upload		'����upload�������ļ�����
	
	If varResult<>"OK" Then	Call Msgbox("�ϴ�ʧ��!",1) '���varResult����OK,���ļ����سɹ�
	
	'����ϴ��Ĳ���
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
    FONT-FAMILY: ����;
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
	FONT-FAMILY: ����;
}
</style>

<body topmargin=0 leftmargin=0 bgcolor=#EFEFEF>
	   <script language="javascript">
	      function checkit() {
			if(!document.all.file1.value)
				{
					alert('����ѡ��Ҫ�ϴ����ļ�');
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
 <input type=submit class=stinput value="�ϴ�" id=button1 name="supload">
 </td></tr>
 </form></table>
 