/**
 *  사람들이 댓글을 달면 최근순으로 위로 올라온다.
 */

$(function(){
		$("#beforeinput").click(function(e){
			e.preventDefault();
			var t = $("#people-textarea").val();
			//console.log(t);
			var li = $("<li>").addClass("people-text").html(t);
			//console.log(li);
			var tt = "people_id";
			var li2 = $("<label>").addClass("text").html(tt);
			$(".people-comment").prepend(li);
			$(".people-text").prepend(li2);
		});
	});