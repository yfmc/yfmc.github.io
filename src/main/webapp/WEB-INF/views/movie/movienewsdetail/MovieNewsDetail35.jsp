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
		<h3 class="floatLeft">웨이브, 제천국제음악영화제 83편 온라인 극장 오픈</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<p>온라인 동영상 서비스 웨이브가 제16회 제천국제음악영화제를 시간, 장소제약 없이 즐길
			수 있는 온라인극장을 오픈한다.</p>
		<figure class="image-captioned"
			style="display: block; margin: 0 auto; height: auto; width: 100%;">
			<img alt="제천국제음악영화제 개막작 '다시 만난 날들' 포스터. 사진 웨이브" id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597433031534903956129195500.jpg"
				style="display: block; margin: 0 auto;" width="100%" />
			<figcaption>제천국제음악영화제 개막작 '다시 만난 날들' 포스터. 사진 웨이브</figcaption>
		</figure>
		<p>제천국제음악영화제는 부산, 전주, 부천, 여성, DMZ 영화제와 함께 국비 지원을 받는 영화제다.
			웨이브(wavve, 대표 이태현)는 13일 오후 8시부터 17일 자정까지 5일간, 제천국제음악영화제 공식 온라인상영관을
			운영한다.</p>
		<p>온라인상영관은 영화제 개막작 '다시 만난 날들'을 비롯해 국내외 장편 및 단편 신작들과 기존 작품 등 22개국
			83편을 제공한다. 개막작 '다시 만난 날들'은 영화 '어둔밤'(2017)으로 주목받은 심찬양 감독이 메가폰을 잡아 음악에
			대한 열정과 상업주의적 현실 사이에서 흔들리는 청춘들의 모습을 담았다. JTBC 오디션 프로그램 '슈퍼밴드' 출신 뮤지션
			홍이삭이 주연과 음악감독을 맡았으며, 천재 기타리스트 장하은과 함께 풋풋한 로맨스를 그려간다.</p>
		<p>'세계 음악영화의 흐름'을 주제로 소개된 국제경쟁 부문은 '브링 다운 더 월' '온 더 레코드' '재거리: 잠비아
			록밴드의 전설' 등 7편이 소개돼 경합을 벌인다.</p>
		<p>해외 영화를 소개하는 '세계 음악영화의 풍경'은 '대나무로 엮은 경극장' '마르가리타의 선율’ 등 총 8편이
			소개되고, ‘한국 음악영화의 오늘’ 코너에서는 ‘삼비스타’, ‘카오산 탱고’ 등 33개 작품이 온라인으로 소개된다.</p>
		<p>기획전 ‘홈커밍데이’에서는 ‘파라디소 콘서트홀의 추억’ ‘서칭 포 슈가맨’ 등 제천국제음악영화제 역사를 함께했던
			화제작품들을 만나볼 수 있다.</p>
		<p>한국 음악영화사에 중요한 의미를 갖는 작품들을 소개하는 ‘한국 음악영화의 발자취’ 코너도 마련됐다. 뮤지션
			윤도현의 캐스팅과 마왕 신해철의 음악 작업으로 화제가 된 ‘정글 스토리’ 비롯해 ‘라듸오데이즈’ 등 명작 8편도 함께
			소개된다.</p>
		<p>음악영화인을 큐레이터로 선정해 그들에게 영감을 준 작품을 소개하는 ‘올해의 큐레이터’는 조성우 음악감독을
			선정했다. 조성우 음악감독은 ‘플란다스의 개’ ‘시네마 천국’ 등 5개 작품을 영화제 상영작으로 선정했다. ‘원스 어폰 어
			타임 인 아메리카’ ‘미션’ 등 주옥 같은 작품들을 남긴 세계 음악영화인들의 아버지 ‘故엔니오 모리꼬네 추모상영’ 코너도
			마련됐다.</p>
	</div>
<span class="buttonMoving">
<button type="button" class="btn btn-warning" onclick="location.href='${pageContext.request.contextPath}/movie/MovieNews5.do'">목록으로</button>
<button type="button" class="btn btn-danger" onclick="location.href='#'">맨위로</button>
</span>
</div>

<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>

<!--// ========== 컨텐츠 영역 끝 ========== -->

<%@ include file="../../_inc/footer.jsp"%>
