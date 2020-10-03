/**
 * 좋아요 갯수 누르면 up, 한번더 누르면 down
 */


$(function() {
	var counter = {single : 0, count : 1, total : 1513123};
	
	$("#likecount").html(counter.total);
	$("#likebutton").click(function() {
		counter.count++;
		if (counter.count%2!= 0) {
			counter.single--;
			$("#likecount").html(counter.total+counter.single);
			
		} else {
			counter.single++;
			$("#likecount").html(counter.total+counter.single);
		}
	});
});