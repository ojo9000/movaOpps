/*
   说明：
   class的值依次为：每页条数，当前页码，总条数
   后台ec程序要接受query_pageno参数作为当前页码，这个是固定写死的
 */
var PAGE_URL="";
function turnpage(){
	//获取页面的第一个form，生成传递页码的参数
	var queryform = $("form").get(0);
	//获取查询表单的所有参数（是onload执行完的）
	PAGE_URL=$(queryform).serialize();
	//给查询表单加一个query_pageno，保证submit提交的是1，才不会跟默认的query_pageno=0冲突
	$(queryform).prepend('<input type="hidden" id="query_pageno" name="query_pageno" value="1">');
	//获取翻页基础参数
	var pageclass = jQuery.trim($("#pageclass").attr("class"));
	//查无记录,或者每页条数，当前页码，总条数有误
	if(checkclassvalue(pageclass)==false)
		return false;
	//获取3个值：每页条数，当前页码，总条数
	var pagevalues = pageclass.split(/\s+/);
	var query_pernum = $(pagevalues).get(0);//每页条数
	var query_pageno = $(pagevalues).get(1);//当前页码
	var query_count = $(pagevalues).get(2);//总条数
	//无数据不显示翻页按钮
	if(query_count==0)
		return false;
	//获取总条数
	var totalpage = Math.ceil(query_count/query_pernum);
	//组织各个翻页按钮
	var page_str = '<form id="turnpageform" name="turnpageform" method="post" onSubmit="jumppage('+query_pageno+','+totalpage+');return false;">';
	page_str += '<div style="text-align:right;">一共'+totalpage+'页 当前显示第'+query_pageno+'页 ';
	if(query_pageno>1){
		page_str += '<a href="javascript:goto(1);">首页</a> ';
		page_str += '<a href="javascript:goto('+(parseInt(query_pageno,10)-1)+');">上一页</a> ';
	}
	if(query_pageno<totalpage){
		page_str += '<a href="javascript:goto('+(parseInt(query_pageno,10)+1)+');">下一页</a> ';
		page_str += '<a href="javascript:goto('+totalpage+');">尾页</a> ';
	}
	if(totalpage != 1)
	{
		page_str += '跳转到第 <input id="topage" name="topage" size="4" class="zz_input01"> 页';
		page_str += '<button class="cn_button01" type="submit">跳转</button></form></div>';
	}
	//显示翻页按钮
	$("#pageclass").after(page_str);
}
//翻页
function goto(page){
	//获取页面的第一个form
	var queryform = $("form").get(0);
	//采用链接翻页
	location.href=$(queryform).attr("action")+"?query_pageno="+page+"&"+PAGE_URL;
}
//导报表
function getreport(){
	//获取页面的第一个form
	var queryform = $("form").get(0);
	//采用链接翻页，querytype为1表示导报表
	location.href=$(queryform).attr("action")+"?querytype=1&"+PAGE_URL;
}
//跳转
function jumppage(query_pageno,totalpage){
	var topage = jQuery.trim($("#topage").val());
	if(topage.length==0){
		$("#topage").select();
		alert("请输入页码！");
		return false;
	}
	var format = /^\d+$/;
	if(format.test(topage)==false){
		$("#topage").select();
		alert("页码必须为正整数！");
		return false;
	}
	var page=parseInt(topage,10);
	if(page == 0){
		$("#topage").select();
		alert("页码不能为0！");
		return false;
	}
	if(query_pageno == page){
		$("#topage").select();
		alert("您输入的是当前页！");
		return false;
	}
	if(page > totalpage){
		$("#topage").select();
		alert("没有此页，请输入正确的页码！");
		return false;
	}
	goto(page);
}
function checkclassvalue(classvalue){
	//后台必须传每页条数，当前页码，总条数到页面
	if(classvalue.length==0)
		return false;
	var format = /^\d+ \d+ \d+$/;//格式为“数字+空格+数字+空格+数字”
	//传的每页条数，当前页码，总条数格式不对
	if(format.test(classvalue)==false)
		return false;
	return true;
}
