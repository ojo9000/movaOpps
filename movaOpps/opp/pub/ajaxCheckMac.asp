<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" --> 
<%
opendatabase
	'ajax »ñÈ¡Íø¿¨µØÖ·
	Function ajaxGetMacAddr(mac_addr,id)
		Dim haveUser
		if id=null or id="" then 
			chkSql = "select count(*) from cc_seat where archive='F' and mac_addr='" & mac_addr & "'"
		else
			chkSql = "select count(*) from cc_seat where archive='F' and seat_id<>" & id &"  and mac_addr='" & mac_addr & "'"
		end if 
		haveUser = getOnefield(chkSql)
		ajaxGetMacAddr = haveUser
	End Function
response.write ajaxGetMacAddr(req("cMac"),req("id"))
closedatabase
%>