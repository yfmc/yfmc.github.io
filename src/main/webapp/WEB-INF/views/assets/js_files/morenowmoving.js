/**
 * 더보기 버튼 클릭시 현재 상영중인 영화를 더 보여준다.
 */

function get_list(){
		$.get("../api/nowmovinglist.json",function(req){
			var template=Handlebars.compile($("#nowmoving-list").html());
			var html=template(req);
			$(".king-row").append(html);
		});
	}
	
	$(function(){
		var count=0;
		//get_list();
		$("#morenowmoving").one('click',function(e){
			get_list();
			count++;
			if(count==1){
				document.all.plusbutton.style.visibility="hidden";
				console.log(count);
			}
		});
	});