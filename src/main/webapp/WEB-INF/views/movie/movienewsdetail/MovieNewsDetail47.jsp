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
		<h3 class="floatLeft">현장 | ‘남매의 여름밤’ 박승준 “실제로도 누나와 많이 다퉈요”</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<p>영화 ‘남매의 여름밤’이 관객과 만날 채비를 마쳤다.</p>
		<figure class="image-captioned six"
			style="display: block; margin: 0 auto; height: auto; width: 600px;">
			<img alt="영화 '남매의 여름밤' 포스터. 사진 그린나래미디어" id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597433019745903944339691700.jpg"
				style="display: block; margin: 0 auto;" width="100%" />
			<figcaption>영화 '남매의 여름밤' 포스터. 사진 그린나래미디어</figcaption>
		</figure>
		<p>10일 오후 영화 ‘남매의 여름밤’(감독 윤단비) 언론시사회가 서울시 용산구 CGV용산아이파크몰에서 열렸다. 이날
			행사는 메가폰을 잡은 윤단비 감독과 배우 양흥주, 박현영, 최정운, 박승준이 참석해 영화에 대한 다양한 이야기를 나눴다.</p>
		<p>영화 ‘남매의 여름밤’은 여름 방학 동안 아빠와 함께, 할아버지 집에서 지내게 된 남매 옥주(최정운)와
			동주(박승준)가 겪는 이야기를 담았다. 제24회 부산 국제영화제에서 한국영화감독조합상, 시민평론가상, 넷팩상, KTH상 등
			4관왕에 오르며 화제가 됐던 작품으로, 부산 국제영화제뿐만 아니라 제49회 로테르담 국제영화제 등 유수 영화제에서 호평을
			받았다.</p>
		<p>‘남매의 여름밤’의 주인공 옥주를 연기한 배우 최정운은 “시나리오에 나오지 않은 옥주의 이야기를 알아야겠다고
			생각했다”며 캐릭터를 소화하기 위해 거쳤던 준비 과정을 밝혔다.</p>
		<p>그는 “감독님께 캐릭터의 전사에 대해 물어보고 이야기를 많이 나눴다. 옥주가 가족들에게 느끼는 감정이 각기 다를
			것이라 생각했다. 특히 할아버지에 대한 감정과 엄마의 부재에 대해 옥주가 어떻게 생각하는지 이해하기 위해 노력했다”고
			말했다.</p>
		<p>옥주의 남동생이자 영화의 또 다른 주역 동주를 연기한 박승준은 “누나와 싸우는 장면이 있는데, 실제로도 누나와
			자주 다퉈서 촬영 할 때 재미있었다”고 말해 현장에 웃음을 자아냈다.</p>
		<p>영화 ‘남매의 여름밤’은 오는 20일 개봉 예정이다.</p>
		<p></p>
	</div>
<span class="buttonMoving">
<button type="button" class="btn btn-warning" onclick="location.href='${pageContext.request.contextPath}/movie/MovieNews6.do'">목록으로</button>
<button type="button" class="btn btn-danger" onclick="location.href='#'">맨위로</button>
</span>
</div>

<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>

<!--// ========== 컨텐츠 영역 끝 ========== -->

<%@ include file="../../_inc/footer.jsp"%>
