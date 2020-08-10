/**
 * 드롭다운 형태에서 영화검색조건 고르기
 */

$(function() {
	
	// 국적 전체 선택
	$("#all_nation").change(function() {
		$(".nation").prop("checked", $(this).prop("checked"));
	});
	// 장르 전체 선택
	$("#all_genre").change(function() {
		$(".genre").prop("checked", $(this).prop("checked"));
	});
	
	$("#movie-search").submit(function() {
		var movie_option = $("#movie-option").val();
		console.log(movie_option);
		if (!movie_option) {
			alert("영화검색 조건을 선택해주세요.");
			$("#movie-option").focus();
			return false;
		}
	});
});
