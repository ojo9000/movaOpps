function GetDateStr(AddDayCount) 
{ 
	var dd = new Date(); 
	dd.setDate(dd.getDate()+AddDayCount);//获取AddDayCount天后的日期 
	var y = dd.getYear(); 
	var m = ( 100 + dd.getMonth()+1).toString() ;//获取当前月份的日期 
	var d = (100+dd.getDate()).toString(); 
	m = m.substr(m.length-2,m.length)
	d = d.substr(d.length-2,d.length)
	return y+"-"+m+"-"+d; 
} 

function SetLanCookies(lanStr){ //设置语言版本
    var Then = new Date()        
    Then.setTime(Then.getTime() + 60*60*60*1000 )   //一个小时
    document.cookie = "lanStr=" + lanStr  + "\;expires="+ Then.toGMTString() + "\;Path=/"
}

function confirmURL(confirmStr,URL,targFrame){

	if (confirmStr!=""){
		if (targFrame!=""){
			var promptStr= window.prompt( confirmStr + "\n" + targFrame,"")   
			if ((promptStr!="")&&(promptStr!=null)) {
				window.location.href=URL + "&desc=" + promptStr;
			}else{
				alert("没有输入原因");
				return false;
			}
		}else{
			if (confirm(confirmStr)){
				window.location.href=URL;
			}else{
				return true;
			}	
		}
	}else{
			window.location.href=URL;
	}
}

function  focusIt(form){
	form.focus();
}

function openowner(param)
{
var str;
str=window.open("searchuser.asp?param=" + param,"OwnerWindow","scrollbars=no,width=270,height=180");  
str.opener = self;
if (str.focus) str.focus();
}


function isEmptyObj(obj){
		var objType = "";
		if (obj.type==undefined){
			objType = obj[0].type;
		}else{
			objType = obj.type;
		}
		var result=true;
		switch( objType )
				{
					case "radio" :	 
						for (var i = 0; i < obj.length; i++) {
							if (obj[i].checked){
								result = false;
							}
						}	
						return result;
					
					case "checkbox" :	
						for (var i = 0; i < obj.length; i++) {
							if (obj[i].checked){
								result = false;
							}
						}	
						return result;
						case "textarea":
						if (obj.value!=""){
							result = false;
						}
						return result;
						case "hidden":
						if (obj.value!=""){
							result = false;
						}
						return result;
						case "text" :	
						if (obj.value!=""){
							result = false;
						}
						return result;
					case "select-multiple" :
						for (var i = 0; i < obj.length; i++) {
							if ((obj.options[i].selected==true)&&(obj.options[i].value!="")){
								result=false;
							}
						}
						return result;
					case "select-one" :
						if (obj.options[obj.selectedIndex].value!=""){
									result=false;
						}
						return result;
				}
}

function showInputError(str){
if (str!=""){
			str="对不起，您的输入不正确!\n---------------------------------\n" + str;
			alert(str);
			return false;
		}else {
			return true;
		}
}

function showCalendar(form){
	if (navigator.appName!="Microsoft Internet Explorer")                                 
	   alert("此功能 Netscape 用户不能使用！")                                            
	else {
		document.mainform.calendar.value=form.name;
		newwin=window.open('calendar.htm','test','width=150,height=170');  
		newwin.focus(); 
	}
}

function chkdate(str){	//判断时间的有效性 YYYY-MM-DD
	var key=0;
	if ((str.indexOf('-')<1)||(str.substr(str.length-1,1)=="-")){
		return false;
	}else{
		var s=str.split('-');
		for (key in s){
			for(var i=0;i<s[key].length;i++){
				if (isNaN(parseInt(s[key].substr(i,1)))){
					return false;
				}
				if (key==0){
					if (parseInt(s[key])>2050||parseInt(s[key])<1900){
						return false;
					}
				}
				if (key==1){
					if (parseInt(s[key])>12||parseInt(s[key])<1){
						return false;
					}				
				}
				if (key==2){
					if (parseInt(s[key])>31||parseInt(s[key])<1){
						return false;
					}				
				}
			}
		}
		if (key!=2){
			return false;
		}
	}
	return true;	
}

