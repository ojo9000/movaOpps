<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>业务管理系统-会员登录首页</title>
    <script language="JavaScript" type="text/javascript" src="/js/zzyjs_comm.js" charset="GBK" ></script>
    <!--default-->
    <LINK rel=stylesheet type=text/css  href="/movaOpps/css/001/style.css">
    <!--基于jquery-->
    <script type="text/javascript" src="/movaOpps/core/jquery/jquery-1.7.1.min.js"></script>
    <script>
	    function showproductinfo()
	    {
		    var url="/cgi-bin/userinforminfo_ajax.cgi";
		    $.ajax({
			    url:encodeURI(url),
			    cache:false,
			    success:showResult
		    });
	    }
	    function showResult(responseText)
	    {
		    var result=responseText.substring(responseText.indexOf("<MSG_ERRMSG>")+"<MSG_ERRMSG>".length,responseText.indexOf("</MSG_ERRMSG>"));
		    $("#productinfo").html(result);
	    }
	    function openhost()
	    {
		    var url="http://www.ruijihost.com/products.html";
		    window.open(url,"_blank");
	    }
	    jQuery(document).ready(function(){
		    jQuery("#container2")[0].scrollTop=0;
		    var i=0;
		    var speed=20;
		    function Move(){
			    if(jQuery("#container2")[0].scrollTop==26*(0-2))
			    {
				    jQuery("#container2")[0].scrollTop=0;
				    setTimeout(Move,3000);
				    return;
			    }
			    jQuery("#container2")[0].scrollTop=(jQuery("#container2")[0].scrollTop+1);
			    i++;
			    if(i!=26)
			    setTimeout(Move,speed);
			    else
			    {
				    setTimeout(Move,3000);
				    i=0;
			    }
		    }
		    setTimeout(Move,3000);
	    });
    </script>
  </head>
  <body>
    <div class="cn_main">
      <div class="cn_location" >
        <ul id="container2" style="height:26px;overflow:hidden;">
          
        </ul>
      </div>
      <div class="cn_main_top">
        <div class="cn_main_lf"> 
          <!--办理的业务-->
          <div class="cn_ywfw">
            <nobr><span class="cn_font04">早上好， <span class="cn_font03">ojo9000</span>。你上一次登陆时间是：2012-12-13 12:34:44</span></nobr>
            <div class="cn_div01">
              <a href="/cgi-bin/userself/needrenew.cgi">急需续费业务管理</a>
              <a href="/cgi-bin/userself/nofundorder.cgi">未开通业务管理</a>
              <a href="/cgi-bin/userself/fundorder.cgi">已开通业务管理</a>
              <a href="/cgi-bin/userself/productprice.cgi">查看价格列表</a>
            </div>
            <div class="cn_jfdiv">
              <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td nowrap="nowrap" class="cn_td09">可用金额：</td>
                  <td><span class="cn_font03">52.00</span></td>
                  <td nowrap="nowrap" class="cn_td09">实际金额：</td>
                  <td><span class="cn_font03">52.00</span></td>
                </tr>
                <tr>
                  <td nowrap="nowrap" class="cn_td09">借款金额：</td>
                  <td><span class="cn_font03">0.00</span></td>
                  <td nowrap="nowrap" class="cn_td09">冻结金额：</td>
                  <td><span class="cn_font03">0.00</span></td>
                </tr>
              </table>	
            </div>
          </div>
        <!--积分管理-->
        </div>
        <!--系统公告-->
        <div class="cn_main_rt">
          <div class="cn_notice">
            <h2><a href="/cgi-bin/miscservice/notelist.cgi">更多>></a> 系统公告</h2>
            <ul>
              
              <li><a href="/cgi-bin/miscservice/seenote.cgi?id=256"> 2012年10月12日 中文域名政策调整通知</a></li>
              
              <li><a href="/cgi-bin/miscservice/seenote.cgi?id=255"> 2012年10月11日 关于.com、.net注册局维护通知20121111</a></li>
              
              <li><a href="/cgi-bin/miscservice/seenote.cgi?id=254"> 2012年09月28日 关于中秋国庆放假通知20120930</a></li>
              
              <li><a href="/cgi-bin/miscservice/seenote.cgi?id=253"> 2012年09月19日 关于部分国际域名维护紧急通知20120921</a></li>
              
            </ul>
          </div>
        </div>
      </div>
      <div class="cn_main_bottom">
        <div class="cn_bottom_title">
          <ul>
            <!--当鼠标点击某一名称时，执行类on-->
            <li class="on" id="zzybiaoti" name="zzybiaoti"><a href="#" onmouseover="setDisplay('zzybiaoti','0','zzyliebiao','0')">服务管理形象入口</a></li>
            <li class="" id="zzybiaoti" name="zzybiaoti"><a href="#" onmouseover="setDisplay('zzybiaoti','1','zzyliebiao','1')">产品列表</a></li>
            <li class="" id="zzybiaoti" name="zzybiaoti"><a href="#" onmouseover="setDisplay('zzybiaoti','2','zzyliebiao','2')">热卖产品</a></li>
          </ul>
        </div>
        <!--服务管理形象入口-->
        <div class="cn_bottom_con" style="display:'';" name="zzyliebiao" id="zzyliebiao">
          <ul>
            <li>
              <ul>
                <li><img src="../images/cn_photo01.gif" align="absmiddle" /> <a href="/cgi-bin/fundmanage/fundlist.cgi">财务中心</a></li>
                <li><img src="../images/cn_photo02.gif" align="absmiddle" /> <a href="/cgi-bin/hostservice/hostlist.cgi">邮箱管理</a></li>
                <li><img src="../images/cn_photo03.gif" align="absmiddle" /> <a href="/cgi-bin/userself/productprice.cgi">购买价格统览</a></li>
              </ul>
            </li>
            <li>
              <ul>
                <li><img src="../images/cn_photo04.gif" align="absmiddle" /> <a href="/cgi-bin/domainservice/domainmanagelist.cgi?language=1">英文域名管理</a></li>
                <li><img src="../images/cn_photo05.gif" align="absmiddle" /> <a href="/cgi-bin/databasemanage/databaselist.cgi">数据库管理</a></li>
                <li><img src="../images/cn_photo06.gif" align="absmiddle" /> <a href="/cgi-bin/fundmanage/invoiceapply.cgi">发票申请</a></li>
              </ul>
            </li>
            <li>
              <ul>
                <li><img src="../images/cn_photo07.gif" align="absmiddle" /> <a href="/cgi-bin/domainservice/domainmanagelist.cgi?language=0">中文域名管理</a></li>
                <li><img src="../images/cn_photo08.gif" align="absmiddle" /> <a href="/cgi-bin/hostservice/scomb_manage_list.cgi">特惠套餐管理</a></li>
                <li><img src="../images/cn_photo09.gif" align="absmiddle" /> <a href="/cgi-bin/miscservice/techsupport_manage.cgi">有问必答</a></li>
              </ul>
            </li>
            <li style="border:none;">
              <ul>
                <li><img src="../images/cn_photo10.gif" align="absmiddle" /> <a href="/cgi-bin/hostservice/hostlist.cgi">虚拟主机管理</a></li>
                <li><img src="../images/cn_photo11.gif" align="absmiddle" /> <a href="/dnsresolver.htm">智能解析管理</a></li>
                <li><img src="../images/cn_photo12.gif" align="absmiddle" /> <a href="/cgi-bin/userself/infoupdate.cgi">用户信息修改</a></li>
              </ul>
            </li>
          </ul> 
          <div class="cn_clear"></div> 
        </div> 
        <!--产品列表-->
        <div class="cn_bottom_con" style="display:none;" name="zzyliebiao" id="zzyliebiao">
          <table border="0" cellspacing="1" cellpadding="0">
            <thead>
              <tr>
                <th>产品类型</th>
                <th>产品总个数</th>
                <th>将过期的产品</th>
                <th>已过期的产品</th>
              </tr>
            </thead>
            <tbody id="productinfo">
              <tr>
                <td align="center" colspan="20">
                  <button class="cn_button01"  onClick="showproductinfo();">显示统计数据</button> 
                </td>
              </tr>
            </tbody>
          </table>
          <div class="cn_clear"></div> 
        </div> 
        <!--热卖产品-->
        <div class="cn_pro" style="display:none" name="zzyliebiao" id="zzyliebiao">
          <div class="cn_prol" style="display:none;">
            <div class="cn_prol_title">热卖老板邮局</div>
            <div class="cn_procon">
              <ul>
                <li><img src="../images/cn_photo13.jpg" /></li>
                <li>			    
                  <label>国内首推无限空间，无限存储</label><br />
                  <label>智能反垃圾，实时病毒检测</label><br />
                  
                  <label>全球转发，邮件“出境”不再难</label><br />
                  <label>邮件监控，信息传递尽在掌握</label><br />
                  <label>手机邮箱，随身携带，全球漫游</label><br />
                  <button class="cn_button01" onClick="javaScript:location.href='/cgi-bin/hostservice/bossmail_apply.cgi?freeid=0'">购　买</button><button class="cn_button01" onClick="window.open('http://www.laobanmail.com','_blank');">查看详情</button>		
                </li>
              </ul>
            </div>
          </div>
          <div class="cn_prol" style="display:;">
            <div class="cn_prol_title">热卖金牌邮局</div>
            <div class="cn_procon">
              <ul>
                <li><img src="../images/cn_photo13.jpg" /></li>
                <li>
                  <label>超大空间，G级存储</label><br />
                  <label>智能反垃圾，实时病毒检测</label><br />
                  <label>邮件监控，信息传递尽在掌握</label><br />
                  <label>手机邮箱，随身携带，全球漫游</label><br />
                  <label>独立备份，安全稳定</label><br />
                  <button class="cn_button01" onClick="javaScript:location.href='/cgi-bin/hostservice/goladmail.cgi'">购　买</button><button class="cn_button01" onClick="window.open('http://www.jinpaimail.com','_blank');">查看详情</button>
                </li>
              </ul>
            </div>
          </div>
          <div class="cn_pror">
            <div class="cn_pror_title">热卖主机</div>
            <div class="cn_procon">
              <ul>
                <li><img src="../images/cn_photo14.jpg" /></li>
                <li> 
                  <!--
                  <label>Windows2003或Linux操作系统</label><br>
                  <label>功能强大的控制面板管理</label><br>
                  <label>最快捷的WEB文件管理功能</label><br>
                  <label>最高效的WEB数据库管理功能</label><br>
                  <label>及时准确的流量统计报告</label><br> 
-->
                  <label>NT主机权限支持Server2008</label><br>
                  <label>领先技术，高性价比的明智选择</label><br>
                  <label>最快捷的WEB文件管理功能</label><br>
                  <label>功能强大的主机控制面板</label><br>
                  <label>睿机正版标识，昭显品牌，体现价值</label><br>
                  <button class="cn_button01" onClick="javaScript:location.href='/cgi-bin/hostservice/hostapply_list.cgi'">购　买</button><button class="cn_button01" onClick="openhost()">查看详情</button>
                </li>
              </ul>
            </div>
          </div>
          <div class="cn_clear"></div> 
        </div>
      </div>
    </div>
  </body>
</html>
