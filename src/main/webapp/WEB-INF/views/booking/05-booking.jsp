<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../_inc/header.jsp"%>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/Booking_time.css?time=<%=System.currentTimeMillis()%>" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/Booking_seats.css?time=<%=System.currentTimeMillis()%>" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/Booking_payment.css?time=<%=System.currentTimeMillis()%>" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/Branch_yeti.css?time=<%=System.currentTimeMillis()%>" />
<!-- fakescroll css -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/plugins/fakescroll/fakescroll.css?time=<%=System.currentTimeMillis()%>" />
<!-- slick css -->
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

<title>상영선택 > 예매 | Cinephile</title>

<!-- content -->
<div id="content">
	<div class="booking_page">
		<!-- 예매단계 안내박스 -->
		<div class="booking_stage1">
			<ul>
				<li>01<br />상영시간</li>
				<li>02<br />좌석</li>
				<li>03<br />결제</li>
				<li>04<br />예매완료</li>
			</ul>
		</div>
		
		<!-- 예매영역 시작 -->
		<div class="booking_block">
			<!-- step 01 : 상영시간 -->
			<div class="booking_step1" style="display: block;">
				<!-- 영화관 선택 -->
				<div class="booking_branch">
					<!-- 타이틀 -->
					<div class="booking_title">
					영화관 선택
					</div>
					<!-- 지역 선택 -->
					<div class="choose_provincial">
						<ul>
							<li id="fav" data-log="${user}" data-id="${membersId}">자주 가는 영화관</li>
							<%-- get 파라미터 존재 시 css 처리 --%>
							<c:choose>
								<c:when test="${output[0].getProvNo()==10}">
									<li id="seoul2" style="background-color: white;">서울</li>
								</c:when>
								<c:otherwise>
									<li id="seoul2">서울</li>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${output[0].getProvNo()==20}">
									<li id="gyeonggi2" style="background-color: white;">경기</li>
								</c:when>
								<c:otherwise>
									<li id="gyeonggi2">경기</li>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${output[0].getProvNo()==30}">
									<li id="incheon2" style="background-color: white;">인천</li>
								</c:when>
								<c:otherwise>
									<li id="incheon2">인천</li>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${output[0].getProvNo()==40}">
									<li id="gangwon2" style="background-color: white;">강원</li>
								</c:when>
								<c:otherwise>
									<li id="gangwon2">강원</li>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${output[0].getProvNo()==50}">
									<li id="daejeon2" style="background-color: white;">대전</li>
								</c:when>
								<c:otherwise>
									<li id="daejeon2">대전</li>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${output[0].getProvNo()==60}">
									<li id="chungcheong2" style="background-color: white;">충청/세종</li>
								</c:when>
								<c:otherwise>
									<li id="chungcheong2">충청/세종</li>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${output[0].getProvNo()==70}">
									<li id="gwangju2" style="background-color: white;">광주</li>
								</c:when>
								<c:otherwise>
									<li id="gwangju2">광주</li>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${output[0].getProvNo()==80}">
									<li id="jeolla2" style="background-color: white;">전라</li>
								</c:when>
								<c:otherwise>
									<li id="jeolla2">전라</li>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${output[0].getProvNo()==90}">
									<li id="daegu2" style="background-color: white;">대구/경북</li>
								</c:when>
								<c:otherwise>
									<li id="daegu2">대구/경북</li>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${output[0].getProvNo()==100}">
									<li id="busan2" style="background-color: white;">부산/울산</li>
								</c:when>
								<c:otherwise>
									<li id="busan2">부산/울산</li>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${output[0].getProvNo()==110}">
									<li id="gyeongnam2" style="background-color: white;">경남</li>
								</c:when>
								<c:otherwise>
									<li id="gyeongnam2">경남</li>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${output[0].getProvNo()==120}">
									<li id="jeju2" style="background-color: white;">제주</li>
								</c:when>
								<c:otherwise>
									<li id="jeju2">제주</li>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
					
					<!-- 지점 선택 -->
					<div class="choose_branch">
						<ul id="branch_list">
							<c:forEach var="item" items="${output}" varStatus="status">
								<c:choose>
									<c:when test="${output2[0].getTheaterId()==item.theaterId}">
										<li class="branch_btn selected_theater" data-id="${item.theaterId}" style="color: red; font-weight: bold;">${item.brand}&nbsp;${item.branch}</li>
									</c:when>
									<c:otherwise>
										<li class="branch_btn" data-id="${item.theaterId}">${item.brand}&nbsp;${item.branch}</li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
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
						<c:choose>
							<c:when test="${output2==null}">
								<p style="text-align: center; margin-top: 105px;">영화관을 선택해주세요</p>
							</c:when>
							<c:otherwise>
								<ul>
								<c:forEach var="item" items="${output2}" varStatus="status">
									<c:choose>
										<c:when test="${output3[0].getMovieId()==item.movieId}">
											<li class="movie_btn selected_film" data-id="${item.movieId}" style="border: 2px solid black; background-color: white;">
										</c:when>
										<c:otherwise>
											<li class="movie_btn" data-id="${item.movieId}">
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${item.ageLimit==0}">
											<span class="label label-success">전체</span>
										</c:when>
										<c:when test="${item.ageLimit==1}">
											<span class="label label-primary">12</span>
										</c:when>
										<c:when test="${item.ageLimit==2}">
											<span class="label label-warning">15</span>
										</c:when>
										<c:otherwise>
											<span class="label label-danger">청불</span>
										</c:otherwise>
									</c:choose>
									&nbsp;${item.title}</li>
								</c:forEach>
								</ul>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<!-- 날짜, 시간 선택 -->
				<div class="booking_time">
					<!-- 타이틀 -->
					<div class="booking_title">
					날짜, 시간 선택
					</div>
					<!-- 날짜 선택 -->
					<div class="choose_day">
						<a class="btn weekday day0"></a>
						<a class="btn weekday day1"></a>
						<a class="btn weekday day2"></a>
						<a class="btn weekday day3"></a>
						<a class="btn weekday day4"></a>
						<a class="btn weekday day5"></a>
						<a class="btn weekday day6"></a>
						<a class="btn weekday day7"></a>
						<a class="btn weekday day8"></a>
						<a class="btn weekday day9"></a>
						<a class="btn weekday day10"></a>
						<a class="btn weekday day11"></a>
						<a class="btn weekday day12"></a>
						<a class="btn weekday day13"></a>
					</div>
					<!-- 시간 선택 -->
					<div class="choose_time">
						<c:choose>
							<c:when test="${output3==null}">
								<p style="text-align: center;">영화를 선택해주세요</p>
							</c:when>
							<c:otherwise>
								<div class="chosen_film">
									<c:choose>
										<c:when test="${output3[0].getAgeLimit()==0}">
											<span class="label label-success">전체</span>
										</c:when>
										<c:when test="${output3[0].getAgeLimit()==1}">
											<span class="label label-primary">12</span>
										</c:when>
										<c:when test="${output3[0].getAgeLimit()==2}">
											<span class="label label-warning">15</span>
										</c:when>
										<c:otherwise>
											<span class="label label-danger">청불</span>
										</c:otherwise>
									</c:choose>
									&nbsp;${output3[0].getTitle()}</li>
								</div>
								<ul>
								<c:forEach var="item" items="${output3}" varStatus="status">
									<c:choose>
										<c:when test="${output4.getTimetableId()==item.timetableId}">
											<li class="table_btn selected_table" data-id="${item.timetableId}" data-date="${output4.getScrnDay()}" data-toggle="tooltip" data-placement="top" title="종료 ${item.scrnEnd}" style="background-color: #eee;">
												<span class="start_time">${item.scrnStart}</span><br /><span class="seats">${244-item.seatCount}&nbsp;/&nbsp;252</span>&nbsp;<span class="room_no">${item.roomNo}관</span>
											</li>
										</c:when>
										<c:otherwise>
											<li class="table_btn" data-id="${item.timetableId}" data-toggle="tooltip" data-placement="top" title="종료 ${item.scrnEnd}">
												<span class="start_time">${item.scrnStart}</span><br /><span class="seats">${244-item.seatCount}&nbsp;/&nbsp;252</span>&nbsp;<span class="room_no">${item.roomNo}관</span>
											</li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								</ul>
							</c:otherwise>
						</c:choose>
					</div>
					<!-- 좌석선택 버튼 -->
					<%-- 로그인 여부에 따라 좌석선택 버튼 동작 차등 부여 --%>
					<c:choose>
						<c:when test="${user==1}">
						<div class="button_area">
							<c:choose>
								<c:when test="${output4==null}">
									<button type="submit" id="go_to_next" class="go_to_next" data-user="1"><i class="fas fa-hand-point-right"></i><br />좌석선택</button>
								</c:when>
								<c:otherwise>
									<button type="submit" id="go_to_next" class="go_to_next active" data-user="1"><i class="fas fa-hand-point-right"></i><br />좌석선택</button>
								</c:otherwise>
							</c:choose>
			            </div>
			            <!-- float 마감제 -->
			            <div class="clear"></div>
						</c:when>
			            <c:otherwise>
			            	<div class="button_area">
			            		<c:choose>
			            			<c:when test="${output4==null}">
			            				<button id="go_to_next" class="go_to_next" data-user="0" data-toggle="modal"><i class="fas fa-hand-point-right"></i><br />좌석선택</button>
			            			</c:when>
			            			<c:otherwise>
			            				<button id="go_to_next" class="go_to_next active" data-user="0" data-toggle="modal" href="#modal-login"><i class="fas fa-hand-point-right"></i><br />좌석선택</button>
			            			</c:otherwise>
			            		</c:choose>
			            	</div>
				            <!-- float 마감제 -->
				            <div class="clear"></div>
				            <!-- 로그인 modal 창 -->
				            <div class="modal fade" id="modal-login">
					            <div class="modal-dialog modal-sm">
					                <div class="modal-content">
					                    <!-- head -->
					                    <div class="modal-header">
					                        <button type="button" class="close" data-dismiss="modal">&times;</button>
					                        <h4 class="modal-title">로그인</h4>
					                    </div>
					                    <!-- body -->
					                    <div class="modal-body">
					                    	<span class="modal-msg">로그인하셔야 예매가 가능합니다</span>
					                    	<form id="login_modal">
						                        <div class="form-group" style="margin-top: 10px">
						                            <label for="user_id">아이디</label>
						                            <input type="text" name="user_id" id="user_id" class="form-control" />
						                            <label for="user_pw">비밀번호</label>
						                            <input type="password" name="user_pw" id="user_pw" class="form-control" />
						                        </div>
						                        <button type="submit" class="btn btn-primary">로그인</button>
					                        </form>
					                    </div>
					                </div>
					            </div>
				        	</div>
				        </div>
			            </c:otherwise>
		            </c:choose>
		        <!-- float 마감제 -->
		        <div class="clear"></div>
	        <!-- step 01 끝 -->
	        </div>
	      	</div>
	        <!-- step 02 : 좌석선택 -->
	        <div class="booking_step2" style="display: none;">
	        	<!-- 인원 / 좌석 선택 영역 -->
				<div class="booking_seats">
					<!-- 상단 제목 -->
					<h4 class="booking_title">인원 / 좌석 선택</h4>
					
					<!-- 인원 선택 박스 -->
					<div class="booking_people">
						<!-- 상영시간 선택 내역 안내 부분 -->
						<div class="chosen_time">
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
								
								<a class="seat_btn seat_able" data-seat="A1" style="left:327px; top:0px;"><span class="seat_num">1</span></a>
								<a class="seat_btn seat_able" data-seat="A2" style="left:349px; top:0px;"><span class="seat_num">2</span></a>
								<a class="seat_btn seat_able" data-seat="A3" style="left:371px; top:0px;"><span class="seat_num">3</span></a>
								<a class="seat_btn seat_able" data-seat="A4" style="left:393px; top:0px;"><span class="seat_num">4</span></a>
								
								<a class="seat_btn seat_able" data-seat="A5" style="left:445px; top:0px;"><span class="seat_num">5</span></a>
								<a class="seat_btn seat_able" data-seat="A6" style="left:467px; top:0px;"><span class="seat_num">6</span></a>
								<a class="seat_btn seat_able" data-seat="A7" style="left:489px; top:0px;"><span class="seat_num">7</span></a>
								<a class="seat_btn seat_able" data-seat="A8" style="left:511px; top:0px;"><span class="seat_num">8</span></a>					
								<a class="seat_btn seat_able" data-seat="A9" style="left:533px; top:0px;"><span class="seat_num">9</span></a>
								<a class="seat_btn seat_able" data-seat="A10" style="left:555px; top:0px;"><span class="seat_num">10</span></a>					
								<a class="seat_btn seat_able" data-seat="A11" style="left:577px; top:0px;"><span class="seat_num">11</span></a>
								<a class="seat_btn seat_able" data-seat="A12" style="left:599px; top:0px;"><span class="seat_num">12</span></a>
								<a class="seat_btn seat_able" data-seat="A13" style="left:621px; top:0px;"><span class="seat_num">13</span></a>
								<a class="seat_btn seat_able" data-seat="A14" style="left:643px; top:0px;"><span class="seat_num">14</span></a>
								
								<a class="seat_btn seat_able" data-seat="A15" style="left:695px; top:0px;"><span class="seat_num">15</span></a>
								<a class="seat_btn seat_able" data-seat="A16" style="left:717px; top:0px;"><span class="seat_num">16</span></a>
								<a class="seat_btn seat_able" data-seat="A17" style="left:739px; top:0px;"><span class="seat_num">17</span></a>
								<a class="seat_btn seat_able" data-seat="A18" style="left:761px; top:0px;"><span class="seat_num">18</span></a>
								
								<!-- B열 -->
								<span class="seat_row" style="left:250px; top:21px;">B</span>
								
								<a class="seat_btn seat_able" data-seat="B1" style="left:327px; top:21px;"><span class="seat_num">1</span></a>
								<a class="seat_btn seat_able" data-seat="B2" style="left:349px; top:21px;"><span class="seat_num">2</span></a>
								<a class="seat_btn seat_able" data-seat="B3" style="left:371px; top:21px;"><span class="seat_num">3</span></a>
								<a class="seat_btn seat_able" data-seat="B4" style="left:393px; top:21px;"><span class="seat_num">4</span></a>
								
								<a class="seat_btn seat_able" data-seat="B5" style="left:445px; top:21px;"><span class="seat_num">5</span></a>
								<a class="seat_btn seat_able" data-seat="B6" style="left:467px; top:21px;"><span class="seat_num">6</span></a>
								<a class="seat_btn seat_able" data-seat="B7" style="left:489px; top:21px;"><span class="seat_num">7</span></a>
								<a class="seat_btn seat_able" data-seat="B8" style="left:511px; top:21px;"><span class="seat_num">8</span></a>					
								<a class="seat_btn seat_able" data-seat="B9" style="left:533px; top:21px;"><span class="seat_num">9</span></a>
								<a class="seat_btn seat_able" data-seat="B10" style="left:555px; top:21px;"><span class="seat_num">10</span></a>					
								<a class="seat_btn seat_able" data-seat="B11" style="left:577px; top:21px;"><span class="seat_num">11</span></a>
								<a class="seat_btn seat_able" data-seat="B12" style="left:599px; top:21px;"><span class="seat_num">12</span></a>
								<a class="seat_btn seat_able" data-seat="B13" style="left:621px; top:21px;"><span class="seat_num">13</span></a>
								<a class="seat_btn seat_able" data-seat="B14" style="left:643px; top:21px;"><span class="seat_num">14</span></a>
								
								<a class="seat_btn seat_able" data-seat="B15" style="left:695px; top:21px;"><span class="seat_num">15</span></a>
								<a class="seat_btn seat_able" data-seat="B16" style="left:717px; top:21px;"><span class="seat_num">16</span></a>
								<a class="seat_btn seat_able" data-seat="B17" style="left:739px; top:21px;"><span class="seat_num">17</span></a>
								<a class="seat_btn seat_able" data-seat="B18" style="left:761px; top:21px;"><span class="seat_num">18</span></a>
								
								<!-- C열 -->
								<span class="seat_row" style="left:250px; top:42px;">C</span>
								
								<a class="seat_btn seat_able" data-seat="C1" style="left:327px; top:42px;"><span class="seat_num">1</span></a>
								<a class="seat_btn seat_able" data-seat="C2" style="left:349px; top:42px;"><span class="seat_num">2</span></a>
								<a class="seat_btn seat_able" data-seat="C3" style="left:371px; top:42px;"><span class="seat_num">3</span></a>
								<a class="seat_btn seat_able" data-seat="C4" style="left:393px; top:42px;"><span class="seat_num">4</span></a>
								
								<a class="seat_btn seat_able" data-seat="C5" style="left:445px; top:42px;"><span class="seat_num">5</span></a>
								<a class="seat_btn seat_able" data-seat="C6" style="left:467px; top:42px;"><span class="seat_num">6</span></a>
								<a class="seat_btn seat_able" data-seat="C7" style="left:489px; top:42px;"><span class="seat_num">7</span></a>
								<a class="seat_btn seat_able" data-seat="C8" style="left:511px; top:42px;"><span class="seat_num">8</span></a>					
								<a class="seat_btn seat_able" data-seat="C9" style="left:533px; top:42px;"><span class="seat_num">9</span></a>
								<a class="seat_btn seat_able" data-seat="C10" style="left:555px; top:42px;"><span class="seat_num">10</span></a>					
								<a class="seat_btn seat_able" data-seat="C11" style="left:577px; top:42px;"><span class="seat_num">11</span></a>
								<a class="seat_btn seat_able" data-seat="C12" style="left:599px; top:42px;"><span class="seat_num">12</span></a>
								<a class="seat_btn seat_able" data-seat="C13" style="left:621px; top:42px;"><span class="seat_num">13</span></a>
								<a class="seat_btn seat_able" data-seat="C14" style="left:643px; top:42px;"><span class="seat_num">14</span></a>
								
								<a class="seat_btn seat_able" data-seat="C15" style="left:695px; top:42px;"><span class="seat_num">15</span></a>
								<a class="seat_btn seat_able" data-seat="C16" style="left:717px; top:42px;"><span class="seat_num">16</span></a>
								<a class="seat_btn seat_able" data-seat="C17" style="left:739px; top:42px;"><span class="seat_num">17</span></a>
								<a class="seat_btn seat_able" data-seat="C18" style="left:761px; top:42px;"><span class="seat_num">18</span></a>
								
								<!-- D열 -->
								<span class="seat_row" style="left:250px; top:63px;">D</span>
								
								<a class="seat_btn seat_able" data-seat="D1" style="left:327px; top:63px;"><span class="seat_num">1</span></a>
								<a class="seat_btn seat_able" data-seat="D2" style="left:349px; top:63px;"><span class="seat_num">2</span></a>
								<a class="seat_btn seat_able" data-seat="D3" style="left:371px; top:63px;"><span class="seat_num">3</span></a>
								<a class="seat_btn seat_able" data-seat="D4" style="left:393px; top:63px;"><span class="seat_num">4</span></a>
								
								<a class="seat_btn seat_able" data-seat="D5" style="left:445px; top:63px;"><span class="seat_num">5</span></a>
								<a class="seat_btn seat_able" data-seat="D6" style="left:467px; top:63px;"><span class="seat_num">6</span></a>
								<a class="seat_btn seat_able" data-seat="D7" style="left:489px; top:63px;"><span class="seat_num">7</span></a>
								<a class="seat_btn seat_able" data-seat="D8" style="left:511px; top:63px;"><span class="seat_num">8</span></a>					
								<a class="seat_btn seat_able" data-seat="D9" style="left:533px; top:63px;"><span class="seat_num">9</span></a>
								<a class="seat_btn seat_able" data-seat="D10" style="left:555px; top:63px;"><span class="seat_num">10</span></a>					
								<a class="seat_btn seat_able" data-seat="D11" style="left:577px; top:63px;"><span class="seat_num">11</span></a>
								<a class="seat_btn seat_able" data-seat="D12" style="left:599px; top:63px;"><span class="seat_num">12</span></a>
								<a class="seat_btn seat_able" data-seat="D13" style="left:621px; top:63px;"><span class="seat_num">13</span></a>
								<a class="seat_btn seat_able" data-seat="D14" style="left:643px; top:63px;"><span class="seat_num">14</span></a>
								
								<a class="seat_btn seat_able" data-seat="D15" style="left:695px; top:63px;"><span class="seat_num">15</span></a>
								<a class="seat_btn seat_able" data-seat="D16" style="left:717px; top:63px;"><span class="seat_num">16</span></a>
								<a class="seat_btn seat_able" data-seat="D17" style="left:739px; top:63px;"><span class="seat_num">17</span></a>
								<a class="seat_btn seat_able" data-seat="D18" style="left:761px; top:63px;"><span class="seat_num">18</span></a>
								
								<!-- E열 -->
								<span class="seat_row" style="left:250px; top:84px;">E</span>
								
								<a class="seat_btn seat_able" data-seat="E1" style="left:327px; top:84px;"><span class="seat_num">1</span></a>
								<a class="seat_btn seat_able" data-seat="E2" style="left:349px; top:84px;"><span class="seat_num">2</span></a>
								<a class="seat_btn seat_able" data-seat="E3" style="left:371px; top:84px;"><span class="seat_num">3</span></a>
								<a class="seat_btn seat_able" data-seat="E4" style="left:393px; top:84px;"><span class="seat_num">4</span></a>
								
								<a class="seat_btn seat_able" data-seat="E5" style="left:445px; top:84px;"><span class="seat_num">5</span></a>
								<a class="seat_btn seat_able" data-seat="E6" style="left:467px; top:84px;"><span class="seat_num">6</span></a>
								<a class="seat_btn seat_able" data-seat="E7" style="left:489px; top:84px;"><span class="seat_num">7</span></a>
								<a class="seat_btn seat_able" data-seat="E8" style="left:511px; top:84px;"><span class="seat_num">8</span></a>					
								<a class="seat_btn seat_able" data-seat="E9" style="left:533px; top:84px;"><span class="seat_num">9</span></a>
								<a class="seat_btn seat_able" data-seat="E10" style="left:555px; top:84px;"><span class="seat_num">10</span></a>					
								<a class="seat_btn seat_able" data-seat="E11" style="left:577px; top:84px;"><span class="seat_num">11</span></a>
								<a class="seat_btn seat_able" data-seat="E12" style="left:599px; top:84px;"><span class="seat_num">12</span></a>
								<a class="seat_btn seat_able" data-seat="E13" style="left:621px; top:84px;"><span class="seat_num">13</span></a>
								<a class="seat_btn seat_able" data-seat="E14" style="left:643px; top:84px;"><span class="seat_num">14</span></a>
								
								<a class="seat_btn seat_able" data-seat="E15" style="left:695px; top:84px;"><span class="seat_num">15</span></a>
								<a class="seat_btn seat_able" data-seat="E16" style="left:717px; top:84px;"><span class="seat_num">16</span></a>
								<a class="seat_btn seat_able" data-seat="E17" style="left:739px; top:84px;"><span class="seat_num">17</span></a>
								<a class="seat_btn seat_able" data-seat="E18" style="left:761px; top:84px;"><span class="seat_num">18</span></a>
								
								<!-- F열 -->
								<span class="seat_row" style="left:250px; top:105px;">F</span>
								
								<a class="seat_btn seat_able" data-seat="F1" style="left:327px; top:105px;"><span class="seat_num">1</span></a>
								<a class="seat_btn seat_able" data-seat="F2" style="left:349px; top:105px;"><span class="seat_num">2</span></a>
								<a class="seat_btn seat_able" data-seat="F3" style="left:371px; top:105px;"><span class="seat_num">3</span></a>
								<a class="seat_btn seat_able" data-seat="F4" style="left:393px; top:105px;"><span class="seat_num">4</span></a>
								
								<a class="seat_btn seat_able" data-seat="F5" style="left:445px; top:105px;"><span class="seat_num">5</span></a>
								<a class="seat_btn seat_able" data-seat="F6" style="left:467px; top:105px;"><span class="seat_num">6</span></a>
								<a class="seat_btn seat_able" data-seat="F7" style="left:489px; top:105px;"><span class="seat_num">7</span></a>
								<a class="seat_btn seat_able" data-seat="F8" style="left:511px; top:105px;"><span class="seat_num">8</span></a>					
								<a class="seat_btn seat_able" data-seat="F9" style="left:533px; top:105px;"><span class="seat_num">9</span></a>
								<a class="seat_btn seat_able" data-seat="F10" style="left:555px; top:105px;"><span class="seat_num">10</span></a>					
								<a class="seat_btn seat_able" data-seat="F11" style="left:577px; top:105px;"><span class="seat_num">11</span></a>
								<a class="seat_btn seat_able" data-seat="F12" style="left:599px; top:105px;"><span class="seat_num">12</span></a>
								<a class="seat_btn seat_able" data-seat="F13" style="left:621px; top:105px;"><span class="seat_num">13</span></a>
								<a class="seat_btn seat_able" data-seat="F14" style="left:643px; top:105px;"><span class="seat_num">14</span></a>
								
								<a class="seat_btn seat_able" data-seat="F15" style="left:695px; top:105px;"><span class="seat_num">15</span></a>
								<a class="seat_btn seat_able" data-seat="F16" style="left:717px; top:105px;"><span class="seat_num">16</span></a>
								<a class="seat_btn seat_able" data-seat="F17" style="left:739px; top:105px;"><span class="seat_num">17</span></a>
								<a class="seat_btn seat_able" data-seat="F18" style="left:761px; top:105px;"><span class="seat_num">18</span></a>
								
								<!-- G열 -->
								<span class="seat_row" style="left:250px; top:126px;">G</span>
								
								<a class="seat_btn seat_able" data-seat="G1" style="left:327px; top:126px;"><span class="seat_num">1</span></a>
								<a class="seat_btn seat_able" data-seat="G2" style="left:349px; top:126px;"><span class="seat_num">2</span></a>
								<a class="seat_btn seat_able" data-seat="G3" style="left:371px; top:126px;"><span class="seat_num">3</span></a>
								<a class="seat_btn seat_able" data-seat="G4" style="left:393px; top:126px;"><span class="seat_num">4</span></a>
								
								<a class="seat_btn seat_able" data-seat="G5" style="left:445px; top:126px;"><span class="seat_num">5</span></a>
								<a class="seat_btn seat_able" data-seat="G6" style="left:467px; top:126px;"><span class="seat_num">6</span></a>
								<a class="seat_btn seat_able" data-seat="G7" style="left:489px; top:126px;"><span class="seat_num">7</span></a>
								<a class="seat_btn seat_able" data-seat="G8" style="left:511px; top:126px;"><span class="seat_num">8</span></a>					
								<a class="seat_btn seat_able" data-seat="G9" style="left:533px; top:126px;"><span class="seat_num">9</span></a>
								<a class="seat_btn seat_able" data-seat="G10" style="left:555px; top:126px;"><span class="seat_num">10</span></a>					
								<a class="seat_btn seat_able" data-seat="G11" style="left:577px; top:126px;"><span class="seat_num">11</span></a>
								<a class="seat_btn seat_able" data-seat="G12" style="left:599px; top:126px;"><span class="seat_num">12</span></a>
								<a class="seat_btn seat_able" data-seat="G13" style="left:621px; top:126px;"><span class="seat_num">13</span></a>
								<a class="seat_btn seat_able" data-seat="G14" style="left:643px; top:126px;"><span class="seat_num">14</span></a>
								
								<a class="seat_btn seat_able" data-seat="G15" style="left:695px; top:126px;"><span class="seat_num">15</span></a>
								<a class="seat_btn seat_able" data-seat="G16" style="left:717px; top:126px;"><span class="seat_num">16</span></a>
								<a class="seat_btn seat_able" data-seat="G17" style="left:739px; top:126px;"><span class="seat_num">17</span></a>
								<a class="seat_btn seat_able" data-seat="G18" style="left:761px; top:126px;"><span class="seat_num">18</span></a>
								
								<!-- H열 -->
								<span class="seat_row" style="left:250px; top:147px;">H</span>
								
								<a class="seat_btn seat_able" data-seat="H1" style="left:327px; top:147px;"><span class="seat_num">1</span></a>
								<a class="seat_btn seat_able" data-seat="H2" style="left:349px; top:147px;"><span class="seat_num">2</span></a>
								<a class="seat_btn seat_able" data-seat="H3" style="left:371px; top:147px;"><span class="seat_num">3</span></a>
								<a class="seat_btn seat_able" data-seat="H4" style="left:393px; top:147px;"><span class="seat_num">4</span></a>
								
								<a class="seat_btn seat_able" data-seat="H5" style="left:445px; top:147px;"><span class="seat_num">5</span></a>
								<a class="seat_btn seat_able" data-seat="H6" style="left:467px; top:147px;"><span class="seat_num">6</span></a>
								<a class="seat_btn seat_able" data-seat="H7" style="left:489px; top:147px;"><span class="seat_num">7</span></a>
								<a class="seat_btn seat_sold" data-seat="H8" style="left:511px; top:147px;"><span class="seat_num">8</span></a>					
								<a class="seat_btn seat_sold" data-seat="H9" style="left:533px; top:147px;"><span class="seat_num">9</span></a>
								<a class="seat_btn seat_sold" data-seat="H10" style="left:555px; top:147px;"><span class="seat_num">10</span></a>					
								<a class="seat_btn seat_sold" data-seat="H11" style="left:577px; top:147px;"><span class="seat_num">11</span></a>
								<a class="seat_btn seat_able" data-seat="H12" style="left:599px; top:147px;"><span class="seat_num">12</span></a>
								<a class="seat_btn seat_able" data-seat="H13" style="left:621px; top:147px;"><span class="seat_num">13</span></a>
								<a class="seat_btn seat_able" data-seat="H14" style="left:643px; top:147px;"><span class="seat_num">14</span></a>
								
								<a class="seat_btn seat_able" data-seat="H15" style="left:695px; top:147px;"><span class="seat_num">15</span></a>
								<a class="seat_btn seat_able" data-seat="H16" style="left:717px; top:147px;"><span class="seat_num">16</span></a>
								<a class="seat_btn seat_able" data-seat="H17" style="left:739px; top:147px;"><span class="seat_num">17</span></a>
								<a class="seat_btn seat_able" data-seat="H18" style="left:761px; top:147px;"><span class="seat_num">18</span></a>
								
								<!-- I열 -->
								<span class="seat_row" style="left:250px; top:168px;">I</span>
								
								<a class="seat_btn seat_able" data-seat="I1" style="left:327px; top:168px;"><span class="seat_num">1</span></a>
								<a class="seat_btn seat_able" data-seat="I2" style="left:349px; top:168px;"><span class="seat_num">2</span></a>
								<a class="seat_btn seat_able" data-seat="I3" style="left:371px; top:168px;"><span class="seat_num">3</span></a>
								<a class="seat_btn seat_able" data-seat="I4" style="left:393px; top:168px;"><span class="seat_num">4</span></a>
								
								<a class="seat_btn seat_able" data-seat="I5" style="left:445px; top:168px;"><span class="seat_num">5</span></a>
								<a class="seat_btn seat_able" data-seat="I6" style="left:467px; top:168px;"><span class="seat_num">6</span></a>
								<a class="seat_btn seat_able" data-seat="I7" style="left:489px; top:168px;"><span class="seat_num">7</span></a>
								<a class="seat_btn seat_able" data-seat="I8" style="left:511px; top:168px;"><span class="seat_num">8</span></a>					
								<a class="seat_btn seat_able" data-seat="I9" style="left:533px; top:168px;"><span class="seat_num">9</span></a>
								<a class="seat_btn seat_able" data-seat="I10" style="left:555px; top:168px;"><span class="seat_num">10</span></a>					
								<a class="seat_btn seat_able" data-seat="I11" style="left:577px; top:168px;"><span class="seat_num">11</span></a>
								<a class="seat_btn seat_able" data-seat="I12" style="left:599px; top:168px;"><span class="seat_num">12</span></a>
								<a class="seat_btn seat_able" data-seat="I13" style="left:621px; top:168px;"><span class="seat_num">13</span></a>
								<a class="seat_btn seat_able" data-seat="I14" style="left:643px; top:168px;"><span class="seat_num">14</span></a>
								
								<a class="seat_btn seat_able" data-seat="I15" style="left:695px; top:168px;"><span class="seat_num">15</span></a>
								<a class="seat_btn seat_able" data-seat="I16" style="left:717px; top:168px;"><span class="seat_num">16</span></a>
								<a class="seat_btn seat_able" data-seat="I17" style="left:739px; top:168px;"><span class="seat_num">17</span></a>
								<a class="seat_btn seat_able" data-seat="I18" style="left:761px; top:168px;"><span class="seat_num">18</span></a>
								
								<!-- J열 -->
								<span class="seat_row" style="left:250px; top:189px;">J</span>
								
								<a class="seat_btn seat_able" data-seat="J1" style="left:327px; top:189px;"><span class="seat_num">1</span></a>
								<a class="seat_btn seat_able" data-seat="J2" style="left:349px; top:189px;"><span class="seat_num">2</span></a>
								<a class="seat_btn seat_able" data-seat="J3" style="left:371px; top:189px;"><span class="seat_num">3</span></a>
								<a class="seat_btn seat_able" data-seat="J4" style="left:393px; top:189px;"><span class="seat_num">4</span></a>
								
								<a class="seat_btn seat_able" data-seat="J5" style="left:445px; top:189px;"><span class="seat_num">5</span></a>
								<a class="seat_btn seat_able" data-seat="J6" style="left:467px; top:189px;"><span class="seat_num">6</span></a>
								<a class="seat_btn seat_able" data-seat="J7" style="left:489px; top:189px;"><span class="seat_num">7</span></a>
								<a class="seat_btn seat_able" data-seat="J8" style="left:511px; top:189px;"><span class="seat_num">8</span></a>					
								<a class="seat_btn seat_able" data-seat="J9" style="left:533px; top:189px;"><span class="seat_num">9</span></a>
								<a class="seat_btn seat_able" data-seat="J10" style="left:555px; top:189px;"><span class="seat_num">10</span></a>					
								<a class="seat_btn seat_able" data-seat="J11" style="left:577px; top:189px;"><span class="seat_num">11</span></a>
								<a class="seat_btn seat_able" data-seat="J12" style="left:599px; top:189px;"><span class="seat_num">12</span></a>
								<a class="seat_btn seat_able" data-seat="J13" style="left:621px; top:189px;"><span class="seat_num">13</span></a>
								<a class="seat_btn seat_able" data-seat="J14" style="left:643px; top:189px;"><span class="seat_num">14</span></a>
								
								<a class="seat_btn seat_able" data-seat="J15" style="left:695px; top:189px;"><span class="seat_num">15</span></a>
								<a class="seat_btn seat_able" data-seat="J16" style="left:717px; top:189px;"><span class="seat_num">16</span></a>
								<a class="seat_btn seat_able" data-seat="J17" style="left:739px; top:189px;"><span class="seat_num">17</span></a>
								<a class="seat_btn seat_able" data-seat="J18" style="left:761px; top:189px;"><span class="seat_num">18</span></a>
								
								<!-- K열 -->
								<span class="seat_row" style="left:250px; top:210px;">K</span>
								
								<a class="seat_btn seat_able" data-seat="K1" style="left:327px; top:210px;"><span class="seat_num">1</span></a>
								<a class="seat_btn seat_able" data-seat="K2" style="left:349px; top:210px;"><span class="seat_num">2</span></a>
								<a class="seat_btn seat_able" data-seat="K3" style="left:371px; top:210px;"><span class="seat_num">3</span></a>
								<a class="seat_btn seat_able" data-seat="K4" style="left:393px; top:210px;"><span class="seat_num">4</span></a>
								
								<a class="seat_btn seat_able" data-seat="K5" style="left:445px; top:210px;"><span class="seat_num">5</span></a>
								<a class="seat_btn seat_able" data-seat="K6" style="left:467px; top:210px;"><span class="seat_num">6</span></a>
								<a class="seat_btn seat_able" data-seat="K7" style="left:489px; top:210px;"><span class="seat_num">7</span></a>
								<a class="seat_btn seat_able" data-seat="K8" style="left:511px; top:210px;"><span class="seat_num">8</span></a>					
								<a class="seat_btn seat_able" data-seat="K9" style="left:533px; top:210px;"><span class="seat_num">9</span></a>
								<a class="seat_btn seat_able" data-seat="K10" style="left:555px; top:210px;"><span class="seat_num">10</span></a>					
								<a class="seat_btn seat_able" data-seat="K11" style="left:577px; top:210px;"><span class="seat_num">11</span></a>
								<a class="seat_btn seat_able" data-seat="K12" style="left:599px; top:210px;"><span class="seat_num">12</span></a>
								<a class="seat_btn seat_able" data-seat="K13" style="left:621px; top:210px;"><span class="seat_num">13</span></a>
								<a class="seat_btn seat_able" data-seat="K14" style="left:643px; top:210px;"><span class="seat_num">14</span></a>
								
								<a class="seat_btn seat_able" data-seat="K15" style="left:695px; top:210px;"><span class="seat_num">15</span></a>
								<a class="seat_btn seat_able" data-seat="K16" style="left:717px; top:210px;"><span class="seat_num">16</span></a>
								<a class="seat_btn seat_able" data-seat="K17" style="left:739px; top:210px;"><span class="seat_num">17</span></a>
								<a class="seat_btn seat_able" data-seat="K18" style="left:761px; top:210px;"><span class="seat_num">18</span></a>
								
								<!-- L열 -->
								<span class="seat_row" style="left:250px; top:232px;">L</span>
								
								<a class="seat_btn seat_able" data-seat="L1" style="left:327px; top:232px;"><span class="seat_num">1</span></a>
								<a class="seat_btn seat_able" data-seat="L2" style="left:349px; top:232px;"><span class="seat_num">2</span></a>
								<a class="seat_btn seat_able" data-seat="L3" style="left:371px; top:232px;"><span class="seat_num">3</span></a>
								<a class="seat_btn seat_able" data-seat="L4" style="left:393px; top:232px;"><span class="seat_num">4</span></a>
								
								<a class="seat_btn seat_able" data-seat="L5" style="left:445px; top:232px;"><span class="seat_num">5</span></a>
								<a class="seat_btn seat_able" data-seat="L6" style="left:467px; top:232px;"><span class="seat_num">6</span></a>
								<a class="seat_btn seat_able" data-seat="L7" style="left:489px; top:232px;"><span class="seat_num">7</span></a>
								<a class="seat_btn seat_able" data-seat="L8" style="left:511px; top:232px;"><span class="seat_num">8</span></a>					
								<a class="seat_btn seat_able" data-seat="L9" style="left:533px; top:232px;"><span class="seat_num">9</span></a>
								<a class="seat_btn seat_able" data-seat="L10" style="left:555px; top:232px;"><span class="seat_num">10</span></a>					
								<a class="seat_btn seat_able" data-seat="L11" style="left:577px; top:232px;"><span class="seat_num">11</span></a>
								<a class="seat_btn seat_able" data-seat="L12" style="left:599px; top:232px;"><span class="seat_num">12</span></a>
								<a class="seat_btn seat_able" data-seat="L13" style="left:621px; top:232px;"><span class="seat_num">13</span></a>
								<a class="seat_btn seat_able" data-seat="L14" style="left:643px; top:232px;"><span class="seat_num">14</span></a>
								
								<a class="seat_btn seat_able" data-seat="L15" style="left:695px; top:232px;"><span class="seat_num">15</span></a>
								<a class="seat_btn seat_able" data-seat="L16" style="left:717px; top:232px;"><span class="seat_num">16</span></a>
								<a class="seat_btn seat_able" data-seat="L17" style="left:739px; top:232px;"><span class="seat_num">17</span></a>
								<a class="seat_btn seat_able" data-seat="L18" style="left:761px; top:232px;"><span class="seat_num">18</span></a>
								
								<!-- M열 -->
								<span class="seat_row" style="left:250px; top:253px;">M</span>
								
								<a class="seat_btn seat_able" data-seat="M1" style="left:327px; top:253px;"><span class="seat_num">1</span></a>
								<a class="seat_btn seat_able" data-seat="M2" style="left:349px; top:253px;"><span class="seat_num">2</span></a>
								<a class="seat_btn seat_able" data-seat="M3" style="left:371px; top:253px;"><span class="seat_num">3</span></a>
								<a class="seat_btn seat_able" data-seat="M4" style="left:393px; top:253px;"><span class="seat_num">4</span></a>
								
								<a class="seat_btn seat_able" data-seat="M5" style="left:445px; top:253px;"><span class="seat_num">5</span></a>
								<a class="seat_btn seat_able" data-seat="M6" style="left:467px; top:253px;"><span class="seat_num">6</span></a>
								<a class="seat_btn seat_able" data-seat="M7" style="left:489px; top:253px;"><span class="seat_num">7</span></a>
								<a class="seat_btn seat_able" data-seat="M8" style="left:511px; top:253px;"><span class="seat_num">8</span></a>					
								<a class="seat_btn seat_able" data-seat="M9" style="left:533px; top:253px;"><span class="seat_num">9</span></a>
								<a class="seat_btn seat_able" data-seat="M10" style="left:555px; top:253px;"><span class="seat_num">10</span></a>					
								<a class="seat_btn seat_able" data-seat="M11" style="left:577px; top:253px;"><span class="seat_num">11</span></a>
								<a class="seat_btn seat_able" data-seat="M12" style="left:599px; top:253px;"><span class="seat_num">12</span></a>
								<a class="seat_btn seat_able" data-seat="M13" style="left:621px; top:253px;"><span class="seat_num">13</span></a>
								<a class="seat_btn seat_able" data-seat="M14" style="left:643px; top:253px;"><span class="seat_num">14</span></a>
								
								<a class="seat_btn seat_able" data-seat="M15" style="left:695px; top:253px;"><span class="seat_num">15</span></a>
								<a class="seat_btn seat_able" data-seat="M16" style="left:717px; top:253px;"><span class="seat_num">16</span></a>
								<a class="seat_btn seat_able" data-seat="M17" style="left:739px; top:253px;"><span class="seat_num">17</span></a>
								<a class="seat_btn seat_able" data-seat="M18" style="left:761px; top:253px;"><span class="seat_num">18</span></a>
								
								<!-- N열 -->
								<span class="seat_row" style="left:250px; top:274px;">N</span>
								
								<a class="seat_btn seat_unable" data-seat="N1" style="left:327px; top:274px;"><span class="seat_num">1</span></a>
								<a class="seat_btn seat_unable" data-seat="N2" style="left:349px; top:274px;"><span class="seat_num">2</span></a>
								<a class="seat_btn seat_unable" data-seat="N3" style="left:371px; top:274px;"><span class="seat_num">3</span></a>
								<a class="seat_btn seat_unable" data-seat="N4" style="left:393px; top:274px;"><span class="seat_num">4</span></a>
								
								<a class="seat_btn ds seat_disabled" data-seat="N5" style="left:445px; top:274px;"><span class="seat_num">5</span></a>
								<a class="seat_btn ds seat_disabled" data-seat="N6" style="left:467px; top:274px;"><span class="seat_num">6</span></a>
								<a class="seat_btn ds seat_disabled" data-seat="N7" style="left:489px; top:274px;"><span class="seat_num">7</span></a>
								<a class="seat_btn ds seat_disabled" data-seat="N8" style="left:511px; top:274px;"><span class="seat_num">8</span></a>					
								<a class="seat_btn seat_able" data-seat="N9" style="left:533px; top:274px;"><span class="seat_num">9</span></a>
								<a class="seat_btn seat_able" data-seat="N10" style="left:555px; top:274px;"><span class="seat_num">10</span></a>					
								<a class="seat_btn seat_able" data-seat="N11" style="left:577px; top:274px;"><span class="seat_num">11</span></a>
								<a class="seat_btn seat_able" data-seat="N12" style="left:599px; top:274px;"><span class="seat_num">12</span></a>
								<a class="seat_btn seat_able" data-seat="N13" style="left:621px; top:274px;"><span class="seat_num">13</span></a>
								<a class="seat_btn seat_able" data-seat="N14" style="left:643px; top:274px;"><span class="seat_num">14</span></a>
								
								<a class="seat_btn seat_unable" data-seat="N15" style="left:695px; top:274px;"><span class="seat_num">15</span></a>
								<a class="seat_btn seat_unable" data-seat="N16" style="left:717px; top:274px;"><span class="seat_num">16</span></a>
								<a class="seat_btn seat_unable" data-seat="N17" style="left:739px; top:274px;"><span class="seat_num">17</span></a>
								<a class="seat_btn seat_unable" data-seat="N18" style="left:761px; top:274px;"><span class="seat_num">18</span></a>					
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
								<span class="seat_unable"></span><span class="seat_state">선택불가</span>
								<!-- float 마감제 -->
								<div class="clear"></div>
							</div>
							<!-- 선택 내용 안내 -->
							<div class="seats_price">
								<span class="seat_info">선택좌석 :<span class="selected_seat"></span></span>
								<span class="price_info">총 금액 : <span class="selected_price">0원</span></span>
							</div>
							<!-- 결제하기 버튼 -->
							<button id="go_to_pay" class="go_to_pay"><i class="fas fa-hand-point-right"></i><br />결제하기</button>
							<!-- float 마감제 -->
							<div class="clear"></div>
						</div>
					</div>
				</div>
				
				<!-- float 마감제 -->
				<div class="clear"></div>
	        <!-- step 02 끝 -->
	        </div>
	        <!-- step 03 : 결제하기 -->
	        <div class="booking_step3" style="display: none;">
	        	<!-- 결제수단 선택 영역 -->
				<div class="booking_payment">
					<!-- 상단 제목 영역 -->
					<h4 class="booking_title">결제수단 선택</h4>
					
					<!-- 하단 영역 -->
					<div class="booking_body">
						<!-- 좌측 선택 영화 영역 -->
						<div class="selected_filminfo">
							<img id="film_poster" src="" width=250 />
							<div class="chosen_detail">
								<div class="detail_title"></div>
								<div class="detail_info"></div>
							</div>
						</div>
						<!-- 우측 결제 영역 -->
						<div class="choose_payment">
							<form id="pay">
								<h2>최종 결제수단 선택</h2>
								<div class="payment_radio">
									<input type="radio" name="payment" id="credit_card">
									<label for="credit_card"><i class="far fa-credit-card"></i><br /><span>신용카드</span></label>
									<input type="radio" name="payment" id="simple_payment">
									<label for="simple_payment"><i class="fas fa-money-check-alt"></i><br /><span>간편결제</span></label>
									<input type="radio" name="payment" id="mobile_payment">
									<label for="mobile_payment"><i class="fas fa-mobile-alt"></i><br /><span>휴대폰결제</span></label>	
								</div>
								<h3>결제금액 <span id="price">20,000원</span></h3>
								<div class="payment_btn">
									<button type="button" class="btn to_void">결제취소</button>
									<button type="submit" class="btn to_pay">결제하기</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				
				<!-- float 마감제 -->
				<div class="clear"></div>
			<!-- step 03 끝 -->
	        </div>
	    <!-- 예매영역 끝 -->
		</div>
	</div>
</div>

<!-- fakescroll js -->
<script src="${pageContext.request.contextPath}/assets/plugins/fakescroll/fakescroll.min.js"></script>
<!-- slick js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js_files/branch_slick.js"></script>
<!-- js 파일 적용 -->
<script src="${pageContext.request.contextPath}/assets/js_files/booking_time.js"></script>
<script src="${pageContext.request.contextPath}/assets/js_files/branch.js"></script>
<script src="${pageContext.request.contextPath}/assets/js_files/branch3.js"></script>
<script src="${pageContext.request.contextPath}/assets/js_files/booking_time2.js"></script>
<script src="${pageContext.request.contextPath}/assets/js_files/booking_seats.js"></script>
<script src="${pageContext.request.contextPath}/assets/js_files/booking_seats2.js"></script>
<script src="${pageContext.request.contextPath}/assets/js_files/booking_payment.js"></script>
<%@ include file="../_inc/footer.jsp"%>