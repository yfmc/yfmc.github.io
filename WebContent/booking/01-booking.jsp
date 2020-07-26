<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="/_inc/header.jsp"%>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/Booking.css?time=<%=System.currentTimeMillis()%>" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/Branch_yeti.css?time=<%=System.currentTimeMillis()%>" />

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
		
		<!-- 영화관 선택 -->
		<div class="booking_branch">
			<!-- 타이틀 -->
			<div class="booking_title">
			영화관 선택
			</div>
			<!-- 지역 선택 -->
			<div class="choose_provincial">
				<ul>
					<li>자주 가는 영화관</li>
					<li>서울</li>
					<li>경기</li>
					<li>인천</li>
					<li>강원</li>
					<li>대전</li>
					<li>충청/세종</li>
					<li>광주</li>
					<li>전라</li>
					<li>대구/경북</li>
					<li>부산/울산</li>
					<li>경남</li>
					<li>제주</li>
				</ul>
			</div>
			
			<!-- 지점 선택 -->
			<div class="choose_branch">
				<ul>
					<li>CGV 강남</li>
					<li>롯데시네마 영등포</li>
					<li>메가박스 송파파크하비오</li>
					<li>메가박스 코엑스</li>
					<li>CGV 압구정</li>
					<li>CGV 등촌</li>
					<li>메가박스 군자</li>
					<li>롯데시네마 신도림</li>
					<li>롯데시네마 서울대입구</li>
					<li>CGV 하계</li>
					<li>CGV 건대입구</li>
					<li>메가박스 창동</li>
					<li>롯데시네마 강동</li>
					<li>롯데시네마 도곡</li>
					<li>메가박스 아트나인</li>
					<li>CGV 홍대</li>
					<li>CGV 신촌아트레온</li>
					<li>롯데시네마 홍대입구</li>
					<li>메가박스 신촌</li>
					<li>CGV 왕십리</li>
					<li>CGV 성신여대입구</li>
					<li>롯데시네마 청량리</li>
				</ul>
			</div>
		</div>
		
		<!-- 영화 선택 -->
		<div class="booking_film">
			<!-- 타이틀 -->
			<div class="booking_title">
			영화 선택
			</div>
			<!-- 영화 선택 -->
			<div class="choose_film">
				<ul>
					<li><span class="label label-warning">15</span> 강철비2 : 정상회담</li>
					<li><span class="label label-warning">15</span> #살아있다</li>
					<li><span class="label label-warning">15</span> 반도</li>
					<li><span class="label label-success">전체</span> 알라딘</li>
					<li><span class="label label-success">전체</span> 온워드 : 단 하루의 기적</li>
				</ul>
			</div>
		</div>
		<!-- 날짜, 시간 선택 -->
		<div class="booking_time">
			<!-- 타이틀 -->
			<div class="booking_title">
			날짜, 시간 선택
			</div>
			<!-- 날짜 선택 -->
			<!-- 시간 선택 -->
		</div>
		
		<!-- float 마감제 -->
		<div class="clear"></div>
	</div>	
</div>	
<%@ include file="/_inc/footer.jsp"%>