function newItem(combo) {  //添加新的picklist的值
	contname=combo.name;
	var theleft;
	var strleng;
	var newcont;
	strleng=contname.length;
	
	S = prompt("输入新的文本:", "");
	if (S != null) {
		if (S.length > 20) {
			alert("文本长度限制在15个字符,你最后输入的字符长度为" + S.length );
		} else {
			if (S.length!=0){       
				var aOption = new Option(S, S);
				I = combo.length;
				combo.options[I] = aOption;
				combo.options[I].selected = 1;
			}
		}
	}
}


function checkpicklist(picklist){
	var test=false;
	for (var i = 0; i < picklist.length; i++) {
		if (picklist.options[i].selected==true){
			if (picklist.options[i].value!=""){
				test=true;
			};
	var resultstr="";
	var form=eval("document.mainform");
	var formname=eval("document.mainform." + varname)
		}
	}
	if (test){
		return true;
	}else{
		return false;
	}	
}

function CheckboxList(varname){
	for (var i=0;i<form.elements.length;i++){
		if (form.elements[i].type=="checkbox"){
			if (form.elements[i].name.indexOf(varname)==0){
				if (form.elements[i].checked){
					resultstr=resultstr + form.elements[i].value + ",";
				}
			}
		}
		
	
	}
	formname.value=resultstr;
}

function goUrl(str){	//导航，跳转页面
	window.location.href=str;
}

function Confirm(str)
{
	if(confirm(str)){
		return true;
	}else{
		return false;
	}
}


function daysDiff(day1,day2) //判断时间的间隔天数 YYYY-MM-DD
 { 
	var y1,m1,d1,y2,m2,d2;
	var s1=day1.split('-');
	var day1,day2;
	
	var s1=day1.split('-');
	for (key in s1){
		for(var i=0;i<s1[key].length;i++){
			if (key==0){
				y1=parseInt(s1[key])
			}
			if (key==1){
				m1=parseInt(s1[key])			
			}
			if (key==2){
				d1=parseInt(s1[key])			
			}
		}
	}
	
	var s2=day2.split('-');
	for (key in s2){
		for(var i=0;i<s2[key].length;i++){
			if (key==0){
				y2=parseInt(s2[key])
			}
			if (key==1){
				m2=parseInt(s2[key])			
			}
			if (key==2){
				d2=parseInt(s2[key])			
			}
		}
	}

  var check_in=new Date(y1,m1-1,d1); 
  var check_out=new Date(y2,m2-1,d2); 
  return (check_in.valueOf()-check_out.valueOf())/86400000; 
  } 
  
  
  //选择跳转到某一页
function MM_jumpMenu(targ,selObj,restore){ //v3.0
eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
if (restore) selObj.selectedIndex=0;
}

function MM_findObj(n, d) { //v4.0
var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
	d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
if(!x && document.getElementById) x=document.getElementById(n); return x;
}

function MM_jumpMenuGo(selName,targ,restore){ //v3.0
var selObj = MM_findObj(selName); if (selObj) MM_jumpMenu(targ,selObj,restore);
}

function ajax(link) {
	var ret = "";
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
		xMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		xMLHttpRequestObject = new ActiveXObject(Microsoft.XMLHTTP);
	}
	alert(XMLHttpRequestObject);
	if(XMLHttpRequestObject) {
		xMLHttpRequestObject.open("GET",link);
		xMLHttpRequestObject.onreadystatechange = function(){
			alert(XMLHttpRequestObject.readyState);
			if (XMLHttpRequestObject.readyState == 4 && xMLHttpRequestObject.status == 200) {
				 ret = XMLHttpRequestObject.responseText;
			}
		}
		xMLHttpRequestObject.send(null);
	}
	return ret;
}

