<%  
'response.write session("OBJECT_TABLE_NAME") &"<BR>"
'response.write session("OBJECT_TABLE_IsNew") &"<BR>"
'response.write session("OBJECT_TABLE_Values_V0") &"<BR>"
'response.write session("OBJECT_TABLE_IsContinue")  &"<BR>" 
  if session("OBJECT_TABLE_NAME") = ucase("mu_customer") and session("OBJECT_TABLE_IsNew") and session("OBJECT_TABLE_Values_V0")="ģ���鷿" then 
  	response.write mplSearchView(req("Object_id")&"", "myNewCreate","","", "" ,"","","1",false,false)
	end if  

if req("objectId")="18" and   session("OBJECT_TABLE_Values_V0")="ģ���鷿"  then 
	'��չ�㱨�Ĵ���

	itemSql = "select T.team_id,T.team_name,c.customer_no,C.customer,c.main_phone,O.* from MU_OPP13 O, MU_CUSTOMER C ,mova_team T where O.CUSTOMER_ID=C.CUSTOMER_ID and O.team=T.team_id and C.owner='M00' AND O.owner='M00' AND O.archive='F' and c.archive='F' and o.object_code='M00_K1000003845' and C.customer_id = "& req("cid") &" order by o.modifydate desc"
	executeQuery conn,movaRS,itemSql, 1, 1 
	
	%>  

 <table> 
	<THEAD>
  	<TR>
  		<tH>��չ�㱨���1</tH>
			<TH>״̬</TH>
			<TH>��չ˵��</TH>
			<TH>�Ƿ�ǩ��</TH>
			<TH>�㱨ʱ��</TH>
   </TR>
   </THEAD>
 	<tbody> 

	<%
	do
		if movaRS.eof or rs.bof then exit do
		response.write "<tr>"
		response.write "<td>" & movaRS("opp_no")&"</td>"
		response.write "<td>" & movaRS("v0")&"</td>"
		response.write "<td>" & movaRS("zA")&"</td>"
		response.write "<td>" & movaRS("v2")&"</td>"
		response.write "<td>" & movaRS("v1")&"</td>"
		response.write "</tr>"
		movaRS.moveNext
	loop 
	%>
</tbody>
	</table>
</div>
	<%
end if 
%>
 