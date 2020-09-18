<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../_inc/header.jsp"%>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/Branch.css?time=<%=System.currentTimeMillis()%>" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/Branch_yeti.css?time=<%=System.currentTimeMillis()%>" />
<!-- fakescroll css -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/plugins/fakescroll/fakescroll.css?time=<%=System.currentTimeMillis()%>" />
<!-- slick css -->
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

<title>상영시간표 > 예매 | Cinephile</title>

<!-- content -->
<div id="content">
	<!-- 극장 선택 테이블 -->
	<div class="branch_table">
		<h1 class="table_name">극장 선택</h1>
		<div class="provincial">
			<ul class="prov_list">
				<li id="seoul1">서울</li>
				<li id="gyeonggi1">경기</li>
				<li id="incheon1">인천</li>
				<li id="gangwon1">강원</li>
				<li id="daejeon1">대전</li>
				<li id="chungcheong1">충청/세종</li>
				<li id="gwangju1">광주</li>
				<li id="jeolla1">전라</li>
				<li id="daegu1">대구/경북</li>
				<li id="busan1">부산/울산</li>
				<li id="gyeongnam1">경남</li>
				<li id="jeju1">제주</li>
				<!-- float 마감제 -->
				<div class="clear"></div>
			</ul>
		</div>
		<div class="branch_list">
			<ul id="branch_list">
				<li><a href='#'>롯데시네마 가산디지털</a></li>
				<li><a href='#'>롯데시네마 가양</a></li>
				<li><a href='#'>CGV 강남</a></li>
				<li><a href='#'>메가박스 강남</a></li>
				<li><a href='#'>메가박스 강남대로(씨티)</a></li>
				<li><a href='#'>메가박스 강동</a></li>
				<li><a href='#'>롯데시네마 강동</a></li>
				<li><a href='#'>CGV 강변</a></li>
				<li><a href='#'>CGV 건대입구</a></li>
				<li><a href='#'>롯데시네마 건대입구</a></li>
				<li><a href='#'>CGV 구로</a></li>
				<li><a href='#'>메가박스 군자</a></li>
				<li><a href='#'>롯데시네마 김포공항</a></li>
				<li><a href='#'>롯데시네마 노원</a></li>
				<li><a href='#'>CGV 대학로</a></li>
				<li><a href='#'>롯데시네마 도곡</a></li>
				<li><a href='#'>롯데시네마 독산</a></li>
				<li><a href='#'>CGV 동대문</a></li>
				<li><a href='#'>메가박스 동대문</a></li>
				<li><a href='#'>CGV 등촌</a></li>
				<li><a href='#'>메가박스 마곡</a></li>
				<li><a href='#'>CGV 명동</a></li>
				<li><a href='#'>CGV 명동역 씨네라이브러리</a></li>
				<li><a href='#'>메가박스 목동</a></li>
				<li><a href='#'>CGV 목동</a></li>
				<li><a href='#'>CGV 미아</a></li>
				<li><a href='#'>CGV 불광</a></li>
				<li><a href='#'>롯데시네마 브로드웨이(신사)</a></li>
				<li><a href='#'>메가박스 상봉</a></li>
				<li><a href='#'>CGV 상봉</a></li>
				<li><a href='#'>메가박스 상암월드컵경기장</a></li>
				<li><a href='#'>롯데시네마 서울대입구</a></li>
				<li><a href='#'>메가박스 성수</a></li>
				<li><a href='#'>CGV 성신여대입구</a></li>
				<li><a href='#'>메가박스 센트럴</a></li>
				<li><a href='#'>CGV 송파</a></li>
				<li><a href='#'>메가박스 송파파크하비오</a></li>
				<li><a href='#'>롯데시네마 수락산</a></li>
				<li><a href='#'>CGV 수유</a></li>
				<li><a href='#'>롯데시네마 수유</a></li>
				<li><a href='#'>롯데시네마 신도림</a></li>
				<li><a href='#'>롯데시네마 신림</a></li>
				<li><a href='#'>메가박스 신촌</a></li>
				<li><a href='#'>CGV 신촌아트레온</a></li>
				<li><a href='#'>메가박스 아트나인</a></li>
				<li><a href='#'>CGV 압구정</a></li>
				<li><a href='#'>롯데시네마 에비뉴엘(명동)</a></li>
				<li><a href='#'>CGV 여의도</a></li>
				<li><a href='#'>롯데시네마 영등포</a></li>
				<li><a href='#'>CGV 영등포</a></li>
				<li><a href='#'>CGV 왕십리</a></li>
				<li><a href='#'>롯데시네마 용산</a></li>
				<li><a href='#'>CGV 용산아이파크몰</a></li>
				<li><a href='#'>롯데시네마 월드타워</a></li>
				<li><a href='#'>메가박스 은평</a></li>
				<li><a href='#'>롯데시네마 은평</a></li>
				<li><a href='#'>메가박스 이수</a></li>
				<li><a href='#'>롯데시네마 장안</a></li>
				<li><a href='#'>CGV 중계</a></li>
				<li><a href='#'>메가박스 창동</a></li>
				<li><a href='#'>CGV 천호</a></li>
				<li><a href='#'>CGV 청담씨네시티</a></li>
				<li><a href='#'>롯데시네마 청량리</a></li>
				<li><a href='#'>메가박스 코엑스</a></li>
				<li><a href='#'>CGV 피카디리 1958</a></li>
				<li><a href='#'>CGV 하계</a></li>
				<li><a href='#'>롯데시네마 합정</a></li>
				<li><a href='#'>메가박스 홍대</a></li>
				<li><a href='#'>CGV 홍대</a></li>
				<li><a href='#'>롯데시네마 홍대입구</a></li>
				<li><a href='#'>메가박스 화곡</a></li>
				<li><a href='#'>롯데시네마 황학</a></li>
			</ul>
		</div>
		<!-- float 마감제 -->
		<div class="clear"></div>
	</div>
	<hr />

	<!-- 상영시간표 -->
	<div class="timetable">
		<h1>상영시간표</h1>
		<!-- 날짜 선택 영역 -->
		<div class="table_head">
			<!-- 날짜 선택 버튼 영역 -->
			<div class="table_header">
				<div class="week_btn">
						<a class="btn btn-lg weekday day0"></a>
						<a class="btn btn-lg weekday day1"></a>
						<a class="btn btn-lg weekday day2"></a>
						<a class="btn btn-lg weekday day3"></a>
						<a class="btn btn-lg weekday day4"></a>
						<a class="btn btn-lg weekday day5"></a>
						<a class="btn btn-lg weekday day6"></a>
						<a class="btn btn-lg weekday day7"></a>
						<a class="btn btn-lg weekday day8"></a>
						<a class="btn btn-lg weekday day9"></a>
						<a class="btn btn-lg weekday day10"></a>
						<a class="btn btn-lg weekday day11"></a>
						<a class="btn btn-lg weekday day12"></a>
						<a class="btn btn-lg weekday day13"></a>
				</div>
				<div class="clear"></div>
			</div>
			<!-- 관람가 및 요금 안내 button -->
			<div class="table_info" data-toggle="modal" data-target="#modal_table">
				<h4>
					<button class="btn btn-default"><i class="fas fa-info-circle"></i> 관람가 / 요금 안내</button>
				</h4>
			</div>

			<!-- 관람가 및 요금 안내 modal -->
			<div class="modal fade" id="modal_table">
				<div class="modal-dialog modal-md">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">
								<i class="fas fa-info-circle"></i> 관람가 / 요금 안내
							</h4>
						</div>
						<div class="modal-body">
							<div class="panel panel-default">
								<div class="panel-heading">관람가 안내</div>
								<div class="panel-body">
									<table class="table table-striped table-hover">
										<thead>
											<tr>
												<th>구분</th>
												<th>설명</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><span class="label label-success">전체</span> 전체 관람가</td>
												<td>모든 연령의 고객님께서 관람하실 수 있습니다.</td>
											</tr>
											<tr>
												<td><span class="label label-primary">12</span> 12세 관람가</td>
												<td>만 12세 미만의 고객님은 보호자를 동반하셔야 관람하실 수 있습니다.</td>
											</tr>
											<tr>
												<td><span class="label label-warning">15</span> 15세 관람가</td>
												<td>만 15세 미만의 고객님은 보호자를 동반하셔야 관람하실 수 있습니다.</td>
											</tr>
											<tr>
												<td><span class="label label-danger">청불</span> 청소년관람불가</td>
												<td>만 18세 미만의 고객님은 보호자를 동반하셔도 관람하실 수 없습니다.<br />- 입장시 신분증을 꼭 지참하시기 바랍니다.<br />- 만 18세 이상이더라도 고등학교 재학중인 경우 관람이 불가합니다.
												</td>
											</tr>
											<tr>
												<td><span class="label label-default">미정</span> 미정</td>
												<td>등급 미정 영화입니다.</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>

							<div class="panel panel-default">
								<div class="panel-heading">요금 안내</div>
								<div class="panel-body">
									<table class="table table-striped table-hover">
										<tbody>
											<tr>
												<td>성인</td>
												<td>10,000원</td>
											</tr>
											<tr>
												<td>청소년 (만 4세 이상 ~ 만 18세 미만)</td>
												<td>7,000원</td>
											</tr>
											<tr>
												<td>장애인</td>
												<td>5,000원</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
						</div>
					</div>
				</div>
			</div>

			<!-- 영화 1 시간표 영역 -->
			<div class="film_time">
				<h3>
					<span class="label label-warning">15</span> 반도
				</h3>

				<a href="#" class="btn btn-lg btn-default" data-toggle="tooltip" data-placement="bottom" title="종료 17:21"> <span class="start_time">15:15</span> <span class="seats">89 / 132</span> <span class="room_no">1관</span>
				</a> <a href="#" class="btn btn-lg btn-default" data-toggle="tooltip" data-placement="bottom" title="종료 17:21"> <span class="start_time">15:15</span> <span class="seats">89 / 132</span> <span class="room_no">1관</span>
				</a> <a href="#" class="btn btn-lg btn-default" data-toggle="tooltip" data-placement="bottom" title="종료 17:21"> <span class="start_time">15:15</span> <span class="seats">89 / 132</span> <span class="room_no">1관</span>
				</a> <a href="#" class="btn btn-lg btn-default" data-toggle="tooltip" data-placement="bottom" title="종료 17:21"> <span class="start_time">15:15</span> <span class="seats">89 / 132</span> <span class="room_no">1관</span>
				</a>
			</div>
			<!-- 영화 2 시간표 영역 -->
			<div class="film_time">
				<h3>
					<span class="label label-success">전체</span> 알라딘
				</h3>

				<a href="#" class="btn btn-lg btn-default" data-toggle="tooltip" data-placement="bottom" title="종료 17:21"> <span class="start_time">15:15</span> <span class="seats">89 / 132</span> <span class="room_no">1관</span>
				</a> <a href="#" class="btn btn-lg btn-default" data-toggle="tooltip" data-placement="bottom" title="종료 17:21"> <span class="start_time">15:15</span> <span class="seats">89 / 132</span> <span class="room_no">1관</span>
				</a> <a href="#" class="btn btn-lg btn-default" data-toggle="tooltip" data-placement="bottom" title="종료 17:21"> <span class="start_time">15:15</span> <span class="seats">89 / 132</span> <span class="room_no">1관</span>
				</a>

			</div>
			<div class="film_time">
				<h3>
					<span class="label label-danger">청불</span> 아디오스
				</h3>

				<a href="#" class="btn btn-lg btn-default" data-toggle="tooltip" data-placement="bottom" title="종료 17:21"> <span class="start_time">15:15</span> <span class="seats">89 / 132</span> <span class="room_no">1관</span>
				</a> <a href="#" class="btn btn-lg btn-default" data-toggle="tooltip" data-placement="bottom" title="종료 17:21"> <span class="start_time">15:15</span> <span class="seats">89 / 132</span> <span class="room_no">1관</span>
				</a> <a href="#" class="btn btn-lg btn-default" data-toggle="tooltip" data-placement="bottom" title="종료 17:21"> <span class="start_time">15:15</span> <span class="seats">89 / 132</span> <span class="room_no">1관</span>
				</a>
			</div>
		</div>
	</div>
</div>

<!-- fakescroll js -->
<script src="${pageContext.request.contextPath}/assets/plugins/fakescroll/fakescroll.min.js"></script>
<!-- slick js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js_files/branch_slick.js"></script>
<!-- kakaomap API -->
<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=ba7a5958ab47694eb9afd60cda94e841"></script>
<!-- kakaomap services 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ba7a5958ab47694eb9afd60cda94e841&libraries=services"></script>
<!-- js 파일 적용 -->
<script src="${pageContext.request.contextPath}/assets/js_files/branch.js"></script>
<script src="${pageContext.request.contextPath}/assets/js_files/branch2.js"></script>
<%@ include file="../_inc/footer.jsp"%>