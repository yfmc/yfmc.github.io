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
		<h3 class="floatLeft">박스오피스 | '다만 악' 신작 개봉에도 1위 유지…'오케이 마담', 2위로
			출발</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<p>영화 '다만 악에서 구하소서'가 신작 개봉에도 흥행 1위를 유지했다.</p>
		<figure class="image-captioned"
			style="display: block; margin: 0 auto; height: auto; width: 100%;">
			<img alt="영화 '다만 악에서 구하소서'-'오케이 마담' 포스터. 사진 CJ 엔터테인먼트, 메가박스(주)플러스엠"
				id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597433031819903956413237300.jpg"
				style="display: block; margin: 0 auto;" width="100%" />
			<figcaption>영화 '다만 악에서 구하소서'-'오케이 마담' 포스터. 사진 CJ 엔터테인먼트,
				메가박스(주)플러스엠</figcaption>
		</figure>
		<p>영화진흥위원회 영화관입장권 통합전산망에 따르면 영화 '다만 악에서 구하소서'는 지난 12일 하루동안 15만
			2503명의 관객을 동원했다. 이날까지 누적관객수는 256만 2909명으로 흥행 1위에 해당하는 수치다.</p>
		<p>흥행 2위는 이날 개봉한 '오케이 마담'이다. 코믹 액션물인 '오케이 마담'은 이날 11만 1781명을 동원했다.
			사전 시사회를 포함한 누적관객수는 11만 6050명이다. 이 작품은 난생처음 하와이로 해외여행을 떠난 미영(엄정화) 가족이
			비행기 납치사건을 당하면서 벌어지는 이야기를 그렸다. 엄정화가 5년여만에 스크린에 복귀한 작품으로 관심을 받은 바 있다.</p>
		<p>'강철비2: 정상회담'은 '오케이 마담' 개봉으로 3위로 순위가 밀렸다. 이날 1만 8172명을 동원, 전날보다
			관객이 37% 포인트 이상 하락했다. 누적 관객수는 161만 9972명으로 200만 관객 돌파는 무리가 있어 보인다.</p>
		<p>'반도'는 관객이 천명대로 떨어졌다. 이날 8139명을 동원해 4위로 내려갔고, 누적관객수는 372만
			8379명이다. '반도' 역시400만 관객 돌파는 힘들 것으로 예상된다.</p>
		<p>재개봉한 크리스토퍼 놀란 감독 영화 '인셉션'은 6837명을 동원해 5위를 기록했고, '더 프린세스: 도둑맞은
			공주' '애니멀 크래커' '알라딘' '엘라 벨라 빙고: 친구 찾기 대작전' '주식회사 스페셜액터스' 등이 그 뒤를 이었다.</p>
		<p></p>
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
