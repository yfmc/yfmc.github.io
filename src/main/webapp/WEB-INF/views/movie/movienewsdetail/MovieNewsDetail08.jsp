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
		<h3 class="floatLeft">‘그린랜드’ 9월 개봉 확정…티저 포스터 공개</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<p>영화 ‘그린랜드’가 9월 개봉을 확정하며 티저 포스터를 공개했다.</p>
		<figure class="image-captioned six"
			style="display: block; margin: 0 auto; height: auto; width: 600px;">
			<img alt="영화 '그린랜드' 포스터. 사진 (주)제이앤씨미디어그룹 , TCO(주)더콘텐츠온"
				id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597990835340SqqMV.jpg"
				style="display: block; margin: 0 auto; width: 100%;" />
			<figcaption>영화 '그린랜드' 포스터. 사진 (주)제이앤씨미디어그룹 , TCO(주)더콘텐츠온</figcaption>
		</figure>
		<p>영화 ‘그린랜드’는 초대형 혜성 충돌까지 48시간, 사상 초유의 우주적 재난 상황 속 유일한 희망인 그린란드의
			지하 벙커로 향하는 존(제라드 버틀러) 가족의 사투를 그린 재난 블록버스터다. ‘엔젤 해즈 폴른’을 연출한 릭 로먼 워
			감독이 메가폰을 잡았으며, 제라드 버틀러와 모레나 바카린이 출연했다.</p>
		<p>공개된 1차 티저 포스터는 혜성이 추락하고 있는 순간을 담아 시선을 집중시킨다. 추락하는 혜성 파편들이 지구를
			강타하고, 불길에 휩싸인 도시와 검은 연기가 자욱이 뒤덮은 하늘의 모습은 인류가 위기 상황에 직면했음을 암시한다.</p>
		<p>영화 ‘그린랜드’는 오는 9월 개봉 예정이다.</p>
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
