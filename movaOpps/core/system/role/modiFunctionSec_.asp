<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<% chkAccountStr "roleSys" %>
<%
	Dim mova_functionid,mova_sortno,have_userManage,mSortNo,tempStr,mFunctionid,i
	openDATABASE
		mova_functionid = req("mova_functionid")
	 	mova_sortno = req("mova_sortno")
		have_userManage = false
		if mova_functionid<>"" then 
			tempStr=replace(req("mova_functionid")," ","")
			mFunctionid=split(tempStr,",")
			mSortNo =split(trim(mova_sortno),",")
				For i=0 to ubound(mFunctionid)
					if mFunctionid(i)="" then 
						exit for
					end if 
					sql="update mova_function set sortno=" & mSortNo(i) & " where mova_functionid = " & mFunctionid(i)   
					conn.execute(sql)
				next
	 	end if 
 
	closedatabase
gotoUrl "listFunction.asp"
%>