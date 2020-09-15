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
		<h3 class="floatLeft">리뷰 | ‘킬러맨’, 투박하고 어지러운 범죄 액션</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<p>영화 ‘킬러맨’이 개봉 소식을 알렸다. 단순 명료한 제목에서부터 느껴지듯 거침없이
			펼쳐지는 과감한 액션을 담은 작품으로, 최근 개봉한 국내 영화 ‘다만 악에서 구하소서’와 유사한 결을 갖고 있으리라는 기대를
			불렀다.</p>
		<figure class="image-captioned"
			style="display: block; margin: 0 auto; height: auto; width: 100%;">
			<img alt="영화 '킬러맨' 스틸. 사진 (주)누리픽쳐스" id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597433020229903944823136600.jpg"
				style="display: block; margin: 0 auto;" width="100%" />
			<figcaption>영화 '킬러맨' 스틸. 사진 (주)누리픽쳐스</figcaption>
		</figure>
		<p>뉴욕의 돈세탁 업자 모(리암 햄스워스)는 파트너 스컹크(에모리 코엔)와 함께 큰 돈을 벌기 위한 마약 거래에
			뛰어들었다가 부패 경찰의 함정에 빠지게 된다. 급박한 도주 도중 부상을 입고 기억상실증을 겪게 된 모. 그는 기억을 되찾기
			위해 고군분투 하지만 돈과 마약을 찾으려는 부패경찰의 추격은 계속되고, 거대 조직의 보스인 스컹크의 삼촌은 두 사람에게
			뉴욕을 떠날 것을 명령한다. 자신을 쫓는 경찰들을 피해 다니던 모는 총격으로 자신의 애인이 죽자 그들을 향해 복수를 계획하기
			시작한다.</p>
		<p>영화 ‘킬러맨’은 마약 거래 현장에서 부패경찰의 함정에 빠진 돈세탁 업자 모가 기억을 잃으면서 숨 막히는 추격과
			복수의 중심에 놓이게 되는 이야기를 담았다. ‘시트리트 씨프’, ‘캐쉬 온리’ 등으로 이름을 알린 말릭 베이더 감독의
			신작으로, ‘존 윅’, ‘데드풀’, ‘터미네이터: 다크페이트’ 등 화려한 블록버스터 액션 영화의 제작진이 대거 참여해 기대를
			높였다.</p>
		<figure class="image-captioned"
			style="display: block; margin: 0 auto; height: auto; width: 100%;">
			<img alt="영화 '킬러맨' 스틸. 사진 (주)누리픽쳐스" id="contentsImage2"
				src="https://d3ihz389yobwks.cloudfront.net/1597433020284903944878002000.jpg"
				style="display: block; margin: 0 auto;" width="100%" />
			<figcaption>영화 '킬러맨' 스틸. 사진 (주)누리픽쳐스</figcaption>
		</figure>
		<p>액션 영화에 이골이 난 화려한 제작진이 참여한 만큼, 영화는 거침없이 질주하는 액션으로 짜릿한 스릴을 선사했다.
			필름의 거친 질감이 돋보이는 화면과, 탁한 색감, 긴장감 넘치는 음악이 말초신경을 자극하며 관객의 뇌리에 깊은 인상을
			남겼다.</p>
		<p>허나 특별한 이유 없이 사용된 핸드헬드 촬영은 산만하기 그지없어 어지럽다. 속도감 넘치는 범죄 액션 느와르를
			표방하며 캐릭터의 혼란스러운 심경을 표현하고자 했던 바는 이해가 가지만, 계속해서 큰 화면이 흔들리니 울렁거리기까지 한다.</p>
		<p>식상한 이야기 구성 역시 아쉬운 부분이다. 그다지 색다른 이야기가 아님에도 별다른 변주가 없으니, 여러 느와르
			액션 영화의 클리셰가 덧붙여지며 지루함을 자아내고 말았다.</p>
		<p>개봉: 8월 13일/관람등급: 청소년 관람불가/출연: 리암 헴스워스, 에모리 코헨, 수라즈 샤르마, 다이앤
			게레로/수입·배급: ㈜누리픽쳐스/러닝타임: 112분/별점: ★★</p>
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
