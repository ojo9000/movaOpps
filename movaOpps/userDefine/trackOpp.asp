<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHeadTab.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<%
 
 		rightTitle_20= "<BUTTON class=cn_button01 type=button onClick=" & chr(34) & "dialogPick('opp.asp?navType=dialog&objectId=3&dyParam=V1^"&request("no")&"','')"& chr(34) & "  >新增</button>"
  
response.write mplSearchView("3", "job_track",2,request("no"),"" ,"任务进展备忘",rightTitle_20,"0",true,true)

response.write "</div>" 
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
 