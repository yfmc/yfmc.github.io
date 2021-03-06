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
		<h3 class="floatLeft">‘뉴 뮤턴트’ 9월 3일 개봉 확정...메인 예고편 공개</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<p>영화 '뉴 뮤턴트'가 오는 9월 3일 개봉을 확정, 메인 예고편을 공개했다.</p>
		<figure class="image-captioned six"
			style="display: block; margin: 0px auto; height: auto; width: 600px;">
			<img alt="" id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597645300233wXbB0.jpg"
				style="display: block; margin: 0px auto; width: 100%; height: auto;" />
			<figcaption>영화 '뉴 뮤턴트' 예고편. 사진 워너브러더스 코리아</figcaption>
		</figure>
		<p>'뉴 뮤턴트'는 통제할 수 없는 능력으로 비밀 시설에 수용된 십대 돌연변이들이 자신의 능력을 각성하며 끔찍한
			공포와 마주하게 되는 이야기를 그렸다. 오는 9월 3일 개봉을 확정한 가운데 공개된 메인 예고편은 다섯 명 십대 돌연변이들의
			과거와 그들이 마주하게 된 두려움을 담았다.</p>
		<p>어두운 방안에 홀로 앉아 있는 대니의 모습과 함께 “대니, 여기 오기 전 마지막 기억이 뭐지?”라는 질문이
			주어지며 벽면 속 얼굴 형상들이 그녀를 공격하는 장면이 등장한다. 이어 비밀 시설에서 또 다른 돌연변이들과 ‘대니’가 만나
			마침내 그들이 모두 모이게 되고, 각자의 능력을 깨닫게 된 경험을 공유하게 된다. 스스로를 멈출 수 없었던 레인부터
			공황상태에 빠져 사람들을 다치게 한 샘, 여자친구를 태워버린 로베르토, 18명을 차례로 죽인 일리야나까지, 그리고 이들과
			만난 대니는 숨겨져 있던 자신의 능력을 각성하게 된다.</p>
		<p>하지만 “여긴 병원이 아니야. 감옥이지”라고 대니에게 말하는 일리야나로 인해 이들에게 가해질 앞으로의 위험을
			예상케 하며, 여기에 정체를 알 수 없는 닥터 레예스의 등장은 스토리에 대한 호기심을 고조시킨다.</p>
		<p>'뉴 뮤턴트'는 마블 코믹스의 새로운 돌연변이들의 등장을 알리며 전 세계 관객들의 기대를 한 몸에 받고 있다.
			원작 코믹 북 시리즈는 1982년에 나온 마블 그래픽 노블에 처음 등장했으며, 당시 새로운 돌연변이이자 사회의 경계에 놓인
			십대들의 고뇌, 고통을 사실감 있게 묘사했다는 평가를 받았다.</p>
		<p>여기에 할리우드에 떠오르는 라이징 스타들이 대거 출연해 더욱 주목을 받고 있다. 주연 배우로는 미국 드라마
			'왕좌의 게임'의 메이지 윌리암스, 영화 '23 아이덴티티'를 통해 깊은 인상을 남긴 안야 테일러 조이, 미국 드라마
			'기묘한 이야기' 찰리 히튼, '틴 울프' '루머의 루머의 루머' 헨리 자가, '오리지널스'의 블루 헌트 등이 출연해 새로운
			돌연변이들의 캐릭터를 완벽하게 선보일 예정이다.</p>
		<p>'뉴 뮤턴트'는 오는 9월 3일 개봉 예정이다.</p>
	</div>
<span class="buttonMoving">
<button type="button" class="btn btn-warning" onclick="location.href='${pageContext.request.contextPath}/movie/MovieNews3.do'">목록으로</button>
<button type="button" class="btn btn-danger" onclick="location.href='#'">맨위로</button>
</span>
</div>

<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>

<!--// ========== 컨텐츠 영역 끝 ========== -->

<%@ include file="../../_inc/footer.jsp"%>
