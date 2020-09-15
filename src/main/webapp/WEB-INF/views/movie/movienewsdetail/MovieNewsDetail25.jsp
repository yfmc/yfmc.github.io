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
		<h3 class="floatLeft">정유미x남주혁 '보건교사 안은영', 9월 25일 공개 확정</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<p>넷플릭스 오리지널 시리즈 '보건교사 안은영'이 공개일을 확정하고 캐릭터 포스터를
			공개했다.</p>
		<figure class="image-captioned"
			style="display: block; margin: 0 auto; height: auto; width: 100%;">
			<img alt="영화 '보견교사 안은영' 캐릭터 포스터. 사진 넷플릭스" id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597433037949903962544006100.jpg"
				style="display: block; margin: 0 auto;" />
			<figcaption>영화 '보견교사 안은영' 캐릭터 포스터. 사진 넷플릭스</figcaption>
		</figure>
		<p>넷플릭스 오리지널 시리즈 '보건교사 안은영'은 평범한 이름과 달리 남들 눈에 보이지 않는 '젤리'를 볼 수 있는
			특별한 능력을 가진 보건교사 안은영이 새로 부임한 고등학교에서 심상치 않은 미스터리를 발견하고, 한문교사 홍인표와 함께 이를
			해결해가는 명랑 판타지 시리즈다.</p>
		<p>'미쓰 홍당무' '비밀은 없다'를 연출한 이경미 감독이 연출을 맡고, 동명 소설의 원작자이자 창비장편소설상과
			한국일보문학상을 수상한 대세 소설가 정세랑 작가가 직접 각본을 맡았다.</p>
		<p>안은영은 남들과 달리 욕망의 잔여물이 빚어내는 '젤리'를 볼 수 있는 특별한 능력을 지니고 있다. 보건교사로 새로
			부임한 학교에 심상치 않은 미스터리가 감춰져 있다는 걸 알아챈 은영 앞에 특별한 기운을 지닌 한문교사 홍인표가 나타나고,
			학생들과 학교를 지키기 위해 두 사람이 힘을 합쳐 온갖 젤리들을 퇴치해간다.</p>
		<p>엉뚱하고도 발랄한 상상력으로 가득한 '보건교사 안은영'의 세계를 누빌 두 주인공 안은영과 홍인표 역은 와 남주혁이
			각각 맡아 환상적인 조합이 완성됐다.</p>
		<p>공개된 캐릭터 포스터는 알록달록 젤리들에게 둘러싸인 안은영과 홍인표의 모습을 담고 있다. 이경미 감독은 은영과
			인표 사이의 "능숙하지 않은 두 사람이 삐걱대면서 생기는 텐션"을 관전 포인트로 꼽아 떼려야 뗄 수 없는 관계로 묶인 두
			사람이 서로를 완성해가는 이야기에 기대를 더했다.</p>
		<p>'보건교사 안은영'은 오는 9월 25일 넷플릭스를 통해 공개된다.</p>
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
