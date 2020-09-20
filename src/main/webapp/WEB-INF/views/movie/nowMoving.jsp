<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/nowMoving.css?time=<%=System.currentTimeMillis()%>">
<!-- ========== 컨텐츠 영역 시작 ========== -->
<link rel="stylesheet"
	href="https://www.littlesnippets.net/css/codepen-result.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/plugins/ajax_sws/ajax_helper.css">
<title>현재상영작 | Cinephile</title>
<div class="contentHeight">
	<div class="content">
		<div class="list_title">
			<h2>박스오피스</h2>
			<p>
			<ul>
				<li><a href="#">현재 상영작</a></li>
				<li><a
					href="${pageContext.request.contextPath}/movie/willMoving.do?movielist=개봉일순">상영
						예정작</a></li>
			</ul>
			</p>
		</div>
		<div class="clearfix">
			<div class="dropdown pull-right">
				<button class="btn btn-success dropdown-toggle" type="button"
					id="dropdownMenu2" data-toggle="dropdown">
					${movielist}<span class="caret"></span>
				</button>

				<ul class="dropdown-menu dropdown-menu-right">
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="${pageContext.request.contextPath}/movie/nowMoving.do?movielist=예매순" class="ranking" >예매순</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="${pageContext.request.contextPath}/movie/nowMoving.do?movielist=평점순" class="ranking" >평점순</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="${pageContext.request.contextPath}/movie/nowMoving.do?movielist=관람객순" class="ranking" >관람객순</a></li>
				</ul>

			</div>
		</div>
		<!-- 갤러리 영역 -->
		<div class="scroll-row">
			<div class="king-row">
				<c:forEach var="k" items="${output}" varStatus="status">
					<div class="movie-picture">
						<div class="rank">
							NO.<span>${status.index+1}</span>
						</div>
						<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
						<figure class="imageup">
							<div class="row">
								<!-- 이미지 영역 -->
								<c:choose>
									<c:when test="${k.poster_link != null}">
										<div class="movie-image">
											<span><img src="${k.poster_link}"
												class="img-responsive" />
												<figcaption>
													<a href="${pageContext.request.contextPath}/예매페이지"
														id="book1">예매하기</a> <a
														href="${pageContext.request.contextPath}/movie/MovieContent.do"
														id="information1">상세정보</a>
												</figcaption></span>
										</div>
									</c:when>
									<c:otherwise>
										<div class="movie-image">
											<span><img
												src="https://blog.kakaocdn.net/dn/uWnY7/btqI4S6VLt1/0KNymI3JcPIAhvwvgiJ3pK/img.png"
												class="img-responsive" />
												<figcaption>
													<a href="${pageContext.request.contextPath}/예매페이지"
														id="book1">예매하기</a> <a
														href="${pageContext.request.contextPath}/movie/MovieContent.do"
														id="information1">상세정보</a>
												</figcaption></span>
										</div>
									</c:otherwise>
								</c:choose>
								<!-- 텍스트 영역 -->
								<!-- 연령제한 표시 
								0 - 전체
								1 - 12세
								2 - 15세
								3 - 청불-->
								<c:choose>
									<c:when test="${k.age_limit == 0}">
										<div class="movie-text">
											<span>
												<h4>
													<span class="label label-success">
													전체
													</span>${k.title}
												</h4>
											</span>
										</div>
									</c:when>
									
									<c:when test="${k.age_limit == 1}">
										<div class="movie-text">
											<span>
												<h4>
													<span class="label label-primary">		
													12
													</span>${k.title}
												</h4>
											</span>
										</div>
									</c:when>
									
									<c:when test="${k.age_limit == 2}">
										<div class="movie-text">
											<span>
												<h4>
													<span class="label label-warning">
													15
													</span>${k.title}
												</h4>
											</span>
										</div>
									</c:when>
									<c:when test="${k.age_limit == 3}">
										<div class="movie-text">
											<span>
												<h4>
													<span class="label label-danger">													
													청불							
													</span>${k.title}
												</h4>
											</span>
										</div>
									</c:when>
									<c:otherwise>
										<div class="movie-text">
											<span>
												<h4>
													<span class="label label-default">													
													X							
													</span>${k.title}
												</h4>
											</span>
										</div>
									</c:otherwise>
								</c:choose>

							</div>
						</figure>
					</div>
				</c:forEach>
			</div>
		</div>
		<!-- scroll-row끝! -->
		<!-- 갤러리 8개 끝!!! -->
		<!-- Mapper에서 Limit를 10개까지로 제한 했으므로 더보기 기능을 일단 생략해놓는다. -->
		<!--  <div class="plusbutton" style="visibility: visible;" id="plusbutton">
				<button class="btn btn-danger" id="morenowmoving">
					<!-- bs3-icon:glyphicon
					<!-- icon에는 내가 넣고 싶은 것을 넣으면 된다.
					<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
				</button>
			</div> -->
	</div>
</div>
<!-- side바 -->

<div class="icon-bar">
	<a
		href="${pageContext.request.contextPath}/assets/movie/nowMoving.do?time=<%=System.currentTimeMillis()%>"
		class="side-boxoffice"><i class="fas fa-film"></i><b>박스오피스</b></a> <a
		href="${pageContext.request.contextPath}/assets/movie/MovieSearch.do?time=<%=System.currentTimeMillis()%>"
		class="side-moviesearch"><i class="fas fa-search"></i><b>영화검색</b></a>
	<a
		href="${pageContext.request.contextPath}/assets/movie/MovieNews1.do?time=<%=System.currentTimeMillis()%>"
		class="side-movienews"><i class="far fa-file-alt"></i><b>영화소식</b></a>
	<a
		href="${pageContext.request.contextPath}/assets/movie/Statistics.do?time=<%=System.currentTimeMillis()%>"
		class="side-statistics"><i class="fas fa-chart-bar"></i><b>통계</b></a>
</div>

<!--// ========== 컨텐츠 영역 끝 ========== -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/plugins/ajax_sws/ajax_helper.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/plugins/handlebars/handlebars-v4.7.6.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<!--<script
	src="${pageContext.request.contextPath}/assets/js_files/ranking.js"></script>-->
<script type="text/javascript">
	$(".hover").mouseleave(function() {
		$(this).removeClass("hover");
	});

//	$('.dropdown-menu > li > a').click(
//			function(e) {
//				var contents = $(this).html();
//				$('button.dropdown-toggle').html(
//						contents + ' <span class="caret"></span>');
//			});

	$(function() {
		$("#information1").click(function() {
			location.href = "../movie/MovieContent.jsp";
		});
	});
</script>
<%@ include file="../_inc/footer.jsp"%>
