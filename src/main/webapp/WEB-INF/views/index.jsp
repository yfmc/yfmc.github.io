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
					<img src="<%=request.getContextPath()%>/assets/img/alive.jpg">
				</div>
				<div class="item">
					<img src="<%=request.getContextPath()%>/assets/img/bando2.jpg">
				</div>
				<div class="item">
					<img src="<%=request.getContextPath()%>/assets/img/akak.jpg">
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
					<a href="#" class="thumbnail"> <img src="<%=request.getContextPath()%>/assets/img/ar1.jpg" class="img-responsive" />
						<h4>리뷰 | ‘SF8-블링크’, 클리셰 범벅에 한숨만 푹</h4>
					</a>
				</div>
			</div>
			<!-- // 갤러리 한 개 영역 -->
			<!-- 갤러리 한 개 영역 -->
			<div class="col-md-3 col-sm-3 col-xs-3">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<div class="thumb">
					<a href="#" class="thumbnail"> <img src="<%=request.getContextPath()%>/assets/img/ar2.jpg" class="img-responsive" />
						<h4>이슈 | HBO 맥스, ‘배트맨’ 드라마 제작 확정</h4>
					</a>
				</div>
			</div>
			<!-- // 갤러리 한 개 영역 -->
			<!-- 갤러리 한 개 영역 -->
			<div class="col-md-3 col-sm-3 col-xs-3">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<div class="thumb">
					<a href="#" class="thumbnail"> <img src="<%=request.getContextPath()%>/assets/img/ar3.jfif" class="img-responsive" />
						<h4>인터뷰 | ‘반도’ 연상호 감독 “이레, 첫 만남에 크게 될 배우라 느껴”</h4>
					</a>
				</div>
			</div>
			<!-- // 갤러리 한 개 영역 -->
			<!-- 갤러리 한 개 영역 -->
			<div class="col-md-3 col-sm-3 col-xs-3">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<div class="thumb">
					<a href="#" class="thumbnail"> <img src="<%=request.getContextPath()%>/assets/img/ar4.jpg" class="img-responsive" />
						<h4>기획 | 퀸의 귀환, 만능 엔터테이너 엄정화의 화려한 필모</h4>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
<script ></script>
<%@ include file="_inc/footer.jsp"%>