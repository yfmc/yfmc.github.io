/**
 * 작성날짜 계산해서 넣어주기
 */

var days=["일","월","화","수","목","금","토"];
    		var mydate= new Date();
    	
    		var yy=mydate.getFullYear();
    		var mm=mydate.getMonth()+1;
   		 	var dd=mydate.getDate();
    	
    		var i=mydate.getDay();
    		var day=days[i];
    	
    		var hh=mydate.getHours();
    		var mi=mydate.getMinutes();
    		var ss=mydate.getSeconds();
    	
    		var result=yy+"-"+mm+"-"+dd+" "+day+"요일"+hh+":"+mi+":"+ss;
    		document.write("<span>"+result+"</span>");