<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!-- #include virtual="/movaOpps/core/pub/oppPub.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/lib.asp" --> 
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/opp/pub/dialog.asp" -->
<style type="text/css">
<!--
.itemLeft {
	float: left;
	width: 300px;
	 
}

.itemRight {
	float: left;
	width: 600px;
}
-->
</style>
<% 
Dim picklistCode,txt,sortno,code,is_memory,mova_picklistid,selectvalue
chkAccountStr "pickSys" %>
<% picklistCode = req("picklistCode")%>
<%
Dim super
super =  ""
if isSuperAdministrator() then super = "T"
%>
<script>
	function newcachePicklist(combo){
		var arrayS,s1,s2;
		contname=combo.name;
		var theleft;
		var strleng;
		var newcont;
		strleng=contname.length;
		
		S = prompt("输入新的文本，格式 '下拉列表名称|picklistName':", "");
		if (S != null) {
			var arrayS=S.split('|');
			if ( arrayS.length>=2){
				s1=arrayS[0];
				s2=arrayS[1];
			}else{
				s1=S;
				s2=S;
			}
			if (S.length!=0){       
				var aOption = new Option(s1, s2);
				I = combo.length;
				combo.options[I] = aOption;
				combo.options[I].selected = 1;
			}
		}
	}
	
	function chgSelect(obj)
	{
		window.location.href="listPicklist.asp?picklistCode=" + obj.options[obj.selectedIndex].value;
		
	}


	function chk(form)
	{
		var str;
		str="";
		
		if (form.txt.value==""){
			str=str +  "显示内容必须输入" + "\n";
		}
		if (form.selectvalue.value==""){
			str=str +  "下拉列表值必须输入" + "\n";
		}
		form.picklistname.value=form.code.options[form.code.selectedIndex].text
		return showInputError(str);
		
	}
  function chgcachePicklist(obj)
  {
  	  obj.form.picklistname.value=obj.options[obj.selectedIndex].text
  }
</script>
<table width=100% border="0" cellspacing="1" cellpadding="1">
	<tr>
		<td>
			 
<font color=red>警告：此页面内容请勿随意修改！！！！</font>
</td>
	</tr>
</table>
 
<div  class="itemLeft">
<div class="cn_list_title">自定义字段类型列表 </div> 
<DIV class=cn_col01>
 <form name="mainform" method="post" action="listPicklist.asp">
			<table   border="0" cellspacing="1" cellpadding="1">
              <tr> 
                      <td   valign="top"     class="cn_td09"  > <select name="select" size="30" style="width:100%" 
                      	 onDblClick="chgSelect(this)">
                      	<%=picklist("select distinct picklistname ,code as selectvalue,picklistname+' ['+code+']'  as txt from mova_picklist where is_super is null or is_super='" & super & "' order by picklistname",picklistCode)%>
                        </select> </td>
                    </tr>
     
      </table>
       </form>
</div>
</div>
<div  class="itemRight">
<div class="cn_list_title">新增下拉列表 </div> 
<DIV class=cn_col01>
    <table  width=100% border="0" cellspacing="1" cellpadding="1">
                <form name="mainform1" method="post" action="addPicklist_.asp">
              		<input type="hidden" name="object" value="mova_picklist">
              		<input type="hidden" name="picklistname" value="">
                 <tr height="20"> 
                      <td valign="top"  class="cn_td09" ><font color=red>*</font>下拉列表:</td>
                      <td   ><select name="code" onChange="chgcachePicklist(this)">
                      			<%=picklist("select distinct picklistname as txt, code as selectvalue from mova_picklist  where is_super is null or is_super='" & super & "' order by picklistname",picklistCode)%>
                        </select>
                        <% if isSuperAdministrator() then  %><a href="#" onClick="newcachePicklist(mainform1.code);return false">新创建</a> <%end if %></td>
                    </tr>

                    <tr height="20"> 
                     
                      <td valign="top"  class="cn_td09" ><font color=red>*</font>显示内容:</td>
                      <td   > <input class=cn_input03  type="text" name="txt" > 
                      </td>
                    </tr>
                    <tr height="20"> 
                      <td valign="top"  class="cn_td09" ><font color=red>*</font>对应值:</td>
                      <td   ><input class=cn_input03  type="text" name="selectvalue" size="40"><br>尽量避免修改对应值
                      </td>
                    </tr>
                  
                    <tr bgcolor="#FFFFFF" class="mainbuttomline"> 
                      <td  align="right"   valign="top" ></td>
                      <td colspan=4>
                      	<input class="cn_button01"  name="submit" type="submit"   onClick="return chk(this.form)" value="添加">
                      	<input  class="cn_button01" name="submit" type="button"   onClick="window.location.href='../cache/cache.asp'" value="刷新缓存">
                      	</td>
                    </tr></form>
                  </table> 
                  
