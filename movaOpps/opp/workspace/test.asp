<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>ҵ�����ϵͳ-��Ա��¼��ҳ</title>
    <script language="JavaScript" type="text/javascript" src="/js/zzyjs_comm.js" charset="GBK" ></script>
    <!--default-->
    <LINK rel=stylesheet type=text/css  href="/movaOpps/css/001/style.css">
    <!--����jquery-->
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
          <!--�����ҵ��-->
          <div class="cn_ywfw">
            <nobr><span class="cn_font04">���Ϻã� <span class="cn_font03">ojo9000</span>������һ�ε�½ʱ���ǣ�2012-12-13 12:34:44</span></nobr>
            <div class="cn_div01">
              <a href="/cgi-bin/userself/needrenew.cgi">��������ҵ�����</a>
              <a href="/cgi-bin/userself/nofundorder.cgi">δ��ͨҵ�����</a>
              <a href="/cgi-bin/userself/fundorder.cgi">�ѿ�ͨҵ�����</a>
              <a href="/cgi-bin/userself/productprice.cgi">�鿴�۸��б�</a>
            </div>
            <div class="cn_jfdiv">
              <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td nowrap="nowrap" class="cn_td09">���ý�</td>
                  <td><span class="cn_font03">52.00</span></td>
                  <td nowrap="nowrap" class="cn_td09">ʵ�ʽ�</td>
                  <td><span class="cn_font03">52.00</span></td>
                </tr>
                <tr>
                  <td nowrap="nowrap" class="cn_td09">����</td>
                  <td><span class="cn_font03">0.00</span></td>
                  <td nowrap="nowrap" class="cn_td09">�����</td>
                  <td><span class="cn_font03">0.00</span></td>
                </tr>
              </table>	
            </div>
          </div>
        <!--���ֹ���-->
        </div>
        <!--ϵͳ����-->
        <div class="cn_main_rt">
          <div class="cn_notice">
            <h2><a href="/cgi-bin/miscservice/notelist.cgi">����>></a> ϵͳ����</h2>
            <ul>
              
              <li><a href="/cgi-bin/miscservice/seenote.cgi?id=256"> 2012��10��12�� �����������ߵ���֪ͨ</a></li>
              
              <li><a href="/cgi-bin/miscservice/seenote.cgi?id=255"> 2012��10��11�� ����.com��.netע���ά��֪ͨ20121111</a></li>
              
              <li><a href="/cgi-bin/miscservice/seenote.cgi?id=254"> 2012��09��28�� �����������ż�֪ͨ20120930</a></li>
              
              <li><a href="/cgi-bin/miscservice/seenote.cgi?id=253"> 2012��09��19�� ���ڲ��ֹ�������ά������֪ͨ20120921</a></li>
              
            </ul>
          </div>
        </div>
      </div>
      <div class="cn_main_bottom">
        <div class="cn_bottom_title">
          <ul>
            <!--�������ĳһ����ʱ��ִ����on-->
            <li class="on" id="zzybiaoti" name="zzybiaoti"><a href="#" onmouseover="setDisplay('zzybiaoti','0','zzyliebiao','0')">��������������</a></li>
            <li class="" id="zzybiaoti" name="zzybiaoti"><a href="#" onmouseover="setDisplay('zzybiaoti','1','zzyliebiao','1')">��Ʒ�б�</a></li>
            <li class="" id="zzybiaoti" name="zzybiaoti"><a href="#" onmouseover="setDisplay('zzybiaoti','2','zzyliebiao','2')">������Ʒ</a></li>
          </ul>
        </div>
        <!--��������������-->
        <div class="cn_bottom_con" style="display:'';" name="zzyliebiao" id="zzyliebiao">
          <ul>
            <li>
              <ul>
                <li><img src="../images/cn_photo01.gif" align="absmiddle" /> <a href="/cgi-bin/fundmanage/fundlist.cgi">��������</a></li>
                <li><img src="../images/cn_photo02.gif" align="absmiddle" /> <a href="/cgi-bin/hostservice/hostlist.cgi">�������</a></li>
                <li><img src="../images/cn_photo03.gif" align="absmiddle" /> <a href="/cgi-bin/userself/productprice.cgi">����۸�ͳ��</a></li>
              </ul>
            </li>
            <li>
              <ul>
                <li><img src="../images/cn_photo04.gif" align="absmiddle" /> <a href="/cgi-bin/domainservice/domainmanagelist.cgi?language=1">Ӣ����������</a></li>
                <li><img src="../images/cn_photo05.gif" align="absmiddle" /> <a href="/cgi-bin/databasemanage/databaselist.cgi">���ݿ����</a></li>
                <li><img src="../images/cn_photo06.gif" align="absmiddle" /> <a href="/cgi-bin/fundmanage/invoiceapply.cgi">��Ʊ����</a></li>
              </ul>
            </li>
            <li>
              <ul>
                <li><img src="../images/cn_photo07.gif" align="absmiddle" /> <a href="/cgi-bin/domainservice/domainmanagelist.cgi?language=0">������������</a></li>
                <li><img src="../images/cn_photo08.gif" align="absmiddle" /> <a href="/cgi-bin/hostservice/scomb_manage_list.cgi">�ػ��ײ͹���</a></li>
                <li><img src="../images/cn_photo09.gif" align="absmiddle" /> <a href="/cgi-bin/miscservice/techsupport_manage.cgi">���ʱش�</a></li>
              </ul>
            </li>
            <li style="border:none;">
              <ul>
                <li><img src="../images/cn_photo10.gif" align="absmiddle" /> <a href="/cgi-bin/hostservice/hostlist.cgi">������������</a></li>
                <li><img src="../images/cn_photo11.gif" align="absmiddle" /> <a href="/dnsresolver.htm">���ܽ�������</a></li>
                <li><img src="../images/cn_photo12.gif" align="absmiddle" /> <a href="/cgi-bin/userself/infoupdate.cgi">�û���Ϣ�޸�</a></li>
              </ul>
            </li>
          </ul> 
          <div class="cn_clear"></div> 
        </div> 
        <!--��Ʒ�б�-->
        <div class="cn_bottom_con" style="display:none;" name="zzyliebiao" id="zzyliebiao">
          <table border="0" cellspacing="1" cellpadding="0">
            <thead>
              <tr>
                <th>��Ʒ����</th>
                <th>��Ʒ�ܸ���</th>
                <th>�����ڵĲ�Ʒ</th>
                <th>�ѹ��ڵĲ�Ʒ</th>
              </tr>
            </thead>
            <tbody id="productinfo">
              <tr>
                <td align="center" colspan="20">
                  <button class="cn_button01"  onClick="showproductinfo();">��ʾͳ������</button> 
                </td>
              </tr>
            </tbody>
          </table>
          <div class="cn_clear"></div> 
        </div> 
        <!--������Ʒ-->
        <div class="cn_pro" style="display:none" name="zzyliebiao" id="zzyliebiao">
          <div class="cn_prol" style="display:none;">
            <div class="cn_prol_title">�����ϰ��ʾ�</div>
            <div class="cn_procon">
              <ul>
                <li><img src="../images/cn_photo13.jpg" /></li>
                <li>			    
                  <label>�����������޿ռ䣬���޴洢</label><br />
                  <label>���ܷ�������ʵʱ�������</label><br />
                  
                  <label>ȫ��ת�����ʼ���������������</label><br />
                  <label>�ʼ���أ���Ϣ���ݾ�������</label><br />
                  <label>�ֻ����䣬����Я����ȫ������</label><br />
                  <button class="cn_button01" onClick="javaScript:location.href='/cgi-bin/hostservice/bossmail_apply.cgi?freeid=0'">������</button><button class="cn_button01" onClick="window.open('http://www.laobanmail.com','_blank');">�鿴����</button>		
                </li>
              </ul>
            </div>
          </div>
          <div class="cn_prol" style="display:;">
            <div class="cn_prol_title">���������ʾ�</div>
            <div class="cn_procon">
              <ul>
                <li><img src="../images/cn_photo13.jpg" /></li>
                <li>
                  <label>����ռ䣬G���洢</label><br />
                  <label>���ܷ�������ʵʱ�������</label><br />
                  <label>�ʼ���أ���Ϣ���ݾ�������</label><br />
                  <label>�ֻ����䣬����Я����ȫ������</label><br />
                  <label>�������ݣ���ȫ�ȶ�</label><br />
                  <button class="cn_button01" onClick="javaScript:location.href='/cgi-bin/hostservice/goladmail.cgi'">������</button><button class="cn_button01" onClick="window.open('http://www.jinpaimail.com','_blank');">�鿴����</button>
                </li>
              </ul>
            </div>
          </div>
          <div class="cn_pror">
            <div class="cn_pror_title">��������</div>
            <div class="cn_procon">
              <ul>
                <li><img src="../images/cn_photo14.jpg" /></li>
                <li> 
                  <!--
                  <label>Windows2003��Linux����ϵͳ</label><br>
                  <label>����ǿ��Ŀ���������</label><br>
                  <label>���ݵ�WEB�ļ�������</label><br>
                  <label>���Ч��WEB���ݿ������</label><br>
                  <label>��ʱ׼ȷ������ͳ�Ʊ���</label><br> 
-->
                  <label>NT����Ȩ��֧��Server2008</label><br>
                  <label>���ȼ��������Լ۱ȵ�����ѡ��</label><br>
                  <label>���ݵ�WEB�ļ�������</label><br>
                  <label>����ǿ��������������</label><br>
                  <label>������ʶ������Ʒ�ƣ����ּ�ֵ</label><br>
                  <button class="cn_button01" onClick="javaScript:location.href='/cgi-bin/hostservice/hostapply_list.cgi'">������</button><button class="cn_button01" onClick="openhost()">�鿴����</button>
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
