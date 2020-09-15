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
		<h3 class="floatLeft">'다만 악에서 구하소서' 히든카드 박정민 스틸 공개</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<figure class="image-captioned six"
			style="display: block; margin: 0 auto; height: auto; width: 600px;">
			<img alt="영화 '다만 악에서 구하소서' 박정민 스틸. 사진 CJ 엔터테인먼트" id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597710978156REtGI.jpg"
				style="display: block; margin: 0 auto; width: 100%;" />
			<figcaption>영화 '다만 악에서 구하소서' 박정민 스틸. 사진 CJ 엔터테인먼트</figcaption>
		</figure>
		<p>영화 '다만 악에서 구하소서'가 박정민의 강렬한 변신을 담은 인남의 조력자 유이 스틸
			2종을 공개했다.</p>
		<p>'다만 악에서 구하소서'가 입소문의 주인공인 박정민의 파격 변신을 담은 유이 캐릭터 스틸 2공을 공개했다.
			박정민이 연기한 유이는 개봉 전까지 꽁꽁 베일에 싸여있던 히든 카드였다. 황정민이 맡은 인남의 마지막 미션을 돕는 조력자
			외에는 전혀 정보가 공개되지 않은 캐릭터 유이는 영화 속에서 등장할 때 마다 극의 분위기를 바꾸며 관객들의 시선을 리드한다.</p>
		<p>공개된 2종의 스틸에서는 인남의 조력자 유이로 완벽 몰입한 박정민의 모습이 돋보인다. '다만 악에서 구하소서'
			홍경표 촬영감독이 포착한 컷으로 영화 속 인남과 유이의 강렬한 첫 만남의 순간과 현장에서 캐릭터에 대해 고민 중인 유이
			박정민의 모습이 드러났다.</p>
		<p>관객들을 단숨에 사로잡는 유이가 탄생할 수 있었던 배경에는 박정민의 끊임없는 노력이 있었기에 가능했다. 박정민은
			사전 준비 기간에 다큐멘터리와 관련 영상들을 참고하며 캐릭터를 구축해 나갔다.</p>
		<p>레이 역으로 함께한 이정재가 "현장에서 다른 생각은 전혀 안하고 작품, 캐릭터만 생각한다. 연기의 깊이가 다른
			사람”이라며 완벽한 캐릭터를 위해 치열한 고민을 거듭하는 박정민에 감탄을 아끼지 않았다는 후문. 현장 스태프들 조차
			“박정민의 ‘유이’가 등장하면 현장의 분위기가 달라졌다”고 전해 역대급 치트키 캐릭터의 존재감이 남달랐음을 엿볼 수 있다.</p>
		<p>'다만 악에서 구하소서'는 마지막 청부살인 미션 때문에 새로운 사건에 휘말리게 되는 인남(황정민)과 그를 쫓는
			무자비한 추격자 레이(이정재)의 처절한 추격과 사투를 그린 작품이다.</p>
	</div>
<span class="buttonMoving">
<button type="button" class="btn btn-warning" onclick="location.href='${pageContext.request.contextPath}/movie/MovieNews3.do'">목록으로</button>
<button type="button" class="btn btn-danger" onclick="location.href='#'">맨위로</button>
</span>
</div>

<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>

<!--// ========== 컨텐츠 영역 끝 ========== -->

<%@ include file="../../_inc/footer.jsp"%>
