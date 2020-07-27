<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="/_inc/header.jsp"%>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/Booking_confirmed.css?time=<%=System.currentTimeMillis()%>" />
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
		
		<!-- 인원 / 좌석 선택 영역 -->
		<div class="booking_seats">
			<!-- 상단 제목 -->
			<h4 class="booking_title">예매완료</h4>
			
			<!-- 인원 선택 -->
			<div class="choose_people">
				
			</div>
		</div>
		
		<!-- float 마감제 -->
		<div class="clear"></div>
	</div>
</div>	
<%@ include file="/_inc/footer.jsp"%>