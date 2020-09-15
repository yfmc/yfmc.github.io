/**
 * 별점 매기기
 */
$(function() {
	$('.starRev span').click(function() {
		$(this).parent().children('span').removeClass('on');
		$(this).addClass('on').prevAll('span').addClass('on');
		var value=$(this).index();
		console.log(value);
		return false;
	});
});
