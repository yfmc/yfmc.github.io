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
		<h3 class="floatLeft">극장가 소식 | CJ CGV, 올해 2분기 영업손실 1305억원</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<figure class="image-captioned six"
			style="display: block; margin: 0 auto; height: auto; width: 600px;">
			<img alt="CGV 극장. 사진 CJ CGV" id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/15977236007160rxe1.jpg"
				style="display: block; margin: 0 auto; width: 100%;" />
			<figcaption>CGV 극장. 사진 CJ CGV</figcaption>
		</figure>
		<p>CJ CGV(대표이사 최병환)가 올해 2분기 코로나19의 영향으로 매출 416억원,
			영업손실 1305억원의 실적을 기록했다고 7일 공시했다. 매출은 전년도 같은 기간(4819억원)과 비교할 때 91%
			감소했고, 영업이익(235억원)은 적자전환했다.</p>
		<p>이 같은 적자는 코로나19의 확산 영향이 실적에 가장 큰 영향을 미쳤다. 전 세계적으로 코로나19의 확산세가
			빠르게 진행되는 가운데 모든 진출 국가 및 자회사(CJ 4D플렉스)에서 영업 적자를 기록했다. 국내의 경우 일부 극장만 문을
			닫거나 시간을 축소한 가운데 운영을 지속했지만, 대부분의 영화들의 개봉 연기로 박스오피스가 대폭 축소되며 실적에도 영향을
			끼쳤다. 국내를 제외한 대부분 국가에서는 영업중단 장기화로 인해 정상적인 운영이 어려웠다. 이런 가운데에서도 임차료와 인건비
			등 고정비 영향으로 적자를 피하기는 어려웠다.</p>
		<p>긍정적인 것은 신작개봉으로 인한 박스오피스의 확대와 문을 닫았던 영화관들의 재개장으로 최악의 터널은 벗어났다는
			평가를 받고 있다는 점이다. 국내의 경우 6월부터 신작들이 줄줄이 개봉하며 실적 개선의 가능성을 열었다. '#살아있다'가
			개봉하며 관객들의 발길을 다시 극장으로 돌아오게 했고, 이런 추세는 7월로도 이어져 '반도' '강철비2: 정상회담' 등의
			영화들이 흥행 추세를 이어가고 있다.</p>
		<p>비용 개선 측면에서도 상당한 개선 효과를 얻어냈다. 각고의 노력으로 임차료와 인건비 등 고정비 부담을 30% 이상
			개선했고, 비대면 서비스 등 추가적인 비용 절감을 기대할 수 있는 극장 혁신 서비스를 앞당겨 도입했다. 또 7월
			2209억원에 이르는 유상증자 대금 유입 등을 통해 자본을 확충함으로써 영업 정상화가 될 경우 빠르게 재무 안정화를 이룰 수
			있을 것으로 기대했다.</p>
		<p>CJ CGV는 이제 더욱 적극적인 자세로 3분기와 4분기를 대비한다는 계획이라고 밝혔다 그동안 개봉을 주저했던
			할리우드 대작들이 줄줄이 개봉을 결정하며 영화시장 활성화에 힘을 보태고 있다. 크리스토퍼 놀란 감독의 '테넷'이 오는 26일
			개봉을 확정했고, 이어 디즈니 영화 '뮬란' 실사판, '킹스맨: 퍼스트 에이전트' '원더 우먼 1984' '블랙 위도우'
			'007 노 타임 투 다이' 등이 개봉 계획을 밝힌 상태다.</p>
		<p>아울러 한국영화 대작들 역시 미뤄왔던 개봉일을 결정하며 관객들에게 다가갈 예정이다. 현재 극장 상영 중인 '다만
			악에서 구하소서'가 좋은 반응을 얻고 있고, '승리호' '서복' 등 기대작도 올해 안에 개봉을 확정한 상태다.</p>
		<p>문을 닫았던 해외 극장들도 연달아 재개장하며 턴어라운드에 대한 기대를 높인다. 베트남은 5월 8일부터 영업을
			재개해 이미 전체 극장(84개) 중 70개가 문을 열었다. 특히 7월 한국 영화 '반도'가 베트남 현지에 개봉하며 전년 대비
			50%까지 관객수를 회복했다. 할리우드 영화의 의존도가 높은 베트남 시장이지만 비할리우드 영화만으로도 시장을 견인할 수
			있다는 가능성을 보여줬다.</p>
		<p>중국은 7월 20일부터 총 139개 중 104개 극장을 다시 열었다. 재개장 후 사이트당 관람객이 중국내 1위를
			기록한 점은 고무적이다. '테넷' 등 개봉이 확정된 상태라 빠른 실적 회복이 기대된다. 이밖에도 터키는 8월 7일부터,
			인도네시아는 8월말부터 순차적으로 극장 문을 다시 연다는 계획이다.</p>
		<p>CJ CGV 최병환 대표는 "올해 2분기는 누구도 경험하지 못한 코로나19 사태 속에서 최악의 어려움을 겪었지만
			각고의 노력을 통해 비용을 절감하고 극장 사업의 새로운 패러다임을 연구할 수 있었던 소중한 시간이기도 했다”고 밝혔다. 이어
			“언택트 서비스, 모바일 트랜스포메이션, 구독모델 등 새롭게 연구하고 있는 신규 사업모델에 대한 도입을 앞당기고, 보다 미래
			지향적인 극장 기업으로 거듭날 수 있도록 더욱 매진하겠다”고 덧붙였다.</p>
	</div>
<span class="buttonMoving">
<button type="button" class="btn btn-warning" onclick="location.href='${pageContext.request.contextPath}/movie/MovieNews3.do'">목록으로</button>
<button type="button" class="btn btn-danger" onclick="location.href='#'">맨위로</button>
</span>
</div>

<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>

<!--// ========== 컨텐츠 영역 끝 ========== -->

<%@ include file="../../_inc/footer.jsp"%>
