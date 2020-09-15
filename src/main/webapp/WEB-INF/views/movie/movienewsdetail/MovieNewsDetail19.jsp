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
		<h3 class="floatLeft">유역비 '뮬란', 9월 10일 국내 개봉 확정…스페셜 예고편 공개</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<figure class="image-captioned six"
			style="display: block; margin: 0 auto; height: auto; width: 600px;">
			<img alt="영화 '뮬란' 스페셜 예고편. 사진 월트디즈니 컴퍼니 코리아 " id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597712675222n3rPR.jpg"
				style="display: block; margin: 0 auto; width: 100%;" />
			<figcaption>영화 '뮬란' 스페셜 예고편. 사진 월트디즈니 컴퍼니 코리아</figcaption>
		</figure>
		<p>영화 '뮬란'이 오는 9월 10일 국내 개봉 확정과 함께 화려한 액션이 돋보이는 스페셜
			예고편을 공개했다.</p>
		<p>'뮬란'은 용감하고 지혜로운 뮬란이 사랑하는 가족을 위해 여자임을 숨기고 잔인무도한 적들로부터 나라를 지키는
			병사가 돼, 역경과 고난에 맞서 위대한 전사로 거듭나는 이야기를 그린 작품이다. 이 작품은 1998년 개봉한 디즈니
			애니메이션 '뮬란'을 22년 만에 실사화, 공감대를 형성하는 감정선과 아름다운 액션 시퀀스, 숨 막히는 영상이 어우러진
			작품으로 재탄생 시켰다.</p>
		<p>개봉일 확정과 함께 공개된 스페셜 예고편 속 뮬란은 황궁 안 막다른 골목에서 적들과 마주한다. “말도 안돼.
			여자가 사내들의 군대를 이끌다니”라는 대사가 이어지는 가운데 뮬란은 몸을 둔탁하게 만드는 갑옷을 벗어 시선을 집중시킨다.
			이어 단숨에 벽을 타고 넘어가 검을 휘두르며 결연한 의지를 다진다. 이는 강렬한 전사로 거듭난 ‘뮬란’의 모습을 확인할 수
			있는 것으로, 여기에 더해진 해외 매체평은 뮬란 캐릭터 및 업그레이드된 스토리에 대한 궁금증을 배가시킨다.</p>
		<p>이어진 장면에서는 보리 칸, 그리고 시아니앙과 마주한 뮬란의 모습도 엿볼 수 있다. 대규모 전쟁 한가운데 선
			‘뮬란’은 적들의 공격을 유려하게 피하는 것은 물론 화려한 검술 실력을 뽐내고 있어 이목을 집중시킨다.</p>
		<p>특히 이번에 공개된 스페셜 예고편은 오감을 사로잡는 액션의 진수를 확인할 수 있다. 광활한 자연을 배경으로
			펼쳐지는 대규모 전투신은 조직적이고도 생생한 전투 액션을 그려내고 있으며, 보리 칸과 시아니앙의 무술 또한 악역 캐릭터의
			존재감을 뽐내기에 충분하다. 또, 말 위에서 쏟아지는 화살을 피하고, 검을 휘두르는 뮬란의 모습은 영화 '뮬란'에서만 볼 수
			있는 유려하고 화려한 액션을 살려 눈길을 사로잡는다.</p>
		<p>니키 카로 감독이 뮬란을 연기한 크리스탈 리우(유역비)에 대해 "그녀가 보여준 뛰어난 액션에 모두 입이 떡
			벌어졌다”고도 말한 바 있는 만큼, '뮬란'이 펼쳐낼 화려한 액션에 대한 기대감이 고조되고 있다.</p>
		<p>'뮬란'은 오는 9월 10일 개봉 예정이다.</p>
		<p></p>
	</div>
<span class="buttonMoving">
<button type="button" class="btn btn-warning" onclick="location.href='${pageContext.request.contextPath}/movie/MovieNews3.do'">목록으로</button>
<button type="button" class="btn btn-danger" onclick="location.href='#'">맨위로</button>
</span>
</div>

<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>

<!--// ========== 컨텐츠 영역 끝 ========== -->

<%@ include file="../../_inc/footer.jsp"%>
