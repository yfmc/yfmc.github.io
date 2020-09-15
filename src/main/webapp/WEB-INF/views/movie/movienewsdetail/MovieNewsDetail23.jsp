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
		<h3 class="floatLeft">박스오피스 | '다만 악' 350만 관객 돌파…'반도' 따라잡기 초읽기</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<figure class="image-captioned six"
			style="display: block; margin: 0 auto; height: auto; width: 600px;">
			<img alt="영화 '다만 악에서 구하소서' 포스터. 사진 CJ 엔터테인먼트" id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597627163324ff7co.jpg"
				style="display: block; margin: 0 auto; width: 100%;" />
			<figcaption>영화 '다만 악에서 구하소서' 포스터. 사진 CJ 엔터테인먼트</figcaption>
		</figure>
		<p>영화 '다만 악에서 구하소서'가 개봉 2주차에도 흥행 1위를 지켰다.</p>
		<p>영화진흥위원회 영화관입장권 통합전산망에 따르면 '다만 악에서 구하소서'는 지난 14일부터 16일까지 3일동안
			84만 1539명의 관객을 동원했다. 이날까지 누적 관객수는 354만 3254명으로 지난 5일 개봉 후 11일만에 350만
			관객을 돌파했다. 이로써 '다만 악에서 구하소서'는 손익분기점인 350만 관객을 넘겼다.</p>
		<p>'다만 악에서 구하소서'는 마지막 청부살인 미션 때문에 새로운 사건에 휘말리게 되는 인남(황정민)과 그를 쫓는
			무자비한 추격자 레이(이정재)의 처절한 추격과 사투를 그린 작품이다. 배우 황정민과 이정재의 재회로 관심을 받았고, 개봉 후
			박정민의 독특한 캐릭터로 시선을 끌었다.</p>
		<p>'다만 악에서 구하소서'의 이런 흥행 추이라면 이번 주 내로 '반도' 누적관객수를 역전할 것으로 보인다. 뿐만
			아니라 코로나 19 사태 후 최초로 400만 관객을 돌파한 작품이 탄생할 가능성도 충분히 보인다.</p>
		<p>같은 기간 흥행 2위는 엄정화, 박성웅 주연 영화 '오케이 마담'이다. 이 기간동안 57만 4181명을
			동원했으며, 누적 관객수는 77만 9433명이다. '오케이 마담'은 극장가 유일한 코미디로 관객들의 사랑을 받고있다.
			17일이 임시공휴일인만큼 100만 관객 돌파도 노려볼 만 하다.</p>
		<p>'강철비2: 정상회담'은 8만 7777명을 동원해 3위를 유지했다. 누적 관객수는 172만 1641명이다. 4만
			2796명을 동원한 '반도'가 4위에 이름을 올렸고, '더 프린세스: 도둑맞은 공주'는 2만 9947명으로 5위를 차지했다.</p>
		<p>'인셉션' '애니멀 크래커' '반교: 디텐션' '비바리움' '워터 릴리스' 등이 그 뒤를 이었다.</p>
	</div>
<span class="buttonMoving">
<button type="button" class="btn btn-warning" onclick="location.href='${pageContext.request.contextPath}/movie/MovieNews3.do'">목록으로</button>
<button type="button" class="btn btn-danger" onclick="location.href='#'">맨위로</button>
</span>
</div>

<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>

<!--// ========== 컨텐츠 영역 끝 ========== -->

<%@ include file="../../_inc/footer.jsp"%>
