<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="/_inc/header.jsp"%>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/Booking_seats.css?time=<%=System.currentTimeMillis()%>" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/Branch_yeti.css?time=<%=System.currentTimeMillis()%>" />

<title>좌석선택 > 예매 | Cinephile</title>

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
						<div class="choose_num clear">
    						<span id="minus0" class="choose minus"><i class="fas fa-minus"></i></span>
                            <span id="count0" class="choose num">0</span>
                            <span id="plus0" class="choose plus"><i class="fas fa-plus"></i></span>
    					</div>
					</li>
					<li>
						<div class="sort_ppl">청소년 7,000원</div>
						<div class="choose_num clear">
    						<span id="minus1" class="choose minus"><i class="fas fa-minus"></i></span>
                            <span id="count1" class="choose num">0</span>
                            <span id="plus1" class="choose plus"><i class="fas fa-plus"></i></span>
    					</div>
					</li>
					<li>
						<div class="sort_ppl">장애인 5,000원</div>
						<div class="choose_num clear">
    						<span id="minus2" class="choose minus"><i class="fas fa-minus"></i></span>
                            <span id="count2" class="choose num">0</span>
                            <span id="plus2" class="choose plus"><i class="fas fa-plus"></i></span>
    					</div>
					</li>
					<!-- float 마감제 -->
					<div class="clear"></div>
				</ul>
				<!-- 안내 사항 부분 -->
				<div class="booking_notice">
					- 인원은 최대 8명 선택 가능합니다.<br />
					- 단체/대관 문의는 고객센터로 주시기 바랍니다.<br />
					- 청소년 요금은 만 4세 이상 ~ 만 18세 미만의 청소년에 한해 적용됩니다.
				</div>
				<!-- float 마감제 -->
				<div class="clear"></div>
			</div>
			<!-- 좌석 선택 부분 -->
			<div class="choose_seats">
				<!-- screen (상단) -->
				<div class="screen">S C R E E N</div>
				<!-- 중반부 -->
				<div class="seats_body">
					<!-- 좌석 버튼 -->
					<div class="seat_btns">
						<!-- 열 번호와 1번 좌석 간 간격 127px 복도 간격 30px 좌석 20px*16px 양옆 좌석 간 간격 2px 앞뒤 좌석 간 간격 5px -->
						
						<!-- A열 -->
						<span class="seat_row" style="left:250px; top:0px;">A</span>
						
						<a href="#" class="seat_btn" data-seat="A1" style="left:327px; top:0px;"><span class="seat_num">1</span></a>
						<a href="#" class="seat_btn" data-seat="A2" style="left:349px; top:0px;"><span class="seat_num">2</span></a>
						<a href="#" class="seat_btn" data-seat="A3" style="left:371px; top:0px;"><span class="seat_num">3</span></a>
						<a href="#" class="seat_btn" data-seat="A4" style="left:393px; top:0px;"><span class="seat_num">4</span></a>
						
						<a href="#" class="seat_btn" data-seat="A5" style="left:445px; top:0px;"><span class="seat_num">5</span></a>
						<a href="#" class="seat_btn" data-seat="A6" style="left:467px; top:0px;"><span class="seat_num">6</span></a>
						<a href="#" class="seat_btn" data-seat="A7" style="left:489px; top:0px;"><span class="seat_num">7</span></a>
						<a href="#" class="seat_btn" data-seat="A8" style="left:511px; top:0px;"><span class="seat_num">8</span></a>					
						<a href="#" class="seat_btn" data-seat="A9" style="left:533px; top:0px;"><span class="seat_num">9</span></a>
						<a href="#" class="seat_btn" data-seat="A10" style="left:555px; top:0px;"><span class="seat_num">10</span></a>					
						<a href="#" class="seat_btn" data-seat="A11" style="left:577px; top:0px;"><span class="seat_num">11</span></a>
						<a href="#" class="seat_btn" data-seat="A12" style="left:599px; top:0px;"><span class="seat_num">12</span></a>
						<a href="#" class="seat_btn" data-seat="A13" style="left:621px; top:0px;"><span class="seat_num">13</span></a>
						<a href="#" class="seat_btn" data-seat="A14" style="left:643px; top:0px;"><span class="seat_num">14</span></a>
						
						<a href="#" class="seat_btn" data-seat="A15" style="left:695px; top:0px;"><span class="seat_num">15</span></a>
						<a href="#" class="seat_btn" data-seat="A16" style="left:717px; top:0px;"><span class="seat_num">16</span></a>
						<a href="#" class="seat_btn" data-seat="A17" style="left:739px; top:0px;"><span class="seat_num">17</span></a>
						<a href="#" class="seat_btn" data-seat="A18" style="left:761px; top:0px;"><span class="seat_num">18</span></a>
						
						<!-- B열 -->
						<span class="seat_row" style="left:250px; top:21px;">B</span>
						
						<a href="#" class="seat_btn" data-seat="B1" style="left:327px; top:21px;"><span class="seat_num">1</span></a>
						<a href="#" class="seat_btn" data-seat="B2" style="left:349px; top:21px;"><span class="seat_num">2</span></a>
						<a href="#" class="seat_btn" data-seat="B3" style="left:371px; top:21px;"><span class="seat_num">3</span></a>
						<a href="#" class="seat_btn" data-seat="B4" style="left:393px; top:21px;"><span class="seat_num">4</span></a>
						
						<a href="#" class="seat_btn" data-seat="B5" style="left:445px; top:21px;"><span class="seat_num">5</span></a>
						<a href="#" class="seat_btn" data-seat="B6" style="left:467px; top:21px;"><span class="seat_num">6</span></a>
						<a href="#" class="seat_btn" data-seat="B7" style="left:489px; top:21px;"><span class="seat_num">7</span></a>
						<a href="#" class="seat_btn" data-seat="B8" style="left:511px; top:21px;"><span class="seat_num">8</span></a>					
						<a href="#" class="seat_btn" data-seat="B9" style="left:533px; top:21px;"><span class="seat_num">9</span></a>
						<a href="#" class="seat_btn" data-seat="B10" style="left:555px; top:21px;"><span class="seat_num">10</span></a>					
						<a href="#" class="seat_btn" data-seat="B11" style="left:577px; top:21px;"><span class="seat_num">11</span></a>
						<a href="#" class="seat_btn" data-seat="B12" style="left:599px; top:21px;"><span class="seat_num">12</span></a>
						<a href="#" class="seat_btn" data-seat="B13" style="left:621px; top:21px;"><span class="seat_num">13</span></a>
						<a href="#" class="seat_btn" data-seat="B14" style="left:643px; top:21px;"><span class="seat_num">14</span></a>
						
						<a href="#" class="seat_btn" data-seat="B15" style="left:695px; top:21px;"><span class="seat_num">15</span></a>
						<a href="#" class="seat_btn" data-seat="B16" style="left:717px; top:21px;"><span class="seat_num">16</span></a>
						<a href="#" class="seat_btn" data-seat="B17" style="left:739px; top:21px;"><span class="seat_num">17</span></a>
						<a href="#" class="seat_btn" data-seat="B18" style="left:761px; top:21px;"><span class="seat_num">18</span></a>
						
						<!-- C열 -->
						<span class="seat_row" style="left:250px; top:42px;">C</span>
						
						<a href="#" class="seat_btn" data-seat="C1" style="left:327px; top:42px;"><span class="seat_num">1</span></a>
						<a href="#" class="seat_btn" data-seat="C2" style="left:349px; top:42px;"><span class="seat_num">2</span></a>
						<a href="#" class="seat_btn" data-seat="C3" style="left:371px; top:42px;"><span class="seat_num">3</span></a>
						<a href="#" class="seat_btn" data-seat="C4" style="left:393px; top:42px;"><span class="seat_num">4</span></a>
						
						<a href="#" class="seat_btn" data-seat="C5" style="left:445px; top:42px;"><span class="seat_num">5</span></a>
						<a href="#" class="seat_btn" data-seat="C6" style="left:467px; top:42px;"><span class="seat_num">6</span></a>
						<a href="#" class="seat_btn" data-seat="C7" style="left:489px; top:42px;"><span class="seat_num">7</span></a>
						<a href="#" class="seat_btn" data-seat="C8" style="left:511px; top:42px;"><span class="seat_num">8</span></a>					
						<a href="#" class="seat_btn" data-seat="C9" style="left:533px; top:42px;"><span class="seat_num">9</span></a>
						<a href="#" class="seat_btn" data-seat="C10" style="left:555px; top:42px;"><span class="seat_num">10</span></a>					
						<a href="#" class="seat_btn" data-seat="C11" style="left:577px; top:42px;"><span class="seat_num">11</span></a>
						<a href="#" class="seat_btn" data-seat="C12" style="left:599px; top:42px;"><span class="seat_num">12</span></a>
						<a href="#" class="seat_btn" data-seat="C13" style="left:621px; top:42px;"><span class="seat_num">13</span></a>
						<a href="#" class="seat_btn" data-seat="C14" style="left:643px; top:42px;"><span class="seat_num">14</span></a>
						
						<a href="#" class="seat_btn" data-seat="C15" style="left:695px; top:42px;"><span class="seat_num">15</span></a>
						<a href="#" class="seat_btn" data-seat="C16" style="left:717px; top:42px;"><span class="seat_num">16</span></a>
						<a href="#" class="seat_btn" data-seat="C17" style="left:739px; top:42px;"><span class="seat_num">17</span></a>
						<a href="#" class="seat_btn" data-seat="C18" style="left:761px; top:42px;"><span class="seat_num">18</span></a>
						
						<!-- D열 -->
						<span class="seat_row" style="left:250px; top:63px;">D</span>
						
						<a href="#" class="seat_btn" data-seat="D1" style="left:327px; top:63px;"><span class="seat_num">1</span></a>
						<a href="#" class="seat_btn" data-seat="D2" style="left:349px; top:63px;"><span class="seat_num">2</span></a>
						<a href="#" class="seat_btn" data-seat="D3" style="left:371px; top:63px;"><span class="seat_num">3</span></a>
						<a href="#" class="seat_btn" data-seat="D4" style="left:393px; top:63px;"><span class="seat_num">4</span></a>
						
						<a href="#" class="seat_btn" data-seat="D5" style="left:445px; top:63px;"><span class="seat_num">5</span></a>
						<a href="#" class="seat_btn" data-seat="D6" style="left:467px; top:63px;"><span class="seat_num">6</span></a>
						<a href="#" class="seat_btn" data-seat="D7" style="left:489px; top:63px;"><span class="seat_num">7</span></a>
						<a href="#" class="seat_btn" data-seat="D8" style="left:511px; top:63px;"><span class="seat_num">8</span></a>					
						<a href="#" class="seat_btn" data-seat="D9" style="left:533px; top:63px;"><span class="seat_num">9</span></a>
						<a href="#" class="seat_btn" data-seat="D10" style="left:555px; top:63px;"><span class="seat_num">10</span></a>					
						<a href="#" class="seat_btn" data-seat="D11" style="left:577px; top:63px;"><span class="seat_num">11</span></a>
						<a href="#" class="seat_btn" data-seat="D12" style="left:599px; top:63px;"><span class="seat_num">12</span></a>
						<a href="#" class="seat_btn" data-seat="D13" style="left:621px; top:63px;"><span class="seat_num">13</span></a>
						<a href="#" class="seat_btn" data-seat="D14" style="left:643px; top:63px;"><span class="seat_num">14</span></a>
						
						<a href="#" class="seat_btn" data-seat="D15" style="left:695px; top:63px;"><span class="seat_num">15</span></a>
						<a href="#" class="seat_btn" data-seat="D16" style="left:717px; top:63px;"><span class="seat_num">16</span></a>
						<a href="#" class="seat_btn" data-seat="D17" style="left:739px; top:63px;"><span class="seat_num">17</span></a>
						<a href="#" class="seat_btn" data-seat="D18" style="left:761px; top:63px;"><span class="seat_num">18</span></a>
						
						<!-- E열 -->
						<span class="seat_row" style="left:250px; top:84px;">E</span>
						
						<a href="#" class="seat_btn" data-seat="E1" style="left:327px; top:84px;"><span class="seat_num">1</span></a>
						<a href="#" class="seat_btn" data-seat="E2" style="left:349px; top:84px;"><span class="seat_num">2</span></a>
						<a href="#" class="seat_btn" data-seat="E3" style="left:371px; top:84px;"><span class="seat_num">3</span></a>
						<a href="#" class="seat_btn" data-seat="E4" style="left:393px; top:84px;"><span class="seat_num">4</span></a>
						
						<a href="#" class="seat_btn" data-seat="E5" style="left:445px; top:84px;"><span class="seat_num">5</span></a>
						<a href="#" class="seat_btn" data-seat="E6" style="left:467px; top:84px;"><span class="seat_num">6</span></a>
						<a href="#" class="seat_btn" data-seat="E7" style="left:489px; top:84px;"><span class="seat_num">7</span></a>
						<a href="#" class="seat_btn" data-seat="E8" style="left:511px; top:84px;"><span class="seat_num">8</span></a>					
						<a href="#" class="seat_btn" data-seat="E9" style="left:533px; top:84px;"><span class="seat_num">9</span></a>
						<a href="#" class="seat_btn" data-seat="E10" style="left:555px; top:84px;"><span class="seat_num">10</span></a>					
						<a href="#" class="seat_btn" data-seat="E11" style="left:577px; top:84px;"><span class="seat_num">11</span></a>
						<a href="#" class="seat_btn" data-seat="E12" style="left:599px; top:84px;"><span class="seat_num">12</span></a>
						<a href="#" class="seat_btn" data-seat="E13" style="left:621px; top:84px;"><span class="seat_num">13</span></a>
						<a href="#" class="seat_btn" data-seat="E14" style="left:643px; top:84px;"><span class="seat_num">14</span></a>
						
						<a href="#" class="seat_btn" data-seat="E15" style="left:695px; top:84px;"><span class="seat_num">15</span></a>
						<a href="#" class="seat_btn" data-seat="E16" style="left:717px; top:84px;"><span class="seat_num">16</span></a>
						<a href="#" class="seat_btn" data-seat="E17" style="left:739px; top:84px;"><span class="seat_num">17</span></a>
						<a href="#" class="seat_btn" data-seat="E18" style="left:761px; top:84px;"><span class="seat_num">18</span></a>
						
						<!-- F열 -->
						<span class="seat_row" style="left:250px; top:105px;">F</span>
						
						<a href="#" class="seat_btn" data-seat="F1" style="left:327px; top:105px;"><span class="seat_num">1</span></a>
						<a href="#" class="seat_btn" data-seat="F2" style="left:349px; top:105px;"><span class="seat_num">2</span></a>
						<a href="#" class="seat_btn" data-seat="F3" style="left:371px; top:105px;"><span class="seat_num">3</span></a>
						<a href="#" class="seat_btn" data-seat="F4" style="left:393px; top:105px;"><span class="seat_num">4</span></a>
						
						<a href="#" class="seat_btn" data-seat="F5" style="left:445px; top:105px;"><span class="seat_num">5</span></a>
						<a href="#" class="seat_btn" data-seat="F6" style="left:467px; top:105px;"><span class="seat_num">6</span></a>
						<a href="#" class="seat_btn" data-seat="F7" style="left:489px; top:105px;"><span class="seat_num">7</span></a>
						<a href="#" class="seat_btn" data-seat="F8" style="left:511px; top:105px;"><span class="seat_num">8</span></a>					
						<a href="#" class="seat_btn" data-seat="F9" style="left:533px; top:105px;"><span class="seat_num">9</span></a>
						<a href="#" class="seat_btn" data-seat="F10" style="left:555px; top:105px;"><span class="seat_num">10</span></a>					
						<a href="#" class="seat_btn" data-seat="F11" style="left:577px; top:105px;"><span class="seat_num">11</span></a>
						<a href="#" class="seat_btn" data-seat="F12" style="left:599px; top:105px;"><span class="seat_num">12</span></a>
						<a href="#" class="seat_btn" data-seat="F13" style="left:621px; top:105px;"><span class="seat_num">13</span></a>
						<a href="#" class="seat_btn" data-seat="F14" style="left:643px; top:105px;"><span class="seat_num">14</span></a>
						
						<a href="#" class="seat_btn" data-seat="F15" style="left:695px; top:105px;"><span class="seat_num">15</span></a>
						<a href="#" class="seat_btn" data-seat="F16" style="left:717px; top:105px;"><span class="seat_num">16</span></a>
						<a href="#" class="seat_btn" data-seat="F17" style="left:739px; top:105px;"><span class="seat_num">17</span></a>
						<a href="#" class="seat_btn" data-seat="F18" style="left:761px; top:105px;"><span class="seat_num">18</span></a>
						
						<!-- G열 -->
						<span class="seat_row" style="left:250px; top:126px;">G</span>
						
						<a href="#" class="seat_btn" data-seat="G1" style="left:327px; top:126px;"><span class="seat_num">1</span></a>
						<a href="#" class="seat_btn" data-seat="G2" style="left:349px; top:126px;"><span class="seat_num">2</span></a>
						<a href="#" class="seat_btn" data-seat="G3" style="left:371px; top:126px;"><span class="seat_num">3</span></a>
						<a href="#" class="seat_btn" data-seat="G4" style="left:393px; top:126px;"><span class="seat_num">4</span></a>
						
						<a href="#" class="seat_btn" data-seat="G5" style="left:445px; top:126px;"><span class="seat_num">5</span></a>
						<a href="#" class="seat_btn" data-seat="G6" style="left:467px; top:126px;"><span class="seat_num">6</span></a>
						<a href="#" class="seat_btn" data-seat="G7" style="left:489px; top:126px;"><span class="seat_num">7</span></a>
						<a href="#" class="seat_btn" data-seat="G8" style="left:511px; top:126px;"><span class="seat_num">8</span></a>					
						<a href="#" class="seat_btn" data-seat="G9" style="left:533px; top:126px;"><span class="seat_num">9</span></a>
						<a href="#" class="seat_btn" data-seat="G10" style="left:555px; top:126px;"><span class="seat_num">10</span></a>					
						<a href="#" class="seat_btn" data-seat="G11" style="left:577px; top:126px;"><span class="seat_num">11</span></a>
						<a href="#" class="seat_btn" data-seat="G12" style="left:599px; top:126px;"><span class="seat_num">12</span></a>
						<a href="#" class="seat_btn" data-seat="G13" style="left:621px; top:126px;"><span class="seat_num">13</span></a>
						<a href="#" class="seat_btn" data-seat="G14" style="left:643px; top:126px;"><span class="seat_num">14</span></a>
						
						<a href="#" class="seat_btn" data-seat="G15" style="left:695px; top:126px;"><span class="seat_num">15</span></a>
						<a href="#" class="seat_btn" data-seat="G16" style="left:717px; top:126px;"><span class="seat_num">16</span></a>
						<a href="#" class="seat_btn" data-seat="G17" style="left:739px; top:126px;"><span class="seat_num">17</span></a>
						<a href="#" class="seat_btn" data-seat="G18" style="left:761px; top:126px;"><span class="seat_num">18</span></a>
						
						<!-- H열 -->
						<span class="seat_row" style="left:250px; top:147px;">H</span>
						
						<a href="#" class="seat_btn" data-seat="H1" style="left:327px; top:147px;"><span class="seat_num">1</span></a>
						<a href="#" class="seat_btn" data-seat="H2" style="left:349px; top:147px;"><span class="seat_num">2</span></a>
						<a href="#" class="seat_btn" data-seat="H3" style="left:371px; top:147px;"><span class="seat_num">3</span></a>
						<a href="#" class="seat_btn" data-seat="H4" style="left:393px; top:147px;"><span class="seat_num">4</span></a>
						
						<a href="#" class="seat_btn" data-seat="H5" style="left:445px; top:147px;"><span class="seat_num">5</span></a>
						<a href="#" class="seat_btn" data-seat="H6" style="left:467px; top:147px;"><span class="seat_num">6</span></a>
						<a href="#" class="seat_btn" data-seat="H7" style="left:489px; top:147px;"><span class="seat_num">7</span></a>
						<a href="#" class="seat_btn" data-seat="H8" style="left:511px; top:147px;"><span class="seat_sold">8</span></a>					
						<a href="#" class="seat_btn" data-seat="H9" style="left:533px; top:147px;"><span class="seat_sold">9</span></a>
						<a href="#" class="seat_btn" data-seat="H10" style="left:555px; top:147px;"><span class="seat_sold">10</span></a>					
						<a href="#" class="seat_btn" data-seat="H11" style="left:577px; top:147px;"><span class="seat_sold">11</span></a>
						<a href="#" class="seat_btn" data-seat="H12" style="left:599px; top:147px;"><span class="seat_num">12</span></a>
						<a href="#" class="seat_btn" data-seat="H13" style="left:621px; top:147px;"><span class="seat_num">13</span></a>
						<a href="#" class="seat_btn" data-seat="H14" style="left:643px; top:147px;"><span class="seat_num">14</span></a>
						
						<a href="#" class="seat_btn" data-seat="H15" style="left:695px; top:147px;"><span class="seat_num">15</span></a>
						<a href="#" class="seat_btn" data-seat="H16" style="left:717px; top:147px;"><span class="seat_num">16</span></a>
						<a href="#" class="seat_btn" data-seat="H17" style="left:739px; top:147px;"><span class="seat_num">17</span></a>
						<a href="#" class="seat_btn" data-seat="H18" style="left:761px; top:147px;"><span class="seat_num">18</span></a>
						
						<!-- I열 -->
						<span class="seat_row" style="left:250px; top:168px;">I</span>
						
						<a href="#" class="seat_btn" data-seat="I1" style="left:327px; top:168px;"><span class="seat_num">1</span></a>
						<a href="#" class="seat_btn" data-seat="I2" style="left:349px; top:168px;"><span class="seat_num">2</span></a>
						<a href="#" class="seat_btn" data-seat="I3" style="left:371px; top:168px;"><span class="seat_num">3</span></a>
						<a href="#" class="seat_btn" data-seat="I4" style="left:393px; top:168px;"><span class="seat_num">4</span></a>
						
						<a href="#" class="seat_btn" data-seat="I5" style="left:445px; top:168px;"><span class="seat_num">5</span></a>
						<a href="#" class="seat_btn" data-seat="I6" style="left:467px; top:168px;"><span class="seat_num">6</span></a>
						<a href="#" class="seat_btn" data-seat="I7" style="left:489px; top:168px;"><span class="seat_num">7</span></a>
						<a href="#" class="seat_btn" data-seat="I8" style="left:511px; top:168px;"><span class="seat_num">8</span></a>					
						<a href="#" class="seat_btn" data-seat="I9" style="left:533px; top:168px;"><span class="seat_selected">9</span></a>
						<a href="#" class="seat_btn" data-seat="I10" style="left:555px; top:168px;"><span class="seat_selected">10</span></a>					
						<a href="#" class="seat_btn" data-seat="I11" style="left:577px; top:168px;"><span class="seat_num">11</span></a>
						<a href="#" class="seat_btn" data-seat="I12" style="left:599px; top:168px;"><span class="seat_num">12</span></a>
						<a href="#" class="seat_btn" data-seat="I13" style="left:621px; top:168px;"><span class="seat_num">13</span></a>
						<a href="#" class="seat_btn" data-seat="I14" style="left:643px; top:168px;"><span class="seat_num">14</span></a>
						
						<a href="#" class="seat_btn" data-seat="I15" style="left:695px; top:168px;"><span class="seat_num">15</span></a>
						<a href="#" class="seat_btn" data-seat="I16" style="left:717px; top:168px;"><span class="seat_num">16</span></a>
						<a href="#" class="seat_btn" data-seat="I17" style="left:739px; top:168px;"><span class="seat_num">17</span></a>
						<a href="#" class="seat_btn" data-seat="I18" style="left:761px; top:168px;"><span class="seat_num">18</span></a>
						
						<!-- J열 -->
						<span class="seat_row" style="left:250px; top:189px;">J</span>
						
						<a href="#" class="seat_btn" data-seat="J1" style="left:327px; top:189px;"><span class="seat_num">1</span></a>
						<a href="#" class="seat_btn" data-seat="J2" style="left:349px; top:189px;"><span class="seat_num">2</span></a>
						<a href="#" class="seat_btn" data-seat="J3" style="left:371px; top:189px;"><span class="seat_num">3</span></a>
						<a href="#" class="seat_btn" data-seat="J4" style="left:393px; top:189px;"><span class="seat_num">4</span></a>
						
						<a href="#" class="seat_btn" data-seat="J5" style="left:445px; top:189px;"><span class="seat_num">5</span></a>
						<a href="#" class="seat_btn" data-seat="J6" style="left:467px; top:189px;"><span class="seat_num">6</span></a>
						<a href="#" class="seat_btn" data-seat="J7" style="left:489px; top:189px;"><span class="seat_num">7</span></a>
						<a href="#" class="seat_btn" data-seat="J8" style="left:511px; top:189px;"><span class="seat_num">8</span></a>					
						<a href="#" class="seat_btn" data-seat="J9" style="left:533px; top:189px;"><span class="seat_num">9</span></a>
						<a href="#" class="seat_btn" data-seat="J10" style="left:555px; top:189px;"><span class="seat_num">10</span></a>					
						<a href="#" class="seat_btn" data-seat="J11" style="left:577px; top:189px;"><span class="seat_num">11</span></a>
						<a href="#" class="seat_btn" data-seat="J12" style="left:599px; top:189px;"><span class="seat_num">12</span></a>
						<a href="#" class="seat_btn" data-seat="J13" style="left:621px; top:189px;"><span class="seat_num">13</span></a>
						<a href="#" class="seat_btn" data-seat="J14" style="left:643px; top:189px;"><span class="seat_num">14</span></a>
						
						<a href="#" class="seat_btn" data-seat="J15" style="left:695px; top:189px;"><span class="seat_num">15</span></a>
						<a href="#" class="seat_btn" data-seat="J16" style="left:717px; top:189px;"><span class="seat_num">16</span></a>
						<a href="#" class="seat_btn" data-seat="J17" style="left:739px; top:189px;"><span class="seat_num">17</span></a>
						<a href="#" class="seat_btn" data-seat="J18" style="left:761px; top:189px;"><span class="seat_num">18</span></a>
						
						<!-- K열 -->
						<span class="seat_row" style="left:250px; top:210px;">K</span>
						
						<a href="#" class="seat_btn" data-seat="K1" style="left:327px; top:210px;"><span class="seat_num">1</span></a>
						<a href="#" class="seat_btn" data-seat="K2" style="left:349px; top:210px;"><span class="seat_num">2</span></a>
						<a href="#" class="seat_btn" data-seat="K3" style="left:371px; top:210px;"><span class="seat_num">3</span></a>
						<a href="#" class="seat_btn" data-seat="K4" style="left:393px; top:210px;"><span class="seat_num">4</span></a>
						
						<a href="#" class="seat_btn" data-seat="K5" style="left:445px; top:210px;"><span class="seat_num">5</span></a>
						<a href="#" class="seat_btn" data-seat="K6" style="left:467px; top:210px;"><span class="seat_num">6</span></a>
						<a href="#" class="seat_btn" data-seat="K7" style="left:489px; top:210px;"><span class="seat_num">7</span></a>
						<a href="#" class="seat_btn" data-seat="K8" style="left:511px; top:210px;"><span class="seat_num">8</span></a>					
						<a href="#" class="seat_btn" data-seat="K9" style="left:533px; top:210px;"><span class="seat_num">9</span></a>
						<a href="#" class="seat_btn" data-seat="K10" style="left:555px; top:210px;"><span class="seat_num">10</span></a>					
						<a href="#" class="seat_btn" data-seat="K11" style="left:577px; top:210px;"><span class="seat_num">11</span></a>
						<a href="#" class="seat_btn" data-seat="K12" style="left:599px; top:210px;"><span class="seat_num">12</span></a>
						<a href="#" class="seat_btn" data-seat="K13" style="left:621px; top:210px;"><span class="seat_num">13</span></a>
						<a href="#" class="seat_btn" data-seat="K14" style="left:643px; top:210px;"><span class="seat_num">14</span></a>
						
						<a href="#" class="seat_btn" data-seat="K15" style="left:695px; top:210px;"><span class="seat_num">15</span></a>
						<a href="#" class="seat_btn" data-seat="K16" style="left:717px; top:210px;"><span class="seat_num">16</span></a>
						<a href="#" class="seat_btn" data-seat="K17" style="left:739px; top:210px;"><span class="seat_num">17</span></a>
						<a href="#" class="seat_btn" data-seat="K18" style="left:761px; top:210px;"><span class="seat_num">18</span></a>
						
						<!-- L열 -->
						<span class="seat_row" style="left:250px; top:232px;">L</span>
						
						<a href="#" class="seat_btn" data-seat="L1" style="left:327px; top:232px;"><span class="seat_num">1</span></a>
						<a href="#" class="seat_btn" data-seat="L2" style="left:349px; top:232px;"><span class="seat_num">2</span></a>
						<a href="#" class="seat_btn" data-seat="L3" style="left:371px; top:232px;"><span class="seat_num">3</span></a>
						<a href="#" class="seat_btn" data-seat="L4" style="left:393px; top:232px;"><span class="seat_num">4</span></a>
						
						<a href="#" class="seat_btn" data-seat="L5" style="left:445px; top:232px;"><span class="seat_num">5</span></a>
						<a href="#" class="seat_btn" data-seat="L6" style="left:467px; top:232px;"><span class="seat_num">6</span></a>
						<a href="#" class="seat_btn" data-seat="L7" style="left:489px; top:232px;"><span class="seat_num">7</span></a>
						<a href="#" class="seat_btn" data-seat="L8" style="left:511px; top:232px;"><span class="seat_num">8</span></a>					
						<a href="#" class="seat_btn" data-seat="L9" style="left:533px; top:232px;"><span class="seat_num">9</span></a>
						<a href="#" class="seat_btn" data-seat="L10" style="left:555px; top:232px;"><span class="seat_num">10</span></a>					
						<a href="#" class="seat_btn" data-seat="L11" style="left:577px; top:232px;"><span class="seat_num">11</span></a>
						<a href="#" class="seat_btn" data-seat="L12" style="left:599px; top:232px;"><span class="seat_num">12</span></a>
						<a href="#" class="seat_btn" data-seat="L13" style="left:621px; top:232px;"><span class="seat_num">13</span></a>
						<a href="#" class="seat_btn" data-seat="L14" style="left:643px; top:232px;"><span class="seat_num">14</span></a>
						
						<a href="#" class="seat_btn" data-seat="L15" style="left:695px; top:232px;"><span class="seat_num">15</span></a>
						<a href="#" class="seat_btn" data-seat="L16" style="left:717px; top:232px;"><span class="seat_num">16</span></a>
						<a href="#" class="seat_btn" data-seat="L17" style="left:739px; top:232px;"><span class="seat_num">17</span></a>
						<a href="#" class="seat_btn" data-seat="L18" style="left:761px; top:232px;"><span class="seat_num">18</span></a>
						
						<!-- M열 -->
						<span class="seat_row" style="left:250px; top:253px;">M</span>
						
						<a href="#" class="seat_btn" data-seat="M1" style="left:327px; top:253px;"><span class="seat_num">1</span></a>
						<a href="#" class="seat_btn" data-seat="M2" style="left:349px; top:253px;"><span class="seat_num">2</span></a>
						<a href="#" class="seat_btn" data-seat="M3" style="left:371px; top:253px;"><span class="seat_num">3</span></a>
						<a href="#" class="seat_btn" data-seat="M4" style="left:393px; top:253px;"><span class="seat_num">4</span></a>
						
						<a href="#" class="seat_btn" data-seat="M5" style="left:445px; top:253px;"><span class="seat_num">5</span></a>
						<a href="#" class="seat_btn" data-seat="M6" style="left:467px; top:253px;"><span class="seat_num">6</span></a>
						<a href="#" class="seat_btn" data-seat="M7" style="left:489px; top:253px;"><span class="seat_num">7</span></a>
						<a href="#" class="seat_btn" data-seat="M8" style="left:511px; top:253px;"><span class="seat_num">8</span></a>					
						<a href="#" class="seat_btn" data-seat="M9" style="left:533px; top:253px;"><span class="seat_num">9</span></a>
						<a href="#" class="seat_btn" data-seat="M10" style="left:555px; top:253px;"><span class="seat_num">10</span></a>					
						<a href="#" class="seat_btn" data-seat="M11" style="left:577px; top:253px;"><span class="seat_num">11</span></a>
						<a href="#" class="seat_btn" data-seat="M12" style="left:599px; top:253px;"><span class="seat_num">12</span></a>
						<a href="#" class="seat_btn" data-seat="M13" style="left:621px; top:253px;"><span class="seat_num">13</span></a>
						<a href="#" class="seat_btn" data-seat="M14" style="left:643px; top:253px;"><span class="seat_num">14</span></a>
						
						<a href="#" class="seat_btn" data-seat="M15" style="left:695px; top:253px;"><span class="seat_num">15</span></a>
						<a href="#" class="seat_btn" data-seat="M16" style="left:717px; top:253px;"><span class="seat_num">16</span></a>
						<a href="#" class="seat_btn" data-seat="M17" style="left:739px; top:253px;"><span class="seat_num">17</span></a>
						<a href="#" class="seat_btn" data-seat="M18" style="left:761px; top:253px;"><span class="seat_num">18</span></a>
						
						<!-- N열 -->
						<span class="seat_row" style="left:250px; top:274px;">N</span>
						
						<a href="#" class="seat_btn" data-seat="N1" style="left:327px; top:274px;"><span class="seat_unable">X</span></a>
						<a href="#" class="seat_btn" data-seat="N2" style="left:349px; top:274px;"><span class="seat_unable">X</span></a>
						<a href="#" class="seat_btn" data-seat="N3" style="left:371px; top:274px;"><span class="seat_unable">X</span></a>
						<a href="#" class="seat_btn" data-seat="N4" style="left:393px; top:274px;"><span class="seat_unable">X</span></a>
						
						<a href="#" class="seat_btn" data-seat="N5" style="left:445px; top:274px;"><span class="seat_disabled">5</span></a>
						<a href="#" class="seat_btn" data-seat="N6" style="left:467px; top:274px;"><span class="seat_disabled">6</span></a>
						<a href="#" class="seat_btn" data-seat="N7" style="left:489px; top:274px;"><span class="seat_disabled">7</span></a>
						<a href="#" class="seat_btn" data-seat="N8" style="left:511px; top:274px;"><span class="seat_disabled">8</span></a>					
						<a href="#" class="seat_btn" data-seat="N9" style="left:533px; top:274px;"><span class="seat_num">9</span></a>
						<a href="#" class="seat_btn" data-seat="N10" style="left:555px; top:274px;"><span class="seat_num">10</span></a>					
						<a href="#" class="seat_btn" data-seat="N11" style="left:577px; top:274px;"><span class="seat_num">11</span></a>
						<a href="#" class="seat_btn" data-seat="N12" style="left:599px; top:274px;"><span class="seat_num">12</span></a>
						<a href="#" class="seat_btn" data-seat="N13" style="left:621px; top:274px;"><span class="seat_num">13</span></a>
						<a href="#" class="seat_btn" data-seat="N14" style="left:643px; top:274px;"><span class="seat_num">14</span></a>
						
						<a href="#" class="seat_btn" data-seat="N15" style="left:695px; top:274px;"><span class="seat_unable">X</span></a>
						<a href="#" class="seat_btn" data-seat="N16" style="left:717px; top:274px;"><span class="seat_unable">X</span></a>
						<a href="#" class="seat_btn" data-seat="N17" style="left:739px; top:274px;"><span class="seat_unable">X</span></a>
						<a href="#" class="seat_btn" data-seat="N18" style="left:761px; top:274px;"><span class="seat_unable">X</span></a>					
					</div>
				</div>
				
				<!-- 하단 부분 -->
				<div class="seats_footer">
					<!-- 좌석 종류 안내 -->
					<div class="seats_sort">
						<span class="seat_able"></span><span class="seat_state">선택가능</span>
						<span class="seat_disabled"></span><span class="seat_state">장애인석</span>
						<span class="seat_selected"></span><span class="seat_state">선택좌석</span>
						<span class="seat_sold"></span><span class="seat_state">예매완료</span>
						<span class="seat_unable">X</span><span class="seat_state">선택불가</span>
						<!-- float 마감제 -->
						<div class="clear"></div>
					</div>
					<!-- 총 금액 안내 -->
					<div class="seats_price">
						<h4>선택좌석 : I9, I10</h4>
						<h3>총 금액 : 20,000원</h3>
					</div>
					<!-- 결제하기 버튼 -->
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

<!-- js 파일 적용 -->
<script type="text/javascript" src="booking_seats.js"></script>

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