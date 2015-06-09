<div class="cn_list_title">相关电话</div>
<div class="cn_list_title_right">
	  
</div>
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 width="400" cellPadding=0>
  <THEAD>
  	<TR>
            <TH>电话号码</TH>
	          <TH>电话类型</TH>
	          <TH>说明</TH>
	          <TH></TH>
	          
   </TR>
   </THEAD>
  <TBODY>
  	<% 			
			 
 			sqlString="select *,isNull(description,'无说明') as description from mu_phone where archive='F' and  customer_id=" & FRM_customer_id
 			securitySQL = " and owner='" & session("customerNo") & "'"
 			if  isNull(orderBy) or orderBy="" then 
 				order =  " order by category,phone " 
 			end if 
 	 
 			
			sqlString=sqlString & condition & securitySQL &  order 
			executeQuery conn,movaRS,sqlString, 1, 1
 
			do 
				if movaRS.eof or movaRS.bof then exit do
				FRM_phone_id = movaRS("phone_id")
				FRM_owner = movaRS("owner")
				FRM_customer_id = movaRS("customer_id")
				FRM_phone = movaRS("phone")
				FRM_category = movaRS("category")
				FRM_description = movaRS("description")
%>
	<FORM id=form method=post name="listPhone<%=FRM_phone_id%>" action=slice_customerPhone_.asp>
		<input type="hidden" name="phone_id" value="<%=FRM_phone_id%>">
		<input type="hidden" name="customer_id" value="<%=FRM_customer_id%>">
		<input type="hidden" name="object_id" value="<%=FRM_objectId%>">
		<input type="hidden" name="del" value="F">
  	<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
  	  		
  	  		
  	  		
  	  			<%if  FRM_description="自动收集产生" then %>
  	  				<td><%=FRM_phone%></td>
  	  				<td><%=FRM_category%></td>
  	  				<td><%=FRM_description%></td>
  	  				
  	   			<% else %>
  	   				<td><input class=cn_input03 type="text" size="15" name="phone" value="<%=FRM_phone%>"></TD>
  	  				<td><input class=cn_input03 type="text" size="15" name="category" value="<%=FRM_category%>"></td>
  	   				<td><input class=cn_input03 type="text" size="30" name="description" value="<%=FRM_description%>" ></td>
  	   			<% end if %>
  	  		
  	  			<td>
  	  				<%if  FRM_description <> "自动收集产生" then %>
  	  					<button  class=cn_button01 type="submit" onClick="">保存</button>
  	   					<button  class=cn_button01 type="submit" onClick="return chkPhoneDel(this.form)">删除</button> 
  	   				<% end if %>
					</TD>				
  	</TR>
 </form>
<%			
			movaRS.Movenext 
		Loop
%>
	<FORM id=form method=post name="newPhone" action=slice_customerPhone_.asp>
		<input type="hidden" name="phone_id" value="">
		<input type="hidden" name="customer_id" value="<%=FRM_customer_id%>">
		<input type="hidden" name="object_id" value="<%=FRM_objectId%>">
		<input type="hidden" name="del" value="F">
		<TR onMouseOver="this.className='cn_tr01'" onmouseout="this.className='cn_tr02'">
  	  		<td><input class=cn_input03 type="text" size="15" name="phone" value=""></TD>
  	  		<td><input class=cn_input03 type="text" size="15" name="category" value="其他"></td>
  	  		<td>
  	  			 
  	   				<input class=cn_input03 type="text" size="30" name="description" value="手动添加" >
  	  		<td>
  	  				<button  class=cn_button06 type="submit" onClick="return chkPhone(this.form)">新增</button>
					</TD>				
  	</TR>
 	</form>
</Tbody>
</table>
</div>
<script>
	function chkPhone(form){
		var str;
		str="";
		if (form.phone.value==""){
			str=str +  "电话号码必须输入" + "\n";
		}
		form.del.value="F";
		return showInputError(str);
	}
	
	function chkPhoneDel(form){
		form.del.value="T";
		return confirm("确定需要删除吗？");
	}
</script>