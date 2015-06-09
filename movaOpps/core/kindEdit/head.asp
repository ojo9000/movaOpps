	<link rel="stylesheet" href="/movaOpps/core/kindEdit/themes/default/default.css" />
	<link rel="stylesheet" href="/movaOpps/core/kindEdit/plugins/code/prettify.css" />
	<script charset="gb2312" src="/movaOpps/core/kindEdit/kindeditor.js"></script>
	<script charset="gb2312" src="/movaOpps/core/kindEdit/lang/zh_CN.js"></script>
	<script charset="gb2312" src="/movaOpps/core/kindEdit/plugins/code/prettify.js"></script>
<%
sub  kindEdit(form,formVar)
	response.write "	<script>"& chr(13)
	response.write "		"& chr(13)
	response.write "		KindEditor.ready(function(K) {" & chr(13)
	response.write "			var editor1 = K.create('textarea[name=" & chr(34) & formVar & chr(34) & "]', {"& chr(13)
	response.write "				cssPath : '/movaOpps/core/kindEdit/plugins/code/prettify.css',"& chr(13)
	response.write "				uploadJson : '/movaOpps/core/kindEdit/upload_json.asp',"& chr(13)
	response.write "				fileManagerJson : '/movaOpps/core/kindEdit/file_manager_json.asp',"& chr(13)
	response.write "				allowFileManager : true,"& chr(13)
	response.write "				afterCreate : function() {"& chr(13)
	response.write "					var self = this;"& chr(13)
	response.write "					K.ctrl(document, 13, function() {"& chr(13)
	response.write "						self.sync();"& chr(13)
	response.write "						K('form[name="& form &"]')[0].submit();"& chr(13)
	response.write "					});"& chr(13)
	response.write "					K.ctrl(self.edit.doc, 13, function() {"& chr(13)
	response.write "						self.sync();"& chr(13)
	response.write "						K('form[name="& form &"]')[0].submit();"& chr(13)
	response.write "					});"& chr(13)
	response.write "				}"& chr(13)
	response.write "			});"& chr(13)
	response.write "			prettyPrint();"& chr(13)
	response.write "		});"& chr(13)
	response.write "	</script>"& chr(13)
end sub 
%>