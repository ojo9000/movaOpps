<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" --> 
<!-- #include virtual="/movaOpps/opp/pub/htmlHead.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaStart.asp" -->
<script>
	function chk()
	{
		var str;
		str="";
		
		if (document.mainform.plugin_name.value==""){
			str=str +  "插件名称必须输入" + "\n";
		}
		
		if (str!=""){
			str="对不起，您的输入不正确!\n---------------------------------\n" + str;
			alert(str);
			return false;
		}else {
			return true;
		}
	}
</script>

<div class="cn_header">
			<div class="cn_logo"><img src="<%=application("LOGO")%>" /></div>
<div class="cn_header_right">
				<dl>
					 
				 </dl>
				 <nobr>   </nobr>
			</div> 
		</div>
 
<DIV class=cn_main>
<div class="cn_list_title">创建插件</div> 
<div class="cn_list_title_right">插件管理</div>
<DIV class=cn_col01>
<TABLE border=0 cellSpacing=1 cellPadding=0>
  <FORM id=form method=post name=mainform 
  action=plugin_.asp>
  <TBODY>
  	<tr><td  class="cn_td09" >插件名称<font color=red>*</font>:</td><td><INPUT class=cn_input03 type=text name=plugin_name size=40 value=""></td></tr>
  	<tr><td  class="cn_td09" ></td><td><BUTTON class=cn_button03 type=submit onClick="return chk()" >保存</button></td></tr>
  	
	</TBODY>
</TABLE>


<!-- #include virtual="/movaOpps/opp/pub/htmlButtom.asp" -->
<!-- #include virtual="/movaOpps/core/pub/movaEnd.asp" -->