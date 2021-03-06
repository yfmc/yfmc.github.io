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
		<h3 class="floatLeft">현장 | ‘어서오시게스트하우스’ 심요한 감독 “이학주 캐스팅, 처음엔
			고민했다”</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<p>심요한 감독이 영화 ‘어서오시게스트하우스’의 개봉을 앞둔 소감을 밝혔다.</p>
		<figure class="image-captioned six"
			style="display: block; margin: 0 auto; height: auto; width: 600px;">
			<img alt="영화 '어서오시게스트하우스' 포스터. 사진 (주)리틀빅픽처스" id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597433017487903942081684000.jpg"
				style="display: block; margin: 0 auto;" width="100%" />
			<figcaption>영화 '어서오시게스트하우스' 포스터. 사진 (주)리틀빅픽처스</figcaption>
		</figure>
		<p>7일 오후 영화 ‘어서오시게스트하우스’(감독 심요한) 언론시사회가 서울시 용산구 CGV용산아이파크몰에서 열렸다.
			이날 행사는 메가폰을 잡은 심요한 감독과 함께 배우 이학주, 박선영, 신민재, 신재훈이 참석해 영화에 대한 다양한 이야기를
			나눴다.</p>
		<p>영화 ‘어서오시게스트하우스’는 서핑 게스트하우스에서 숙식 알바를 시작한 대학교 5학년 취준생 준근(이학주)이
			홧김에 양양 바다를 걸고 금수저 서퍼와 막무가내 서핑 배틀을 시작하며 벌어지는 객기 폭발 청춘 버스터다. 제23회
			부천국제판타스틱 영화제 관객상을 수상한 작품으로, 심요한 감독의 장편 데뷔작이다.</p>
		<figure class="image-captioned"
			style="display: block; margin: 0 auto; height: auto; width: 100%;">
			<img alt="영화 '어서오시게스트하우스' 스틸. 사진 (주)리틀빅픽처스" id="contentsImage2"
				src="https://d3ihz389yobwks.cloudfront.net/1597433017565903942159185100.jpg"
				style="display: block; margin: 0 auto;" width="100%" />
			<figcaption>영화 '어서오시게스트하우스' 스틸. 사진 (주)리틀빅픽처스</figcaption>
		</figure>
		<p>심요한 감독은 “개봉한다는 실감이 안 났는데, 이 자리에 서니 실감이 난다”며 개봉을 앞둔 소감을 밝혔다. 이어
			그는 “사실 이미 시나리오를 썼을 때 나이가 서른 셋이었기 때문에, 청년 영화를 만든다고 해서 뭔가 가르치려 한다는 느낌을
			주기 싫었다. 물론 감독의 의도가 들어갈 수 밖에 없지만, 최대한 느껴지지 않게끔 찍고 싶었다. 관객 분들이 어떻게 봐주실지
			궁금하다”고 덧붙였다.</p>
		<p>한편 심요한 감독은 이학주를 캐스팅한 과정에 대해 “처음엔 인상이 강해 고민했다”며 첫 만남을 회상했다. 그는
			“이학주 배우 필모를 전부 봤는데, 캐릭터마다 다르게 구현하는 것을 보고 인상 깊었다. 그런데 처음 만났을 때 인상이 너무
			강해서 고민이 됐다. 주인공 캐릭터가 여리고 우유부단하지만 보호본능을 일으키는 인상이길 바랐다. 그런데 집 가서 주변
			여성분들께 물어보니, 이학주 배우가 다 그런 이미지라고 하더라. 그래서 바로 캐스팅하기로 결정했다”고 밝혔다.</p>
		<p>영화 ‘어서오시게스트하우스’는 오는 13일 개봉 예정이다.</p>
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
