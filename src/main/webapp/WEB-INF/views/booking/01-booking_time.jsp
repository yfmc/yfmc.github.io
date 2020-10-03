<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../_inc/header.jsp"%>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/Booking_time.css?time=<%=System.currentTimeMillis()%>" />
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
						<li class="branch_btn" data-id="${item.theaterId}">${item.brand}&nbsp;${item.branch}</li>
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
				<p style="text-align: center;">영화관을 선택해주세요</p>
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
				<p style="text-align: center;">영화, 날짜를 선택해주세요</p>
			</div>
            <!-- 좌석선택 버튼 -->
            <div class="button_area">
            	<button id="go_to_next" class="go_to_next"><i class="fas fa-hand-point-right"></i><br />좌석선택</button>
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
        <!-- float 마감제 -->
        <div class="clear"></div>
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

<%@ include file="../_inc/footer.jsp"%>