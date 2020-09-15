/**
 * 평점순으로 영화목록을 보여주기
 */

let choiceType = null;
//let nowPage = 1;

function ranking_list(){
		$.get("../api/ranking.json", {
			type: choiceType,
			//page: nowPage
		},function(req){
			var template=Handlebars.compile($("#ranking-list").html());
			var html=template(req);
			$(".king-row").html(html);
		});
	}

$(function(){
	$(".ranking").click(function(e){
		e.preventDefault();
		choiceType = $(this).data('type');
		//nowPage = 1;
		ranking_list();
	});
});

/**
var count=0;
$("#morenowmoving").one('click',function(e) {
	e.preventDefault();
	//nowPage++;
	ranking_list();
	count++;
	if(count==1){
		document.all.plusbutton.style.visibility="hidden";
		console.log(count);
	}
});
**/
	
/**
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
	**/
