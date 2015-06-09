var _IVRField="";

function openFileWindow(jsObject,allowExt,allowSize,filePath,fileName){
	var str;
	var fileUrl ="/movaOpps/opp/upload/pub_form.asp?jsObject=" + jsObject + "&allowExt=" + allowExt + "&allowSize=" + allowSize + "&filePath=" + filePath + "&fileName=" + fileName
	str=window.open(fileUrl,"FileWindow","scrollbars=yes,width=450,height=20");  
	str.opener = self;
	if (str.focus) str.focus();
}
	function getStringIndex(pStr,pIndex){
		var cStr = pStr;
		return cStr.substr(pIndex-1,1)+"";
		
	}

function getValue(formName){
		return $("#" + formName).val();
}
function setValue(formName,v ){
	$("#" + formName).val(v);
	if($("#"+ "_HTML"+formName).length>0){
		$("#"+ "_HTML"+formName).html(v);
	} 
}
function getInt(formName){
		intValue= 0;
		if  ($("#" + formName).val().indexOf(".")>=0){
			intValue = parseFloat($("#" + formName).val());
		}else{
			intValue = parseInt($("#" + formName).val());	
		}
		if (isNaN(intValue)){
			alert("获取值错误:\n'" + $("#" + formName + "__").html() + "' 必须为数值!")
			intValue = 0;
		}
		return intValue;
		
}
