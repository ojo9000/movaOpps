<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<%
dim mplOutString 
session("preListURL")= Request.ServerVariables("SCRIPT_NAME") & "?" & Request.ServerVariables("QUERY_STRING")  


'jquery支持开始<加载后调用>
mplOutString = mplOutString &  "<script>" & vbcrlf
mplOutString = mplOutString &  "$(document).ready(function() { " & vbcrlf
 
'弹出信息框
mplOutString = mplOutString &  "$( "& chr(34) &"#info_dailog"& chr(34) &" ).dialog({" & vbcrlf
mplOutString = mplOutString &  "			autoOpen: false," & vbcrlf
mplOutString = mplOutString &  "			width: 850," & vbcrlf
mplOutString = mplOutString &  "			height: 350," & vbcrlf
mplOutString = mplOutString &  "			modal: true," & vbcrlf
mplOutString = mplOutString &  "			buttons: {" & vbcrlf
mplOutString = mplOutString &  "				"& chr(34) &"关闭"& chr(34) &": function() {" & vbcrlf
mplOutString = mplOutString &  "				$( this ).dialog( "& chr(34) &"close"& chr(34) &" );" & vbcrlf
mplOutString = mplOutString &  "				$("& chr(34) &"#info_dailog"& chr(34) &").html("& chr(34)& chr(34) &");" & vbcrlf
mplOutString = mplOutString &  "				}  " & vbcrlf
mplOutString = mplOutString &  "			} " & vbcrlf
mplOutString = mplOutString &  "		});" & vbcrlf

'jquery支持结束<加载前调用>
mplOutString = mplOutString &  "}); " & vbcrlf	
mplOutString = mplOutString &  "</script>" & vbcrlf
mplOutString = mplOutString &  "<div id='info_dailog' title='选择条目'>" & vbctrlf
mplOutString = mplOutString &  "</div> " & vbctrlf





mplOutString = mplOutString &  "<script>"


mplOutString = mplOutString &  "	function extExecuteProc(confirmStr,procParameter ){"

mplOutString = mplOutString &  "		if (confirmStr!="&chr(34)& ""&chr(34)& "){"
mplOutString = mplOutString &  "			if (confirm(confirmStr)){"
mplOutString = mplOutString &  "				window.location.href="&chr(34)& "executeProc.asp?param="&chr(34)& " + procParameter ;"
mplOutString = mplOutString &  "			}"
mplOutString = mplOutString &  "		}else{"
mplOutString = mplOutString &  "			window.location.href="&chr(34)& "executeProc.asp?param="&chr(34)& " + procParameter ;"
mplOutString = mplOutString &  "		}"
mplOutString = mplOutString &  "	}"
	
mplOutString = mplOutString &  "	function extExecuteMpl(confirmStr,mplParameter ){"

mplOutString = mplOutString &  "		if (confirmStr!="&chr(34)& ""&chr(34)& "){"
mplOutString = mplOutString &  "			if (confirm(confirmStr)){"
mplOutString = mplOutString &  "				window.location.href="&chr(34)&  Request.ServerVariables("SCRIPT_NAME") & "?"&chr(34)& " +  procParameter ;"
mplOutString = mplOutString &  "			}"
mplOutString = mplOutString &  "		}else{"
mplOutString = mplOutString &  "			window.location.href="&chr(34)& Request.ServerVariables("SCRIPT_NAME") & "?"&chr(34)& " +  procParameter ;"
mplOutString = mplOutString &  "		}"
mplOutString = mplOutString &  "	}"
	
mplOutString = mplOutString &  "</script>"

response.write mplOutString
 
response.write mplSearchView(req("Object_id")&"", req("no")&"",req("id")& "",req("param1")& "",req("param2")& "" ,"","",req("isStart"),false,false)

%>

<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
