<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/MovieContent2.css?time=<%=System.currentTimeMillis()%>">
<title>영화상세페이지 | Cinephile</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/plugins/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/plugins/slick/slick-theme.css" />
<!-- ========== 컨텐츠 영역 시작 ========== -->
<!-- 내용 부분 시작 -->
<div class="container">
	<!-- 영화 포스터 시작 -->
	<div class="movie-poster-etc">
		<div class="movie-poster">
			<span> <img
				src="${pageContext.request.contextPath}/assets/img/nowmoving2.jpg" alt="영화포스터"
				class="img-rounded" />
			</span>
		</div>
		<div class="movie-etc1">
			<div class="box-margin" style="height: 20px;"></div>
			<h3>
				<span>반도</span>
				<button type="button" class="btn btn-danger" disabled>예매하기</button>
			</h3>
			<h4>
				감독:<span>연상호</span>
			</h4>
			<h4>
				배우:<span>강동원, 이정현</span>
			</h4>
			<h4>
				장르:<span>액션, 드라마</span>
			</h4>
			<h4>
				등급:<span>15세 관람가</span>
			</h4>
			<h4>
				개봉일:<span>2020년 07월 15일</span>
			</h4>
		</div>
	  	<!--  
		<div class="movie-etc2">
			<p>
				<button type="button" class="btn btn-primary" id="likebutton">좋아요</button>
				<span id="likecount"></span>
			</p>
			<p>
				누적관람객 : <span>1,123,456</span>명
			</p>
			<p>관람객 평점 :
			<div class="starRev">
				<span class="starR">별1</span> <span class="starR">별2</span> <span
					class="starR">별3</span> <span class="starR">별4</span> <span
					class="starR">별5</span>
			</div>
			</p>
		</div>
		-->
	</div>
	<!-- 영화 포스터 끝 -->
	<br>
	<hr>
	<br>
	<div class="movie-summary">
		<h2>줄거리</h2>
		<div class="movie-summaryText">
			<span>
				<p>8명의 영화감독이 연출을 맡은 시네마틱 드라마 프로젝트 ‘SF8’이 공개됐다. 이 중 노덕 감독이 연출을 맡은
					‘만신’은 빅데이터와 딥러닝을 기반으로 한 인공지능 운세 프로그램 만신이 높은 적중률로 사람들의 일상을 미리 알려주는
					이야기를 그렸다.</p>
				<p>인공지능 운세 프로그램 만신의 예언에 대부분의 사람들이 의존하고 있는 세상. 만신을 믿지 않는 몇 안 되는
					사람인 선호(이연희)는 만신을 신봉했지만, 갑작스레 죽음을 맞이했던 동생의 운세를 알아내기 위해 오늘도 만신의 개발자를
					찾아다닌다.</p>
				<p>가람은 그런 선호와 정 반대의 인물이다. 세상을 비관하며 삶을 마감하려 했던 그는 만신을 통해 기적적으로
					살아남아 만신을 믿게 된다. 만신에 의존하다 못해 광신도가 된 가람은 북극성을 따라가라는 만신의 운세를 믿고 별 문양
					옷을 입은 선호를 따라나선다.</p>
			</span>
		</div>
		<!-- 줄거리 사진 사용 시작 -->

		<div class="image-moving">
			<div>
				<img class="moving1"
					src="https://movie-phinf.pstatic.net/20200323_31/15849509293083Wvy1_JPEG/movie_image.jpg?type=m427_320_2">
			</div>
			<div>
				<img class="moving2"
					src="https://movie-phinf.pstatic.net/20200323_249/1584950929881knIcA_JPEG/movie_image.jpg?type=m427_320_2">
			</div>
			<div>
				<img class="moving3"
					src="https://movie-phinf.pstatic.net/20200608_112/1591580449257oArdT_JPEG/movie_image.jpg?type=m427_320_2">
			</div>
			<div>
				<img class="moving4"
					src="https://movie-phinf.pstatic.net/20200611_244/1591837978107hs0hf_JPEG/movie_image.jpg?type=m427_320_2">
			</div>
		</div>
		<!-- 줄거리 사진 사용사용 끝 -->
	</div>
	<hr>
	<div class="staticPicture">
		<table>
			<tr>
				<th>연령대별 관람객</th>
				<th>성별 관람객</th>
			</tr>
			<tr>
				<td><span> <img
						src="${pageContext.request.contextPath}/assets/img/일별박스오피스관객수.png"
						alt="일별 박스오피스 순위">
				</span></td>
				<td><span> <img
						src="${pageContext.request.contextPath}/assets/img/주간주말박스오피스관객수.png"
						alt="주간주말박스오피스관객수">
				</span></td>
			</tr>
		</table>
	</div>
	<!-- 한줄평 작성하기 -->
	<div class="movie-advice">
		<h3>한줄평</h3>
		<form>
			<input type="text" placeholder="한줄평을 작성해주세요." id="people-textarea" />
			<button type="submit" class="btn btn-dark" id="beforeinput"
				style="float: right">등록</button>
			<div class="starRev">
				<span class="starR on">별1</span> <span class="starR on">별2</span> <span
					class="starR on">별3</span> <span class="starR">별4</span> <span
					class="starR">별5</span>
			</div>
		</form>
	</div>
	<hr>
	<!-- 회원들이 작성한 댓글 시작 -->
	
	<!--페이지 넘기기 -->
	<div class="pagePass">
		<ul class="pagination">
			<li class="page-item"><a class="page-link" href="#">Previous</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>
			<li class="page-item"><a class="page-link" href="#">Next</a></li>
		</ul>
	</div>
	<!-- 회원들이 작성한 댓글 끝-->
	<div class="pageUpbutton">
		<button type="button" class="btn btn-dark" style="float: right"
			onclick="location.href='#'">맨위로</button>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js_files/likecount.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js_files/star.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js_files/people_text.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/slick/slick.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".image-moving").slick({
			centerMode : true,
			centerPadding : '0px',
			slidesToShow : 1,
			responsive : [ {
				breakpoint : 768,
				settings : {
					arrows : false,
					centerMode : true,
					centerPadding : '30px',
					slidesToShow : 4
				}
			}, {
				breakpoint : 480,
				settings : {
					arrows : false,
					centerMode : true,
					centerPadding : '30px',
					slidesToShow : 1
				}
			} ]
		});
	});
</script>
<!-- 내용 부분 끝 -->
<!--// ========== 컨텐츠 영역 끝 ========== -->
<%@ include file="../_inc/footer.jsp"%>