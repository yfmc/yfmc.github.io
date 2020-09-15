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
		<h3 class="floatLeft">'다만 악에서 구하소서' 해외 56개국 선판매…호평 릴레이</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<p>영화 '다만 악에서 구하소서'가 전 세계 56개국에 선판매 된 데 이어 해외
			바이어들로부터 호평을 받고있다.</p>
		<figure class="image-captioned"
			style="display: block; margin: 0 auto; height: auto; width: 100%;">
			<img alt="영화 '다만 악에서 구하소서' 스틸. 사진 CJ엔터테인먼트" id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597432996411903921005864100.jpg"
				style="display: block; margin: 0 auto;" width="100%" />
			<figcaption>영화 '다만 악에서 구하소서' 스틸. 사진 CJ엔터테인먼트</figcaption>
		</figure>
		<p>영화 '다만 악에서 구하소서'가 미국, 독일, 대만, 홍콩, 일본 등 해외 56개국에 선판매 됐다. 지난 12일
			대만에서 개봉한 데 이어 해외에서도 개봉일을 속속 확정 짓고 있다. 또 코로나19로 인해 전 세계 영화 시장이 얼어있는
			상황에서도 해외 바이어들의 뜨거운 반응을 얻고 있다.</p>
		<p>미국 배급사 웰고 유에스에이(Well Go USA) 관계자는 "'다만 악에서 구하소서'는 처음부터 끝까지 액션으로
			가득한 영화로, 황정민과 이정재를 비롯한 베테랑 연기자들의 열연이 빛을 발한다. 눈을 뗄 수 없는 액션 시퀀스와 멈추지 않는
			긴장감, 아름답게 촬영된 서정적 장면들까지 가슴 아프지만 뼛속까지 터프한 영화다."고 호평했다.</p>
		<p>대만 배급사 카이창(Cai Chang) 관계자는 "배급을 결정하기 전 부터 두 주연배우에 대한 확신이 있었다.
			영화를 보고 난 후 '다만 악에서 구하소서'는 단순히 액션이 화려한 영화가 아니라 감정의 울림을 주는 작품이라는 생각이
			들었다. 대만에서도 남녀불문하고 많은 관객들에게 감동을 줄 것이라고 예상한다"고 전했다.</p>
		<p>이 같은 해외 배급사들의 호평 세례에 대해 '다만 악에서 구하소서' 해외배급을 담당한 CJ ENM 영화사업본부
			해외배급팀 관계자는 "이 영화가 가진 색다른 분위기, 수준 높은 액션 시퀀스, 그리고 주연 배우들의 열연이 해외 바이어들을
			사로잡을 수 있었던 주요 포인트라고 생각한다"고 설명했다.</p>
		<p>영화 '다만 악에서 구하소서'는 마지막 청부살인 미션 때문에 새로운 사건에 휘말리게 되는 인남(황정민)과 그를
			쫓는 무자비한 추격자 레이(이정재)의 처절한 추격과 사투를 그린 작품이다. 현재 200만 관객을 돌파하며 흥행을 이어가고
			있다.</p>
		<p></p>
		<p></p>
	</div>
<span class="buttonMoving">
<button type="button" class="btn btn-warning" onclick="location.href='${pageContext.request.contextPath}/movie/MovieNews4.do'">목록으로</button>
<button type="button" class="btn btn-danger" onclick="location.href='#'">맨위로</button>
</span>
</div>

<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>

<!--// ========== 컨텐츠 영역 끝 ========== -->

<%@ include file="../../_inc/footer.jsp"%>
