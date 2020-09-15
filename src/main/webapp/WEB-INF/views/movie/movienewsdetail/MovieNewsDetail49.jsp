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
		<h3 class="floatLeft">하지원, '담보'로 스크린 복귀…"이 시대에 필요한 영화"</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<p>배우 하지원이 영화 '담보'로 스크린에 복귀한다.</p>
		<figure class="image-captioned"
			style="display: block; margin: 0 auto; height: auto; width: 100%;">
			<img alt="영화 '담보' 하지원 스틸. 사진 CJ엔터테인먼트" id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597433018490903943084189700.jpg"
				style="display: block; margin: 0 auto;" width="100%" />
			<figcaption>영화 '담보' 하지원 스틸. 사진 CJ엔터테인먼트</figcaption>
		</figure>
		<p>영화 '담보'는 인정사정 없는 사채업자 두석과 그의 후배 종배가 떼인 돈을 받으러 갔다가 얼떨결에 9살 승이를
			담보로 맡아 키우면서 벌어지는 이야기를 그린 작품이다.</p>
		<p>하지원은 극중 9살 담보에서 보물로 잘 자란 어른 승이 역을 맡았다. 담보를 맡게 된 두 아저씨를 연기한 성동일,
			김희원과 함께 특유의 밀도 높은 감정 연기와 케미를 선보이며 관객들에게 가슴 찡한 감동을 선사할 예정이다.</p>
		<figure class="image-captioned"
			style="display: block; margin: 0 auto; height: auto; width: 100%;">
			<img alt="영화 '담보' 하지원 스틸. 사진 CJ엔터테인먼트" id="contentsImage2"
				src="https://d3ihz389yobwks.cloudfront.net/1597433018417903943010873700.jpg"
				style="display: block; margin: 0 auto;" width="100%" />
			<figcaption>영화 '담보' 하지원 스틸. 사진 CJ엔터테인먼트</figcaption>
		</figure>
		<p>처음 시나리오를 읽고 나서 많은 눈물을 흘렸다고 밝힌 하지원은 "'담보'를 보면서 관객들도 깊이 공감할 수 있을
			것이다. 이 시대에 정말 필요한 영화"라며 주저 없이 '담보' 출연을 결정한 이유를 밝혔다.</p>
		<p>과거 영화 '형사 Duelist'와 '해운대'에서 하지원과 연을 맺었던 강대규 감독은 "하지원 배우는 언제나
			관객에게 신뢰감을 주는 안정된 연기를 한다"라며 하지원을 어른 승이 역으로 캐스팅한 이유를 밝혔다.이어 "같은 신을 여러 번
			촬영해도 항상 웃으면서 현장 분위기를 훈훈하게 만들어줬다"라며 남다른 고마움을 전하기도 했다.</p>
		<p>'담보'는 오는 9월 개봉 예정이다.</p>
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
