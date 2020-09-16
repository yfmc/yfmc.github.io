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
					<li id="seoul2">서울</li>
					<li id="gyeonggi2">경기</li>
					<li id="incheon2">인천</li>
					<li id="gangwon2">강원</li>
					<li id="daejeon2">대전</li>
					<li id="chungcheong2">충청/세종</li>
					<li id="gwangju2">광주</li>
					<li id="jeolla2">전라</li>
					<li id="daegu2">대구/경북</li>
					<li id="busan2">부산/울산</li>
					<li id="gyeongnam2">경남</li>
					<li id="jeju2">제주</li>
				</ul>
			</div>
			
			<!-- 지점 선택 -->
			<div class="choose_branch">
				<ul id="branch_list">
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
				<div class="chosen_film">
					<span class="label label-warning">15</span> 강철비2 : 정상회담
				</div>
				<ul>
					<li><span class="start_time">15:15</span><br /><span class="seats">89 / 132</span> <span class="room_no">1관</span></li>
					<li><span class="start_time">15:15</span><br /><span class="seats">89 / 132</span> <span class="room_no">1관</span></li>
					<li><span class="start_time">15:15</span><br /><span class="seats">89 / 132</span> <span class="room_no">1관</span></li>
					<li><span class="start_time">15:15</span><br /><span class="seats">89 / 132</span> <span class="room_no">1관</span></li>
					<li><span class="start_time">15:15</span><br /><span class="seats">89 / 132</span> <span class="room_no">1관</span></li>
					<li><span class="start_time">15:15</span><br /><span class="seats">89 / 132</span> <span class="room_no">1관</span></li>
					<li><span class="start_time">15:15</span><br /><span class="seats">89 / 132</span> <span class="room_no">1관</span></li>
					
				</ul>
			</div>
            <!-- 다음 단계 버튼 -->
            <div class="go_to_next" id="next-btn">
                <a href=""><i class="fas fa-hand-point-right"></i><br />좌석선택</a>
            </div>
            <!-- 로그인 modal 창 -->
            <div class="modal" id="modal-login">
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
            <!-- float 마감제 -->
            <div class="clear"></div>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js_files/booking_time.js"></script>
<script src="${pageContext.request.contextPath}/assets/js_files/branch2.js"></script>

<%@ include file="../_inc/footer.jsp"%>