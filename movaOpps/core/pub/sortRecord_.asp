<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->

<%
	Dim tempSortNo,whereDownSQL,whereUpSQL,otherSQL,tempSQL
	Dim P_url,P_table,P_sortNoKeyid,P_sortNoNo
	
	ErrorInfo =""
	P_table	= req("table")
	P_url = req("returnUrl")
	P_condition = req("condition")
	P_sortNo = req("sortNo")
	P_sort = req("sort")
	P_keyid = req("keyid")
	p_returnParam = req("returnParam")
	
	
	if (isNull(P_table) or (P_table="")) then ErrorInfo = ErrorInfo & "参数:排序对象必须输入!<BR>" end if 
	if (isNull(P_url) or (P_url="")) then ErrorInfo = ErrorInfo & "参数:返回网址必须输入!<BR>" end if 
	if (isNull(P_sort) or (P_sort="")) then ErrorInfo = ErrorInfo & "参数:排序方向必须输入!<BR>" end if 
	if (isNull(P_keyid) or (P_keyid="")) then ErrorInfo = ErrorInfo & "参数:数据主键id必须输入!<BR>" end if 
	
	if ErrorInfo <>"" then
		response.write ErrorInfo
		response.end
	end if
	 
	if P_condition <> "" then 
		condSplit = split(P_condition,"|") 
		P_condition = ""
		For Each f In condSplit
			if f <> ""  then 
				aSplit = split(f,"^")
				if instr(aSplit(1),"`") then 
					P_condition = P_condition & " and " & aSplit(0) & "=" & right(aSplit(1),len(aSplit(1))-1) & ""
				else	
					P_condition = P_condition & " and " & aSplit(0) & "='" & aSplit(1) & "'"
				end if 
				
			end if 
		Next
	end if 
	
	
	if p_returnParam <>"" then
				returnSplit = split(p_returnParam,"|") 
		p_returnParam = ""
		For Each f In returnSplit
			if f <> ""  then 
				aSplit = split(f,"^")
				p_returnParam = p_returnParam & chr(38) &  aSplit(0) & "=" & aSplit(1) & ""
			end if 
		Next
		p_returnParam = right(p_returnParam,len(p_returnParam)-1)
	end if 

	 
		if P_sortNo="" or isNull(P_sortNo) then 
			P_sortNo=getOneField("select sortno from " & P_table  & " where " & P_table & "id=" & P_keyid) 
		end if 
		if P_sort="down" then
			tempSQL  = "select  sortno," & P_table & "id from " & P_table 
			whereUpSQL =" where  sortno >" & P_sortNo 
			whereUpSQL  = whereUpSQL & P_condition & " order by sortno"
			set rs=conn.execute(tempSQL & whereUpSQL)
			if not(rs.eof or rs.bof ) then
				tempSortNo	= rs("sortno")
				tempKeyid	= rs(P_table & "id")
				conn.execute("update " & P_table & " set sortno=" & tempSortNo & " where " & P_table & "id=" & P_keyid)
				conn.execute("update " & P_table & " set sortno=" & P_sortNo & " where " & P_table & "id=" & tempKeyid )
			end if 
		end if
		if P_sort="up" then
			tempSQL  = "select  sortno," & P_table & "id from " & P_table 
			whereUpSQL =" where  sortno <" & P_sortNo 
			whereUpSQL  = whereUpSQL & P_condition & " order by sortno desc"
			'response.write tempSQL & whereUpSQL & "<br>"
			set rs=conn.execute(tempSQL & whereUpSQL)
			if not(rs.eof or rs.bof ) then
				tempSortNo	= rs("sortno")
				tempKeyid	= rs(P_table & "id")
			'	response.write "update " & P_table & " set sortno=" & tempSortNo & " where " & P_table & "id=" & P_keyid & "<br>"
			'	response.write "update " & P_table & " set sortno=" & P_sortNo & " where " & P_table & "id=" & tempKeyid & "<br>"
				conn.execute("update " & P_table & " set sortno=" & tempSortNo & " where " & P_table & "id=" & P_keyid)
				conn.execute("update " & P_table & " set sortno=" & P_sortNo & " where " & P_table & "id=" & tempKeyid )
			end if 
		end if
	closeDatabase
	gotoUrl P_url & "?" & p_returnParam
%>

