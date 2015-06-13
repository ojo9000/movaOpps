<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHeadTab.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<%
 
 		rightTitle_20= "<BUTTON class=cn_button01 type=button onClick=" & chr(34) & "dialogPick('opp.asp?navType=dialog&objectId=4&dyParam=V2^"&request("no")&"','')"& chr(34) & "  >ÐÂÔö</button>"
  
response.write mplSearchView("4", "job_valuation",3,request("no"),"" ,"ÆÀ·Ö",rightTitle_20,"0",true,true)

response.write "</div>" 
%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
 