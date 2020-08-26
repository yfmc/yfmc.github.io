$(function(){
	$('[data-toggle="tooltip"]').tooltip(); //마우스 올리면 툴팁 뜨게 함
	
	$(document).on("click",".often",function(){ //버튼 누를 시 페이지 이동
		window.open('./oftentheater.jsp','','width=640,height=530,scrollbars=no,toolbars=no,menubar=no,status=no,location=no,left=500,top=200');
	});
	$(document).on("click",".bt1",function(){
		location.href='./bookinglist.jsp';
	});
	$(document).on("click",".bt2",function(){
		location.href='./choicelist.jsp';
	});
});
