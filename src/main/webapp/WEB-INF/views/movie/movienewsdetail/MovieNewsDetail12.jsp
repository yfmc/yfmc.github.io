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
		<h3 class="floatLeft">이슈 | '기기괴괴'-'돌멩이', 시사회 일정 변경…개봉은 예정대로</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<p>코로나19 일일 감염자 증가로 많은 영화들이 개봉일 및 행사 진행 방식을 변경 중인 가운데, 영화 '기기괴괴
			성형수'와 '돌멩이' 역시 일정을 변경했다.</p>
		<figure class="image-captioned six"
			style="display: block; margin: 0 auto; height: auto; width: 600px;">
			<img alt="영화 '기기괴괴 성형수'-'돌멩이' 포스터. 사진 에스에스애니멘트, 리틀빅픽처스"
				id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597825436309iAdYb.jpg"
				style="display: block; margin: 0 auto; width: 100%;" />
			<figcaption>영화 '기기괴괴 성형수'-'돌멩이' 포스터. 사진 에스에스애니멘트, 리틀빅픽처스</figcaption>
		</figure>
		<p>먼저 네이버 웹툰을 원작으로 한 애니메이션 '기기괴괴 성형수'는 오프라인 언론/배급 시사회를 온라인으로 변경했다.
			당초 '기기괴괴 성형수'는 오는 20일 오후 서울 자양동 롯데시네마 건대입구점에서 언론/배급 시사회를 진행할 예정이었다.</p>
		<p>하지만 코로나19 감염자가 급증하면서 영화진흥위원회는 지난 18일 오후 각 극장과 투자배급사들에 영화관에서 50인
			이상이 참여하는 시사회를 금지해달라는 공문을 발송했다. 결국 '기기괴괴 성형수' 역시 언론/배급 시사회를 하루 앞둔 19일
			온라인 시사회로 변경을 결정했다.</p>
		<p>김대명과 송윤아, 김의성 등이 출연하는 영화 '돌멩이'도 언론/배급 시사회와 간담회를 모두 취소했다. 이 작품은
			오는 27일 서울 자양동 롯데시네마 건대입구에서 언론/배급 시사회와 기자 간담회를 개최할 예정이었지만 두가지 행사 모두
			취소했다.</p>
		<p>하지만 온라인으로 시사회를 진행하지는 않을 예정이다. '돌멩이' 관계자는 "현재 시사회 일정을 다시 잡고 있다.
			개봉일정 역시 변경하지 않는다. 추후 시사회 일정을 다시 공지하겠다"고 말했다.</p>
		<p>앞서 코로나19 일일 감염자가 200명 이상으로 늘어나면서 영화계에 다시 비상이 걸렸다. 사회적 거리두기가
			2단계로 격상되면서 실내에 50명 이상이 모이는 행사가 금지됐다. 이에 기자 포함 50명 이상의 관계자가 모이는 국내외 영화
			언론/배급 시사회가 줄줄이 취소되고 있다.</p>
		<p>영화 '국제수사'는 언론/배급 시사회에 임박해 일정을 모두 취소하고 개봉일 역시 무기한 연기했다. '테넷'은
			예정돼 있던 언론/배급 시사회와 라이브 컨퍼런스를 취소했다. 단, 개봉 전 유료로 진행되는 프리미엄 상영회는 예정대로 진행
			예정이다.</p>
		<p>코로나19 사태 후 처음으로 오프라인 제작보고회를 예정했던 영화 '승리호' 역시 행사를 하루 앞두고 온라인으로
			변경, 진행했다. 이 밖에도 다수의 외화들이 오프라인 언론/배급 시사회 대신 온라인 시사회로 일정을 변경한 상태다.</p>
	</div>
<span class="buttonMoving">
<button type="button" class="btn btn-warning" onclick="location.href='${pageContext.request.contextPath}/movie/MovieNews2.do'">목록으로</button>
<button type="button" class="btn btn-danger" onclick="location.href='#'">맨위로</button>
</span>
</div>

<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>

<!--// ========== 컨텐츠 영역 끝 ========== -->

<%@ include file="../../_inc/footer.jsp"%>
