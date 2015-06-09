<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->

<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->

<%
  Dim sss,f,isid
  sss=split(req("param")," ")
				For Each f In sss
					if f=isid then 
						j=1
					end if 
				Next
	 
	executeUpdate conn,req("param")
	msgbox "²Ù×÷³É¹¦",Request.ServerVariables("HTTP_REFERER")

%>
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
  
 
 