<!-- #include virtual="/movaOpps/core/pub/config.asp" -->
<!-- #include virtual="/movaOpps/core/pub/include.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312" />
<title><%=application("COMPANY")%>_<%=application("SYSTEM_NAME")%></title>
<link rel="stylesheet" href="<%=movaStyle%>/login.css" type="text/css" media="screen" />
<script type="text/javascript" src="/movaOpps/core/jquery/jquery-1.7.1.min.js"></script>
<!--[if IE 6]>
    <script type="text/javascript" src="scripts/DD_belatedPNG_0.0.7a.js"></script>
<![endif]-->
</head>
<style> 
.loginmian {
	MARGIN: 55px auto 0px; WIDTH: 640px; BACKGROUND: url(<%=application("FIRST_LOGO")%>) -23px 0px; HEIGHT: 231px; _background: url(<%=application("FIRST_LOGO")%>)
}
 
</style>
<body class="bg">
<div class="loginmian"></div>
<div style="height:231px;margin:-55px auto 0;width:1024px;">
<div style="width:"></div>
<div class="logininner">
	<div id="logintip"></div> 
	<div class="login">
	<form id="mainform" name="form1" method="post" action="login_.asp">
		<div style="height:35px;line-height:35px;">
			<label>用户名：</label>
			<input class="text-input" type="text" name="login" id="login" />
		</div>
		<div style="height:35px;line-height:35px;">
			<label>密&nbsp;&nbsp;码：</label>
			<input class="text-input" type="password" name="password" id="password" />
		</div>
		<div style="height:35px;line-height:35px;">
			<label>验证码：</label>
			<nobr><input type="text" id="captchacode" class="text-input text_auth" name="captchacode" maxlength="4" /><label class="img_auth"><img id="imgCaptcha" src="/movaOpps/core/pub/captcha.asp" align="absmiddle" /><a href="javascript:void(0)" onclick="RefreshImage('imgCaptcha')">更换验证码</a> </label></nobr>
		</div>
		<div style="height:30px;line-height:30px;">
			<label>&nbsp;</label>
			<input class=buttonsubmit type="submit"  style="width:70px;"  value=" 登 录 " onClick="return logon(this.form)">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="forgetPassword.asp">忘记密码</a>
                  
  
		</div>
	</form>
	</div>
</div>
<div></div>
</div>
<script language="javascript" type="text/javascript"> 
function RefreshImage(valImageId) {
	var objImage = document.images[valImageId];
	if (objImage == undefined) {
		return;
	}
	var now = new Date();
	objImage.src = objImage.src.split('?')[0] + '?x=' + now.toUTCString();
}

function logon(objform){
		if ((objform.login.value=="") || (objform.password.objform=="") || (objform.captchacode.value=="")){
			alert("信息输入不完整");
			return false;
		} 
} 
$(document).ready(function(){
  $("#login").focus();
}); 
</script>

	<script>
		function chkTime(){
			var date1 = new Date();   
			var date2 =  new Date(<%=getServerTime("YYYY,MMJS,DD,hh,mm,ss")%>);
			var date3 = date1.getTime() - date2.getTime()  //时间差的毫秒数
			var leave1 = date3 % (24 * 3600 * 1000)    //计算天数后剩余的毫秒数
			var leave2 = leave1 % (3600 * 1000)        //计算小时数后剩余的毫秒数
			var minutes = Math.floor(leave2 / (60 * 1000))
			if (minutes>=5) {
				alert("你的计算机时间比系统时间快"+minutes + "分钟\n请调整你的电脑时间！");
			 return false;
			}
			if (minutes<=-5) {
				alert("你的计算机时间比系统时间慢"+minutes + "分钟\n请调整你的电脑时间！");
				return false;
			}
			return true;
		}
	chkTime();
 	</script>

</body>
</html>

