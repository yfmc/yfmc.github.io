<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="/_inc/header.jsp"%>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/Booking_confirmed.css?time=<%=System.currentTimeMillis()%>" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/Branch_yeti.css?time=<%=System.currentTimeMillis()%>" />

<title>예매완료 > 예매 | Cinephile</title>

<!-- content -->
<div id="content">
	<div class="booking_page">
		<!-- 예매단계 안내박스 -->
		<div class="booking_stage">
			<ul>
				<li>01<br />상영시간</li>
				<li>02<br />좌석</li>
				<li>03<br />결제</li>
				<li>04<br />예매완료</li>
			</ul>
		</div>
		
		<!-- 예매완료 영역 -->
		<div class="booking_confirmed">
			<!-- 상단 제목 -->
			<h4 class="booking_title">예매완료</h4>
			
			<!-- 하단부 -->
			<div class="booking_done">
				<h2>예매가 완료되었습니다</h2>
				<h3>예매번호 : 2020-0720-1517-0708</h3>
				<img class="film_poster" src="https://t1.daumcdn.net/movie/f6d6494aa78ac7ffde282c0e67b431beede65b91" width=270 />
				<div class="booked_detail">
					<div class="detail_title"><span class="label label-warning">15</span> 강철비2 : 정상회담</div>
					<div class="detail">
					2020.07.20 (월) 15:15 ~ 17:21<br />
					메가박스 코엑스 1관 F7, F8<br />
					성인 2명<br />
					결제금액 : 20,000원
					</div>
				</div>
				<div class="exit_btn">
					<button class="go_to_main" type="button">메인으로 가기</button>
					<button class="go_to_mypage" type="button">나의 예매내역으로 가기</button>
				</div>
			</div>
			<!-- float 마감제 -->
			<div class="clear"></div>
		</div>
		
		<!-- float 마감제 -->
		<div class="clear"></div>
	</div>
</div>

<!-- js 파일 적용 -->
<script type="text/javascript" src="<%=request.getContextPath()%>/booking/booking_confirmed.js"></script>
<%@ include file="/_inc/footer.jsp"%>