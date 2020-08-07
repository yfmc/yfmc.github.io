<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="/_inc/header.jsp"%>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/Booking_payment.css?time=<%=System.currentTimeMillis()%>" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/Branch_yeti.css?time=<%=System.currentTimeMillis()%>" />

<title>결제하기 > 예매 | Cinephile</title>

<!-- content -->
<div id="content">
	<div class="booking_page">
		<!-- 예매단계 안내박스 -->
		<div class="booking_stage">
			<ul>
				<li onclick="goBack1();">01<br />상영시간</li>
				<li onclick="goBack2();">02<br />좌석</li>
				<li>03<br />결제</li>
				<li>04<br />예매완료</li>
			</ul>
		</div>
		
		<!-- 결제수단 선택 영역 -->
		<div class="booking_payment">
			<!-- 상단 제목 영역 -->
			<h4 class="booking_title">결제수단 선택</h4>
			
			<!-- 하단 영역 -->
			<div class="booking_body">
				<!-- 좌측 선택 영화 영역 -->
				<div class="chosen_film">
					<img src="https://t1.daumcdn.net/movie/f6d6494aa78ac7ffde282c0e67b431beede65b91" width=250 />
					<div class="chosen_detail">
						<div class="detail_title"><span class="label label-warning">15</span> 강철비2 : 정상회담</div>
						<div class="detail">
						2020.07.20 (월) 15:15 ~ 17:21<br />
						메가박스 코엑스 1관 F7, F8<br />
						성인 2명			
						</div>
					</div>
				</div>
				<!-- 우측 결제 영역 -->
				<div class="choose_payment">
					<h2>최종 결제수단 선택</h2>
					<div class="payment_radio">
						<button type="button" name="payment" id="credit_card"><i class="far fa-credit-card"></i><br /><span>신용카드</span></button>
						<button type="button" name="payment" id="simple_payment"><i class="fas fa-money-check-alt"></i><br /><span>간편결제</span></button>
						<button type="button" name="payment" id="mobile_payment"><i class="fas fa-mobile-alt"></i><br /><span>휴대폰결제</span></button>
					</div>
					<h3>결제금액 20,000원</h3>
					<div class="payment_btn">
						<span class="btn to_void">결제취소</span>
						<span class="btn to_pay" onclick="goNext();">결제하기</span>
					</div>
				</div>
			</div>
		</div>
		
		<!-- float 마감제 -->
		<div class="clear"></div>
	</div>
</div>

<!-- Javascript -->
<script type="text/javascript">
	function goBack1() {
		var is_ok=confirm("상영시간 선택화면으로 돌아가시겠습니까? 좌석 선택 내용이 모두 사라집니다.");
		
		if (is_ok) {
			location.href="<%=request.getContextPath()%>/booking/01-booking_time.jsp";
		}
	}
	
	function goBack2() {
		var is_ok=confirm("좌석 선택화면으로 돌아가시겠습니까?");
		
		if (is_ok) {
			location.href="<%=request.getContextPath()%>/booking/02-booking_seats.jsp";
		}
	}
	
	function goNext() {
		var is_ok=confirm("결제하시겠습니까?");
		
		if (is_ok) {
			location.href="<%=request.getContextPath()%>/booking/04-booking_confirmed.jsp";
		}
	}
</script>
<%@ include file="/_inc/footer.jsp"%>