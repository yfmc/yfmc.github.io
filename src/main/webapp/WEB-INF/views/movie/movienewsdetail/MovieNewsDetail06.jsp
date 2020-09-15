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
		<h3 class="floatLeft">이슈 | '테넷' 유료 시사회vs프리미엄 상영회…논란은 결국 변칙 개봉</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<p>영화 '테넷'이 개봉도 전에 시끄럽다. 코로나 19 여파로 우여곡절 끝에 개봉일을 확정했지만, 여전히 논란은
			사그라들지 않고 있다. 이번에는 유료 시사회와 프리미엄 상영회, 용어로 차이로 논란이 되고있다.</p>
		<figure class="image-captioned six"
			style="display: block; margin: 0 auto; height: auto; width: 600px;">
			<img alt="영화 '테넷' 스틸. 사진 워너브러더스 코리아" id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597818362555wP1U2.jpg"
				style="display: block; margin: 0 auto; width: 100%;" />
			<figcaption>영화 '테넷' 스틸. 사진 워너브러더스 코리아</figcaption>
		</figure>
		<p>'테넷'은 앞서 19일 오전 언론/배급 시사회를 개최할 예정이었다. 하지만 코로나 19 확진자가 증가함에 따라
			사회적 거리두기가 2단계로 격상되면서 언론/배급 시사회 등의 일정을 취소했다.</p>
		<p>영화진흥위원회는 지난 18일 오후 각 극장과 투자배급사들에 영화관에서 50인 이상이 참여하는 시사회를 금지해달라는
			공문을 발송했다. 이후 각 배급사들은 예정돼 있던 언론/배급시사회를 비롯한 오프라인 행사를 온라인으로 변경하거나 취소하는 등
			일정을 변경하고 있다.</p>
		<p>논란은 여기서 시작됐다. '테넷' 역시 언론/배급시사회와 라이브 컨퍼런스는 취소했지만 개봉 전 유료로 진행되는
			'프리미엄 상영회'는 예정대로 진행하겠다고 밝힌 것이다. 그렇다면 '테넷' 측에서 말하는 '프리미엄 상영회'는 무엇일까.</p>
		<p>'프리미엄 상영회'는 개봉 전 관객들이 영화 티켓값을 지불하고 직접 예매를 해 영화를 관람하는 방식으로 진행된다.
			일반적으로 말하는 '시사회'와는 조금 개념이 다르다. '시사회'는 특정인을 대상으로영화를 보여주는 것이다. 결론부터 말하자면
			'테넷'의 프리미엄 상영회는 사실상 선개봉과 같은 의미인 셈이다.</p>
		<p>'테넷' 관계자의 설명을 들어보면 '유료 시사회'라는 말 자체에 오류가 있다. 시사회의 사전적 의미는 '영화나
			광고 따위를 일반에게 공개하기 전에 시험적으로 상영하기 위하여 이루어지는 모임'이다. 하지만 '테넷'의 경우는 불특정 다수인
			일반에게 공개하는 상영회이므로 문제되지 않는다는 설명이다.</p>
		<p>결국 '테넷'의 프리미엄 상영은 시사회에 해당되지 않으므로 그대로 진행하는 것에 문제는 없다. 하지만 공식 개봉일
			이전에 실시되는 '유료 상영회'라는 점에서 변칙 개봉이라는 비난까지 피할 수는 없을 것으로 보인다.</p>
		<p>'테넷'은 코로나 19 사태 후 처음으로 개봉하는 할리우드 대작으로, 오는 26일 전 세계 최초로 국내에서 개봉
			예정이다. 프리미엄 상영회는 개봉 전 주말인 오는 22일과 23일 진행 예정이다.</p>
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
