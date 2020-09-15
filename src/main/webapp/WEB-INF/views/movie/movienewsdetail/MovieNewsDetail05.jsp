<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../../_inc/header.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/MovieNewsDetail.css?time=<%=System.currentTimeMillis()%>">
<title>영화소식상세정보 | Cinephile</title>

<!-- ========== 컨텐츠 영역 시작 ========== -->
<div class="movieNews">
	<!--영화 제목-->
	<div class="mainNewsTitle clearfix">
		<h3 class="floatLeft">리뉴얼 축전 | 김새벽 "맥스무비 새단장을 축하합니다"</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<p>배우 김새벽이 맥스무비 개편 및 창간 21주년을 맞아 축하 인사를 건넸다.</p>
		<figure class="image-captioned six"
			style="display: block; margin: 0 auto; height: auto; width: 600px;">
			<img alt="배우 김새벽. 사진 키이스트" id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597985568562vLTBu.jpg"
				style="display: block; margin: 0 auto; width: 100%;" />
			<figcaption>배우 김새벽. 사진 키이스트</figcaption>
		</figure>
		<p>2011년 영화 '줄탁동시'로 데뷔한 김새벽은 영화 '만신' '한여름의 판타지아' '설행-눈길을 걷다' '파란입이
			달린 얼굴' '걷기왕' '그 후' '초행' '풀잎들' '얼굴들' '국경의 왕' '벌새' '항거: 유관순 이야기' '도망친
			여자' 등 독립영화에서 활발히 활동했다. 최근 키이스트와 전속계약을 체결했으며, 차기작은 변성현 감독이 메가폰을 잡은
			'킹메이커'다.</p>
		<figure class="image-captioned six"
			style="display: block; margin: 0 auto; height: auto; width: 600px;">
			<img alt="배우 김새벽. 사진 BH엔터테인먼트" id="contentsImage2"
				src="https://d3ihz389yobwks.cloudfront.net/1597978315050zcNq4.jpg"
				style="display: block; margin: 0 auto; width: 100%;" />
			<figcaption>배우 김새벽. 사진 키이스트</figcaption>
		</figure>
	</div>
	<span class="buttonMoving">
		<button type="button" class="btn btn-warning"
			onclick="location.href='${pageContext.request.contextPath}/movie/MovieNews1.do'">목록으로</button>
		<button type="button" class="btn btn-danger"
			onclick="location.href='#'">맨위로</button>
	</span>
</div>

<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
<!--// ========== 컨텐츠 영역 끝 ========== -->

<%@ include file="../../_inc/footer.jsp"%>