function DateDiff(sDate1, sDate2){ //sDate1和sDate2是2002-12-18 22:33 格式 
iDays = parseInt((str2date(sDate2) - str2date(sDate1)) / 1000 / 60 / 60 /24) //把相差的毫秒数转换为天数 
//iDays = Math.abs(str2date(sDate2) - str2date(sDate1));
return iDays 
}

function str2date(str){
// 2000-12-30 23:59 的字符串转换成  js 时间
	 var year = str.substr(0,4);  
   var month = str.substr(5,2);  
   var day = str.substr(8,2);
   var time = str.substr(11,5);
   var temDate = month+'/'+day+'/'+year+' '+time+":00";  
   return new Date(Date.parse(temDate));  
}

function chkDate(str1,str2,iDays){
	if (str1!="" && str2!=""){
 		if (DateDiff(str1,str2)>=iDays){
 			return false;
 		}else{
 			return true;	
 		}		
 	}
 	return true;
}
function clipboard(clipboardText){
	window.clipboardData.clearData();   
	window.clipboardData.setData("Text", clipboardText);   
}

	function getCurrentDatetime(pFormatType){

 //根据日期时间格式输出当前时间
	//'YYYY-MM-DD hh:mm:ss
	//'YYYY-M-D h:m:s
	var returnstr = pFormatType
	var d = new Date()
	var vHour = d.getHours()
	var vMin = d.getMinutes()
	var vSec = d.getSeconds()
	var vYear = d.getFullYear()
	var vMon = d.getMonth() + 1
	var vDay = d.getDate()
	returnstr = returnstr.replace("YYYY",vYear+"");
	if (vMon>=10){
		returnstr = returnstr.replace("MM",vMon+"");
	}else{
		returnstr = returnstr.replace("MM","0" + vMon+"");
		returnstr = returnstr.replace("M",vMon+"");
	}
	if (vDay>=10){
		returnstr = returnstr.replace("DD",vDay+"");
	}else{
		returnstr = returnstr.replace("DD","0" + vDay+"");
		returnstr = returnstr.replace("D",vDay+"");
	}
	
	if (vHour>=10){
		returnstr = returnstr.replace("hh",vHour+"");
	}else{
		returnstr = returnstr.replace("hh","0" + vHour+"");
		returnstr = returnstr.replace("h",vHour+"");
	}
	
	if (vMin>=10){
		returnstr = returnstr.replace("mm",vMin+"");
	}else{
		returnstr = returnstr.replace("mm","0" + vMin+"");
		returnstr = returnstr.replace("m",vMin+"");
	}
	
	if (vSec>=10){
		returnstr = returnstr.replace("ss",vSec+"");
	}else{
		returnstr = returnstr.replace("ss","0" + vSec+"");
		returnstr = returnstr.replace("s",vSec+"");
	}
	return returnstr;
 }
 
	function dialogPick(url,mtitle){
		//alert(url);
		$("#info_dailog").attr("title");
		$('#info_dailog').html("<iframe width='100%' height='100%' frameborder='0' id='Preview' src='"+url+"'/>");
		$('#info_dailog').dialog('open');
	}
	function setDialogField(returnID,returnIDKey,returnValue,returnValueKey){
		$('#info_dailog').dialog("close");
		$('#info_dailog').html("");
		$("#"+returnIDKey).val(returnID);
		$("#"+returnValueKey).val(returnValue);
	}

	function setDialogField_submit(returnID,returnIDKey,returnValue,returnValueKey){
		if (confirm(" 确定移交吗？ ")){
			$('#info_dailog').dialog("close");
			$('#info_dailog').html("");
			$("#"+returnIDKey).val(returnID);
			$("#"+returnValueKey).val(returnValue);
			document.mainform.submit();
		}
		
	}
