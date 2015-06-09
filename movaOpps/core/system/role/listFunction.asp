<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<style type="text/css">
<!--
li {
	float: left;
	width: 180px;
}
-->
</style>
<% chkAccountStr "sysFunction" %>
<%
Dim have_reuseRole ,code,functionname,mova_functionid,sortno,is_super,function_type,functionTxtcolor,i,functionChecked,category,categoryName
opendatabase
 
   
	dim bufferSec(5000),m
	m=0
	sql = "select * from mova_function f where f.status='T'"    
	set movaRs=conn.execute(sql)
	do 
		if movaRs.eof or movaRs.bof then exit do 
			m=m+1 
			bufferSec(m)=movaRs("mova_functionid")   
			movaRs.moveNext
	loop
	movaRs.close
	
	sql = "select distinct categoryName,category,is_super,sortno from mova_function where parent_id=0 and status='T'"    
		if not isSuperAdministrator() then 
			sql = sql &  " and  (is_super<>'T'  or is_super is null ) "
		end if 
	sql = sql & " order by is_super,sortno,category"
 
	set movaRs= conn.execute(sql)
%>
<div class="cn_list_title">权限点排序</div> 
<DIV class=cn_col01>
             <form name="mainform1" method="post" action="modiFunctionSec_.asp">
              <table width="100%" border="0" cellspacing="1" cellpadding="1">
                          
                          <%
                          	have_reuseRole= false
                          	do 
                          		if movaRs.eof or movaRs.bof then
                          			exit do 
                          		end if 
                          		categoryName = movaRs("categoryName")
                          		category = movaRs("category")
                          %>
                          		<tr height="20"> 
                          		  <td  class="cn_td09"    ><%=categoryName%></td>
                          		  <td  >
                          		  	 <ul>
                          		  	<%
                          		  		sql = "select * from mova_function where category='" & category & "'  and status='T' and function_type='URL'  "    
                          		  		if not isSuperAdministrator() then 
                          		  			sql = sql &  " and (is_super<>'T'  or is_super is null ) "
                          		  		end if 
                          		  		sql = sql & " order by  parent_id,sortno "
                          		  		set movaRs1 = conn.execute(sql)
                          		  		dim j 
                          		  		j=0
                          		  		do 
                          		  			if movaRs1.eof or movaRs1.bof then
                          		  				exit do
                          		  			end if 
                          		  			code=movaRs1("code")
                          		  			functionName = movaRs1("functionName")
                          		  			mova_functionid = movaRs1("mova_functionid")
                          		  			sortno = movaRS1("sortno")
                          		  			if sortno & "" ="" then sortno= 0
                          		  			is_super = movaRs1("is_super")
                          		  			function_type = movaRs1("function_type")
                          		  			if function_type="URL" then
                          		  				function_type="*"
                          		  			end if 
                          		  		  if is_super="T" then 
                          		  		  	is_super = "<font color=red>*</font>"
																			else
																				is_super = "<font color=red>&nbsp;&nbsp;</font>" 	
                          		  		  end if 
																			functionChecked=""
																			functionTxtcolor="#AFAFAF"
                          		  			for i=1 to m 
                          		  				if bufferSec(i)=mova_functionid then
                          		  					functionChecked = "checked"
                          		  					functionTxtcolor="#000000"
                          		  					if code="userSys" then 
                          		  						have_reuseRole=true
                          		  					end if 
                          		  				end if 
                          		  				
                          		  			next 
                          		  			
                          		  	%>
                          		  		<li  ondblClick="clipboard('<%=code%>')"  ><%=is_super%>
                          		  			<input type=text size=3 name=mova_sortno value="<%=sortno%>"   class=cn_input03 >&nbsp;</font>
                          		  			<input type="hidden" name=mova_functionid value="<%=mova_functionid%>">
                          		  			<%=functionName%></li>
																	<%
																				movaRs1.moveNext
																		loop 
                          		  	%>
                          		  	 
                          <%
                          		movaRs.moveNext
                          	loop 
                          	movaRS.close
                          %>
                          
 												</td></tr>
                          <tr class="mainbuttomline"> 
                          <td  align="right"   valign="top" > </td>
                           <td  align="left"   valign="top" >
                                <input type="submit"  class="cn_button01" name="Submit" value="修改">
														</td>
                          </tr>
                        </table>
                        </td></form>
                    </tr>
                  </table> 
 
</div>
<br>
<br>
<br> 
    
     
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->