</div>
<div class="cn_list_title">下拉列表编辑</div> 
<DIV class=cn_col01>         
  	<table width="100%" border="0" cellspacing="1" cellpadding="1">
  		<THEAD>
                    <tr height="20"> 
                      <th width="100"  class="formlistTitle" >下拉列表</th>
                      <th width="100"  class="formlistTitle" >值</th>
                      <th width="180" class="formlistTitle" >显示名称 </th>
                      <th width="180" class="formlistTitle" >是否缓存</th>
                      <th width="161" class="formlistTitle" >排序</th>
                      <th width="162" class="formlistTitle" >操作</th>
                    </tr>
</THEAD>
<TBODY>
                    <%
	sql = "select * from mova_picklist where code='" & picklistCode & "' order by sortno"
	set movaRs=conn.execute(sql)
	if movaRs.eof or movaRs.bof then
		%>
		<tr height="20"> 
      <td  class="formlistText" colspan=11>没有下拉项</td>
    </tr>
		<%
	else
			do
				if movaRs.eof or movaRs.bof then 
					exit do 
				else 
					txt = movaRs("txt")
					selectvalue=movaRs("selectvalue")
					mova_picklistid=movaRs("mova_picklistid")
					sortno = movaRs("sortno")
					code = movaRs("code")
					picklistCode = movaRS("code")
					is_memory = movaRS("is_memory")
		%>
		  <form name="mainform_<%=mova_picklistid%>" method="post" action="modiPicklist_.asp">
		  <input type=hidden name=object value="mova_picklist">
		  <input type=hidden name="mova_picklistid" value="<%=mova_picklistid%>">
		  <input type=hidden name="code" value="<%=code%>">
		  <tr height="20"> 
        <td  class="formlistText" ><%=picklistCode%></td>
        <td  class="formlistText" ><input  class=cn_input03 type=text name="selectvalue" value="<%=selectvalue%>" size="20"></td>
        <td class="formlistText" ><input class=cn_input03  type=text name="txt" value="<%=txt%>" size="15"></td>
        <td class="formlistText" ><input class=cn_input03  type=text name="is_memory" value="<%=is_memory%>" size="1"></td>
        <td class="formlistText" ><input class=cn_input03  type=text name="sortno" value="<%=sortno%>" size="3"></td>
        <td class="formlistText" >
        	<input class="cn_button01"  type=submit name="submit" value="修改" onClick="this.form.action='modiPicklist_.asp';return chk(this.form)"> <input type=submit   class="cn_button01"  value="删除" onClick="this.form.action='delPicklist_.asp';return confirm('是否删除此条目？')">
        </td>
       
      </tr> 
      </form>
		<%
				movaRs.moveNext
			end if 
		loop 
	end if 
%>
</TBODY>

</table>                 
</div>
</div> 
<script language="Javascript">
<!--
function focusIt(){
	document.mainform1.txt.focus();
}
focusIt();
//-->
</script>
<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->