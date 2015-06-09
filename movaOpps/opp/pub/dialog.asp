<%
sub dialogHtml(dialogId)
	if dialogId = "field_select_dialog" then 
		%>
		<div id="field_select_dialog" title="选择一个字段">
		<form name="dialogForm">
	 	<center><select name=selField size=15 style="width:90%" ondblclick="setField();">
    		<%=getObjectFildSet(o_table_name,o_id,o_is_single)%>
		</select></center>
		</form>
		</div>
<%
	end if 
	 
end sub 

sub dialogJquery(dialogId)
	if dialogId = "field_select_dialog" then 
		%>
		$( "#field_select_dialog" ).dialog({
			autoOpen: false,
			height: 330,
			width: 300,
			modal: true,
			buttons: {
				"确定": function() {
					setField();
					
				},
				"清空": function() {
					tmpFrom.field_code.value = "";
					tmpFrom.field_name.value ="";
					$( this ).dialog( "close" );
				},
				"取消": function() {
					$( this ).dialog( "close" );
				}
			} 
		});
<%
	end if 
end sub 
%>