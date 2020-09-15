<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../../_inc/header.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/MovieNewsDetail.css?time=<%=System.currentTimeMillis()%>">
<title>영화소식상세정보 | Cinephile</title>
<!-- ========== 컨텐츠 영역 시작 ========== -->
<div class="movieNews">
<!--영화 제목-->
	<div class="mainNewsTitle clearfix">
		<h3 class="floatLeft">박스오피스 | '다만 악' 개봉 첫 주말 138만 관객 동원…200만 돌파</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<p>영화 '다만 악에서 구하소서'가 개봉 첫 주말 200만 관객을 돌파했다.</p>
		<figure class="image-captioned"
			style="display: block; margin: 0 auto; height: auto; width: 100%;">
			<img alt="영화 '다만 악에서 구하소서' 스틸. 사진 CJ엔터테인먼트" id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597432996411903921005864100.jpg"
				style="display: block; margin: 0 auto;" width="100%" />
			<figcaption>영화 '다만 악에서 구하소서' 스틸. 사진 CJ엔터테인먼트</figcaption>
		</figure>
		<p>영화진흥위원회 영화관입장권 통합전산망에 따르면 영화 '다만 악에서 구하소서'는 개봉 첫 주말인 지난 7일부터
			9일까지 3일동안 138만 9520명의 관객을 동원했다. 이날까지 누적관객수는 201만 5040명으로 지난 5일 개봉 후
			5일만의 기록이다.</p>
		<p>'다만 악에서 구하소서'는 마지막 청부살인 미션 때문에 새로운 사건에 휘말리게 되는 인남(황정민)과 그를 쫓는
			무자비한 추격자 레이(이정재)의 처절한 추격과 사투를 그린 작품이다.</p>
		<p>'다만 악에서 구하소서'의 이같은 기록은 올 설 연휴 개봉한 '남산의 부장들' 이후 200여일 만에 최초로,
			코로나 19 이후 극장가 일일 최다 관객수를 동원한 기록이기도 하다. 이로써 '다만 악에서 구하소서'는 코로나19 이후
			최단기간 100만, 200만 관객 돌파, 개봉주 최고 흥행 및 최초 200만 관객 돌파 기록을 가진 작품이 됐다.</p>
		<p>같은 기간 흥행 2위는 '강철비2: 정상회담'이다. 20만 3620명을 동원했으며, 누적관객수는 154만
			2394명이다. '다만 악에서 구하소서' 개봉으로 순위가 밀렸으며, 관객수도 대폭 감소했다.</p>
		<p>3위를 차지한 '반도'는 9만 9656명을 더해 누적관객수 369만 3324명을 기록했고, '애니멀 크래커'는
			5만 2647명을 동원해 4위에 이름을 올렸다. 5위 '알라딘'은 1만 4180명을 동원했다.</p>
		<p>'빅샤크3: 젤리몬스터 대소동' '미녀와 야수' '소년시절의 너' '온워드: 단 하루의 기적' '밤쉘: 세상을
			바꾼 폭탄선언' 등이 그 뒤를 이었다.</p>
		<p></p>
		<p></p>
	</div>
<span class="buttonMoving">
<button type="button" class="btn btn-warning" onclick="location.href='${pageContext.request.contextPath}/movie/MovieNews7.do'">목록으로</button>
<button type="button" class="btn btn-danger" onclick="location.href='#'">맨위로</button>
</span>
</div>

<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>

<!--// ========== 컨텐츠 영역 끝 ========== -->

<%@ include file="../../_inc/footer.jsp"%>
