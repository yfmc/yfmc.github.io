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
		<h3 class="floatLeft">현장 | ‘담보’ 하지원 “시나리오 읽으면서 많이 울었다”</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<p>배우 하지원이 영화 ‘담보’에 출연한 계기를 밝혔다.</p>
		<figure class="image-captioned"
			style="display: block; margin: 0 auto; height: auto; width: 100%;">
			<img alt="영화 '담보' 제작보고회 현장. 배우 하지원. 사진 CJ엔터테인먼트" id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597433027487903952082019400.jpg"
				style="display: block; margin: 0 auto;" width="100%" />
			<figcaption>영화 '담보' 제작보고회 현장. 배우 하지원. 사진 CJ엔터테인먼트</figcaption>
		</figure>
		<p>12일 오전 11시 CJ엔터테인먼트 공식 유튜브 채널을 통해 영화 ‘담보’(감독 강대규) 온라인 제작보고회가
			개최됐다. 이날 행사는 영화의 주역 성동일, 하지원, 김희원과 함께 메가폰을 잡은 강대규 감독이 참석해 영화에 대한 다양한
			이야기를 나눴다.</p>
		<p>영화 ‘담보’는 인정사정 없는 사채업자 두석(성동일)과 후배 종배(김희원)가 떼인 돈을 받으러 갔다가 얼떨결에
			9살 승이(박소이)를 담보로 맡아 키우게 되면서 벌어지는 이야기를 담았다. 하지원은 극 중 두 아저씨들 틈에서 잘 자라
			어른이 된 승이를 연기했다. 그는 성동일, 김희원과 함께 특유의 밀도 높은 감정 연기를 선보이며 감동을 선사할 예정이다.</p>
		<p>하지원은 “’담보’라는 제목을 보고 호기심이 생겼다”며 영화에 출연한 계기를 밝혔다. 그는 “시나리오를 읽었을 때
			승이라는 꼬마가 두 아저씨와 가족이 되어가는 과정에서 사랑과 진심이 느껴졌다. 읽으면서 마음에 많이 와 닿아서 많이
			울었다”고 말했다.</p>
		<p>영화 ‘담보’는 9월 개봉 예정이다.</p>
		<p></p>
	</div>
<span class="buttonMoving">
<button type="button" class="btn btn-warning" onclick="location.href='${pageContext.request.contextPath}/movie/MovieNews5.do'">목록으로</button>
<button type="button" class="btn btn-danger" onclick="location.href='#'">맨위로</button>
</span>
</div>

<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>

<!--// ========== 컨텐츠 영역 끝 ========== -->

<%@ include file="../../_inc/footer.jsp"%>
