<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHeadTab.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<%
if session("locked")    then 
 	if session("isSLR") or session("isZRR") then 
 		rightTitle_20= "<BUTTON class=cn_button01 type=button onClick=" & chr(34) & "dialogPick('opp.asp?v6="& req("v0")&"&vk="&req("vk")&"&navType=dialog&objectId=20&dyParam=V3^"&request("no")&"','')"& chr(34) & "  >新增</button>"
	end if  
	rightTitle_18=""
else
	if session("isSLR") or session("isZRR")  then 
 		rightTitle_20= "<BUTTON class=cn_button01 type=button onClick=" & chr(34) & "dialogPick('opp.asp?v6="& req("v0")&"&vk="&req("vk")&"&navType=dialog&objectId=20&dyParam=V3^"&request("no")&"','')"& chr(34) & "  >新增</button>"
	end if 
	if session("isZRR") or session("isSLR") then 
		rightTitle_18= "<BUTTON class=cn_button01 type=button onClick=" & chr(34) & "dialogPick('opp.asp?vk="&req("vk")&"&navType=dialog&objectId=18&dyParam=V4^"&request("no")&"','')"& chr(34) & "  >新增</button>"
	end if 
end if   
response.write mplSearchView("20", "job_contact",request("id"),request("no"),"" ,"联系客户",rightTitle_20,"0",true,true)

response.write "</div>"

response.write mplSearchView("18", "job_jinzhan",request("id"),request("no"),  "" ,"进展汇报" ,rightTitle_18,"0",true,true)

%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
 