 
 var begin;
 var pPhone;
 var pStatus;
 
 var pSeatTel = "";
 var pConnTel = "";
 var pMenuKey ="";
 
 var pBindTel ="";
 var pUserData="";
 
 var pSeatEnabled="";
 var pSeatStatus="";
 
 
function go()
{
　　begin = setInterval("document.movalogicCC.checkActiveX(window);",10); 
}

function openSeat(){
	if (confirm("您确定开启坐席吗？")){
		document.movalogicCC.openSeat(window);	
	}
	
}

function closeSeat(){
	if (confirm("您确定关闭坐席吗？")){
		document.movalogicCC.closeSeat(window);
	}
}

function getSeatStatus(){
	document.movalogicCC.getSeatStatus(window);		
}

function movaCall(outPhone){
		document.movalogicCC.activexCall(outPhone);	
}
function ip01Call(outPhone){
		document.movalogicCC.activexIPCall(outPhone);	
} 


function stopx()
{
　　clearInterval(begin);
}

 function parseMessage(msg){
 
 		var re  = new RegExp(/guestTel=\'.*?\'/gi);
 		var arrData = msg.match(re);
 		var guestTel = "";
 		var sign="";
 		var seatTel = "";
 		var connTel = "";
 		var menuKey ="";
 		var bindTel="";
 		var userData="";
 		var enabled ="";
 		var seatStatus="";
 	 
 		
 
 		re  = new RegExp(/guestTel=\'.*?\'/gi);
 		var arrData = msg.match(re); 
 		if (arrData!=null){
 				guestTel = arrData[0];
 				guestTel = guestTel.replace("guestTel='","").replace("'","")
 		}
 		pPhone = guestTel;
 		
 		re  = new RegExp(/sign=\'.*?\'/gi);
 		var arrData = msg.match(re); 
 		if (arrData!=null){
 				sign = arrData[0];
 				sign = sign.replace("sign='","").replace("'","")
 		}
 		pStatus = sign;
 		
 		
 		re  = new RegExp(/seatTel=\'.*?\'/gi);
 		var arrData = msg.match(re); 
 		if (arrData!=null){
 				seatTel = arrData[0];
 				seatTel = seatTel.replace("seatTel='","").replace("'","")
 		}
 		pSeatTel  = seatTel;
 		
 		re  = new RegExp(/connTel=\'.*?\'/gi);
 		var arrData = msg.match(re); 
 		if (arrData!=null){
 				connTel = arrData[0];
 				connTel = connTel.replace("connTel='","").replace("'","")
 		}
 		pConnTel = connTel.substr(3);
 
 		
 		re  = new RegExp(/menuKey=\'.*?\'/gi);
 		var arrData = msg.match(re); 
 		if (arrData!=null){
 				menuKey = arrData[0];
 				menuKey = menuKey.replace("menuKey='","").replace("'","")
 		}
 		pMenuKey = menuKey;
 		
 		re  = new RegExp(/bindTel=\'.*?\'/gi);
 		var arrData = msg.match(re); 
 		if (arrData!=null){
 				bindTel = arrData[0];
 				bindTel = bindTel.replace("bindTel='","").replace("'","")
 		}
 		pBindTel = bindTel;
 		
 		
 		re  = new RegExp(/userData=\'.*?\'/gi);
 		var arrData = msg.match(re); 
 		if (arrData!=null){
 				userData = arrData[0];
 				userData = userData.replace("userData='","").replace("'","")
 		}
 		pUserData = userData;
 
 
 		
 		if (pStatus=="8"){
 			re  = new RegExp(/enabled=\'.*?\'/gi);
 			var arrData = msg.match(re); 
 			if (arrData!=null){
 					enabled = arrData[0];
 					enabled = enabled.replace("enabled='","").replace("'","")
 			}
 			pSeatEnabled =  enabled;
 			
 			
 			re  = new RegExp(/loginStatus=\'.*?\'/gi);
 			var arrData = msg.match(re); 
 			if (arrData!=null){
 					seatStatus = arrData[0];
 					seatStatus = seatStatus.replace("loginStatus='","").replace("'","")
 			}
 			pSeatStatus =  seatStatus;
 		}
 		
 		if (pStatus!="9"){
 			pUserData = "";
		}
 	
 
 		 return "" ;
 		
 		
 }