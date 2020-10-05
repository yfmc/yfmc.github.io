<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="_inc/header.jsp"%>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/index.css" />
<title>Cinephile</title>

<!-- content -->
<div id="content">
	<div class="ad">
		<div id="carousel-id" class="carousel slide" data-ride="carousel">
			<!-- 중앙 하단부 동그라미들 -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-id" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-id" data-slide-to="1" class=""></li>
				<li data-target="#carousel-id" data-slide-to="2" class=""></li>
			</ol>
			<!-- 이미지 슬라이드 -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="<%=request.getContextPath()%>/assets/img/main01.jpg">
				</div>
				<div class="item">
					<img src="<%=request.getContextPath()%>/assets/img/main02.jpg">
				</div>
				<div class="item">
					<img src="<%=request.getContextPath()%>/assets/img/main03.jpg">
				</div>
			</div>
			<!-- 이전,다음 버튼 -->
			<a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
		</div>
	</div>
	<div class="article">
		<div class="col-lg-12">
			<div class="page-header">
				<h2>영화 소식</h2>
			</div>
		</div>
		<div class="row">
			<!-- 갤러리 한 개 영역 -->
			<div class="col-md-3 col-sm-3 col-xs-3">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<div class="thumb">
					<a href="${pageContext.request.contextPath}/movie/movienewsdetail/MovieNewsDetail01.do?time=<%=System.currentTimeMillis()%>" class="thumbnail"> <img src="https://d3ihz389yobwks.cloudfront.net/1597907066317aowWm.jpg" class="img-responsive" />
						<h4>인터뷰 | 홍경표 촬영 감독이 직접 밝힌 ‘다만 악’ 촬영 비하인드</h4>
					</a>
				</div>
			</div>
			<!-- // 갤러리 한 개 영역 -->
			<!-- 갤러리 한 개 영역 -->
			<div class="col-md-3 col-sm-3 col-xs-3">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<div class="thumb">
					<a href="${pageContext.request.contextPath}/movie/movienewsdetail/MovieNewsDetail02.do?time=<%=System.currentTimeMillis()%>" class="thumbnail"> <img src="https://d3ihz389yobwks.cloudfront.net/1597883046055mMZ7N.jpg" class="img-responsive" />
						<h4>인터뷰 | ‘남매의 여름밤’ 윤단비 감독이 전하는 우리 모두의 여름 밤</h4>
					</a>
				</div>
			</div>
			<!-- // 갤러리 한 개 영역 -->
			<!-- 갤러리 한 개 영역 -->
			<div class="col-md-3 col-sm-3 col-xs-3">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<div class="thumb">
					<a href="${pageContext.request.contextPath}/movie/movienewsdetail/MovieNewsDetail03.do?time=<%=System.currentTimeMillis()%>" class="thumbnail"> <img src="https://d3ihz389yobwks.cloudfront.net/1597907346425tMZEn.jpg" class="img-responsive" />
						<h4>이슈 | 영화계 또 다시 올스톱…오프라인 행사 모두 취소</h4>
					</a>
				</div>
			</div>
			<!-- // 갤러리 한 개 영역 -->
			<!-- 갤러리 한 개 영역 -->
			<div class="col-md-3 col-sm-3 col-xs-3">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<div class="thumb">
					<a href="${pageContext.request.contextPath}/movie/movienewsdetail/MovieNewsDetail05.do?time=<%=System.currentTimeMillis()%>" class="thumbnail"> <img src="https://d3ihz389yobwks.cloudfront.net/1597985568562vLTBu.jpg" class="img-responsive" />
						<h4>리뉴얼 축전 | 김새벽 "맥스무비 새단장을 축하합니다"</h4>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
<script ></script>
<%@ include file="_inc/footer.jsp"%>