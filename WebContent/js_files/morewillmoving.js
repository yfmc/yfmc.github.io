/**
 * 
 */

function get_list(){
		$.get("../api/willmovinglist.json",function(req){
			var template=Handlebars.compile($("#willmoving-list").html());
			var html=template(req);
			$(".king-row").append(html);
		});
	}
	
	$(function(){
		var count=0;
		//get_list();
		$("#morewillmoving").one('click',function(e){
			get_list();
			count++;
			if(count==1){
				document.all.plusbutton.style.visibility="hidden";
				console.log(count);
			}
		});
	});
	