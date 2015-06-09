<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/Trans.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<% chkAccountStr "mplNew" %>
<div class="cn_list_title">新增查询</div> 
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
<FORM id=form method=post name="mainform" action=newMpl_.asp>
		<input type="hidden" name="archive" value="F">
		<input type="hidden" name="object" value="mu_mpl_search">
		<input type="hidden" name="mu_mpl_search_id" value="0">
  <TBODY>
   
    <tr>
    		<td class=cn_td09 align=right><span class="cn_font02">*</span>业务模型:</td>
    		<td>
    			<select name="object_code">
    					<%=picklist(getObjectListSql(session("customerNo")),"")%>
    			</select>
    		</td>
    </tr>
	  <tr>
    		<td class=cn_td09 align=right><span class="cn_font02">*</span>打印标题:</td>
    		<td>
    			 <input class=cn_input03 type="text" size="40" name="search_name" value="">
    		</td>
    </tr>
    <tr>
    		<td class=cn_td09 align=right><span class="cn_font02">*</span>简称:</td>
    		<td>
    			<input class=cn_input03 type="text" size="20" name="abbr" value="">  
    		</td>
    </tr>
	  <tr> 
	  	<td ></td>
	  	<td>
	  			<BUTTON class=cn_button01 type=submit >保存</button>	 
	  	</td>
		</tr>
  
  </TBODY></FORM></TABLE>
</div>


<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->
 