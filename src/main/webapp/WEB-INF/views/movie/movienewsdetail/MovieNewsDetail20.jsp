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
		<h3 class="floatLeft">현장 | '승리호' 김태리 "모두에게 도전이었던 작품"</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<p>배우 김태리가 영화 ‘승리호’에 참여한 소감을 밝혔다.</p>
		<figure class="image-captioned six"
			style="display: block; margin: 0 auto; height: auto; width: 600px;">
			<img alt="배우 김태리가 포즈를 취하고 있다. 사진 메리크리스마스" id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597720140505kGrLh.jpg"
				style="display: block; margin: 0 auto; width: 100%;" />
			<figcaption>배우 김태리가 포즈를 취하고 있다. 사진 메리크리스마스</figcaption>
		</figure>
		<p>18일 오전 11시 영화 배급사 메리크리스마스 공식 유튜브 채널을 통해 영화 ‘승리호’(감독 조성희) 온라인
			제작보고회가 개최됐다. 이날 행사는 메가폰을 잡은 조성희 감독과 영화의 주역 송중기, 김태리, 진선규, 유해진이 참석해
			영화에 대한 다양한 이야기를 나눴다.</p>
		<p>영화 ‘승리호’는 2092년, 우주 쓰레기 청소선 승리호의 선원들이 대량살상무기로 알려진 인간형 로봇 도로시를
			발견한 후 위험한 거래에 뛰어드는 이야기를 담았다. 김태리는 극 중 승리호의 젊은 리더이자 과거 우주 해적단을 이끌었던
			장선장을 연기했다.</p>
		<p>김태리는 장선장 캐릭터에 대해 “굉장히 비상한 두뇌를 갖고 있다. 선내에서 브레인을 담당한다”고 설명했다. 그는
			“어수선한 장내에서 어떤 것을 눈 여겨 보아야 하는지, 정확하고 예리한 관찰력을 지닌 인물이다. 사고뭉치 선원들을 이끄느냐고
			골머리를 썩는 멋진 여성이다”라고 덧붙였다.</p>
		<p>이어 김태리는 장선장을 연기하기 위해 중점을 뒀던 부분을 털어놓기도 했다. 그는 “똑똑한 두뇌를 갖고 있는
			인물이지만, 너무 완벽하게 표현되면 안됐다. 똑똑하기만 한 인물은 필요 없고, 사람 냄새 나는 것이 필요해서, 완벽하지 않고
			어리숙한 모습을 보여주려고 했다”고 밝혔다.</p>
		<p>김태리는 ‘승리호’에 참여한 소감을 밝히기도 했다. 우주를 배경으로 하는 ‘승리호’인 만큼 배우들은 블루 스크린
			앞에서 상상만으로 연기를 해야 했다. 김태리는 “상당히 어려웠다. 근데 조금 있다 보니, 나만 어려운 것이 아니라 모두에게
			도전이었다. 다 같이 으쌰으쌰 하면서 재미있게, 힘내서 촬영했다. 완성된 작품을 우리도 기대를 갖고 즐겁게 기다리고 있다”고
			말했다.</p>
		<p>영화 '승리호'는 9월 23일 개봉 예정이다.</p>
	</div>
<span class="buttonMoving">
<button type="button" class="btn btn-warning" onclick="location.href='${pageContext.request.contextPath}/movie/MovieNews3.do'">목록으로</button>
<button type="button" class="btn btn-danger" onclick="location.href='#'">맨위로</button>
</span>
</div>

<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>

<!--// ========== 컨텐츠 영역 끝 ========== -->

<%@ include file="../../_inc/footer.jsp"%>
