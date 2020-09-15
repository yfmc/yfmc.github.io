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
		<h3 class="floatLeft">박스오피스 | '오케이 마담' 개봉 7일만에 100만 관객 돌파</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<p>영화 '오케이 마담'이 누적관객수 100만 관객을 돌파했다.</p>
		<figure class="image-captioned six"
			style="display: block; margin: 0 auto; height: auto; width: 600px;">
			<img alt="영화 '오케이 마담' 포스터. 사진 메가박스(주)플러스엠" id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597883830420d6GO6.jpg"
				style="display: block; margin: 0 auto; width: 100%;" />
			<figcaption>영화 '오케이 마담' 포스터. 사진 메가박스(주)플러스엠</figcaption>
		</figure>
		<p>영화진흥위원회 영화관입장권 통합전상망에 따르면 '오케이 마담'은 지난 19일 하루동안 3만 8516명의 관객을
			동원했다. 이날까지 누적관객수는 100만 1203명으로 지난 12일 개봉한 후 7일만의 기록이다.</p>
		<p>'오케이 마담'은 영천시장 꽈배기 맛집 사장 미영(엄정화) 가족이 난생처음 떠난 해외 여행 도중 비행기 납치범을
			만나면서 벌어지는 이야기를 그린 작품이다. 믿고보는 엄정화의 코미디로 관객들의 꾸준한 사랑을 받고있다.</p>
		<figure class="image-captioned six"
			style="display: block; margin: 0 auto; height: auto; width: 600px;">
			<img alt="100만 관객 돌파를 축하한 '오케이 마담' 주역. 사진 메가박스(주)플러스엠"
				id="contentsImage2"
				src="https://d3ihz389yobwks.cloudfront.net/1597883898286A4QJs.jpg"
				style="display: block; margin: 0 auto; width: 100%;" />
			<figcaption>100만 관객 돌파를 축하한 '오케이 마담' 주역. 사진 메가박스(주)플러스엠</figcaption>
		</figure>
		<p>이 작품은 개봉 당시부터 극장가 유일한 코미디 영화로 관심을 받아왔다. 개봉 첫날 '다만 악에서 구하소서'에 밀려
			2위로 출발했다. 순위는 2위였지만 개봉 첫날 11만 명이 넘는 관객을 동원했고, 첫 주말인 15일에는 22만 명이 넘는
			관객을 동원하며 흥행을 이어왔다. 결국 개봉 7일만에 100만 관객을 넘기는 흥행력을 과시했다.</p>
		<p>100만 관객을 돌파한 '오케이 마담'은 배우 엄정화와 박성웅, 이상윤, 배정남, 이선빈, 이철하 감독이 함께한
			기념사진을 공개했다. '팀 오케이'의 완전체가 함께한 기념사진에는 100만 관객 돌파를 자축하는 풍선을 들고 미소를
			짓고있다.</p>
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
