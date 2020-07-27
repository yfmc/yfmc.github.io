<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="/_inc/header.jsp"%>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/Booking_seats.css?time=<%=System.currentTimeMillis()%>" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/Branch_yeti.css?time=<%=System.currentTimeMillis()%>" />

<!-- content -->
<div id="content">
	<div class="booking_page">
		<!-- 예매단계 안내박스 -->
		<div class="booking_stage">
			<ul>
				<li onclick="goBack();">01<br />상영시간</li>
				<li>02<br />좌석</li>
				<li>03<br />결제</li>
				<li>04<br />예매완료</li>
			</ul>
		</div>
		
		<!-- 인원 / 좌석 선택 영역 -->
		<div class="booking_seats">
			<!-- 상단 제목 -->
			<h4 class="booking_title">인원 / 좌석 선택</h4>
			
			<!-- 인원 선택 박스 -->
			<div class="booking_people">
				<!-- 상영시간 선택 내역 안내 부분 -->
				<div class="chosen_time">
					<span class="label label-warning">15</span>
					<span class="film_title">강철비2 : 정상회담</span>
					<span class="detail">
					<br />2020.07.20 (월) | 15:15 ~ 17:21
					<br />메가박스 코엑스</span>
				</div>
				<!-- 인원 분류 및 선택 부분 -->
				<ul class="choose_people">
					<li>
						<div class="sort_ppl">성인 10,000원</div>
						<div class="choose_num">
    						<span class="choose minus"><i class="fas fa-minus"></i></span>
    						<span class="choose num">0</span>
    						<span class="choose plus"><i class="fas fa-plus"></i></span>
    					</div>
					</li>
					<li>
						<div class="sort_ppl">청소년 7,000원</div>
						<div class="choose_num">
    						<span class="choose minus"><i class="fas fa-minus"></i></span>
    						<span class="choose num">0</span>
    						<span class="choose plus"><i class="fas fa-plus"></i></span>
    					</div>
					</li>
					<li>
						<div class="sort_ppl">장애인 5,000원</div>
						<div class="choose_num">
    						<span class="choose minus"><i class="fas fa-minus"></i></span>
    						<span class="choose num">0</span>
    						<span class="choose plus"><i class="fas fa-plus"></i></span>
    					</div>
					</li>
				</ul>
			
				<!-- 안내 사항 부분 -->
				<div class="booking_notice">
					- 인원은 최대 8명 선택 가능합니다.<br />
					- 청소년 요금은 만 4세 이상 ~ 만 18세 미만의 청소년에 한해 적용됩니다.
				</div>
				<!-- float 마감제 -->
				<div class="clear"></div>
			</div>
			<!-- 좌석 선택 부분 -->
			<div class="choose_seats">
				<!-- screen -->
				<div class="screen">S C R E E N</div>
				<!-- 좌석 버튼 -->
				<div class="seats_btn"></div>
				<!-- 하단 부분 -->
				<div class="seats_footer">
					<!-- 좌석 종류 안내 -->
					<div class="seats_sort"></div>
					<!-- 결제하기 버튼 -->
					<!-- 다음 단계 버튼 -->
					<div class="go_to_next">
						<a href="<%=request.getContextPath()%>/booking/03-booking_payment.jsp"><i class="fas fa-hand-point-right"></i><br />결제하기</a>
					</div>
					<!-- float 마감제 -->
					<div class="clear"></div>
				</div>
			</div>
		</div>
		
		<!-- float 마감제 -->
		<div class="clear"></div>
	</div>
</div>


<!-- Javascript -->
<script type="text/javascript">
	function goBack() {
		var is_ok=confirm("상영시간 선택화면으로 돌아가시겠습니까?");
		
		if (is_ok) {
			location.href="<%=request.getContextPath()%>/booking/01-booking_time.jsp";
		}
	}
</script>
<%@ include file="/_inc/footer.jsp"%>