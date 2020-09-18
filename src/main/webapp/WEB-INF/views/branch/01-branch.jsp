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

<title>극장정보 > 극장 | Cinephile</title>

<!-- content -->
<div id="content">
	<!-- 극장 선택 테이블 -->
	<div class="branch_table">
		<h1 class="table_name">지역별 극장 정보</h1>
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
	<h1 class="branch_infottl">지점 상세 정보</h1>
	<!-- 극장 상세 정보 -->
	<div class="branch_info">
		<!-- 극장 상세 정보 head -->
		<div class="branch_head">
			<h2 class="branch_name">CGV 강남</h2>
			<button id="bookmarking" class="btn btn-default"><i class="fas fa-plus-circle"></i> 자주 가는 영화관 등록</button>
		</div>
		<!-- 극장 상세 정보 body -->
		<div class="branch_body">
			<!-- 텍스트 정보 -->
			<div class="info_text">
				<div class="info_detail">
					<span class="add1">서울특별시 강남구 역삼동 814-6 스타플렉스 4~11층</span><br /> <span class="add2">서울특별시 강남구 강남대로 438</span><br /> <span class="rooms">6개관 / </span> <span class="seats">874석</span>
				</div>
			</div>
			
			<!-- 브랜드 로고 영역 -->
			<div class="info_img">
				<img src="http://img.cgv.co.kr/R2014/images/title/h1_cgv.png" />
			</div>
		</div>
		<!-- float 마감제 -->
		<div class="clear"></div>

		<!-- 극장 상세 정보 tail -->
		<div class="branch_tail">
			<!-- 대중교통안내 button -->
			<div class="btn btn-info subway topop" data-toggle="modal" data-target="#modal_subway">
				<i class="fas fa-subway"></i> 대중교통안내
			</div>
			<!-- 대중교통안내 modal -->
			<div class="modal fade" id="modal_subway">
				<div class="modal-dialog modal-md">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">
								<i class="fas fa-subway"></i> 대중교통안내
							</h4>
						</div>
						<div class="modal-body">
							# 지하철 <br />2호선 | 강남역 11번 출구 <br />9호선 | 신논현역 5번출구 <br /> <br /># 버스 <br />- 분당지역 <br /> 좌석버스: 1005-1, 1005-2, 6800, 5500-2 <br /> 간선버스: 408, 462 <br /> 광역버스: 9404, 9408 <br />- 강북지역 <br /> 간선버스: 140, 144, 145, 471 <br />- 강서지역 <br /> 좌석버스: 1500 <br /> 간선버스: 360 <br />- 강동지역 <br /> 간선버스: 402, 420, 470, 407 <br />- 인근경기지역 <br /> 좌석버스: 3030, 2002, 2002-1 <br /> 광역버스: 9409, 9500, 9501, 9503, 9700, 9711
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
						</div>
					</div>
				</div>
			</div>

			<!-- 주차안내 button -->
			<div class="btn btn-info car topop" data-toggle="modal" data-target="#modal_car">
				<i class="fas fa-car"></i> 주차안내
			</div>
			<!-- 주차안내 modal -->
			<div class="modal fade" id="modal_car">
				<div class="modal-dialog modal-md">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">
								<i class="fas fa-car"></i> 주차안내
							</h4>
						</div>
						<div class="modal-body">
							# 주차정보 <br />- 위치: 건물 지하2F ~ 지하4F <br /> <br /># 주차요금 <br />- CGV 영화 관람 시 주차 3시간 6,000원 <br />- 주차시간 (3시간) 초과 시 10분 당 1,000원 <br /> <br />※ 발렛서비스 운영시간 : 오전 8시 이후 ~ 오후 20시 <br />※ 발렛 무료 서비스는 영화 관람 고객 한 함. (영화 미관람 시 건물 주차장에서 별도 정산) <br />※ 20시 이후 입차 차량은 발렛서비스 이용이 제한될 수 있으며, 별도 운영되는 주차팀의 사정에 따라 변경될 수 있습니다. <br /> <br /># 이용안내 <br />- 주차공간이 협소하여 평일 오후/주말은 주차가 어렵습니다. <br />- 편리한 대중교통 이용을 이용하여 주시기 바랍니다.
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
						</div>
					</div>
				</div>
			</div>


			<!-- 지도보기 button -->
			<div class="btn btn-success map topop" data-toggle="modal" data-target="#modal_map">
				<i class="fas fa-map-marked-alt"></i> 지도보기
			</div>
			<!-- 지도보기 modal -->
			<div class="modal fade" id="modal_map">
				<div class="modal-dialog modal-md">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">
								<i class="fas fa-map-marked-alt"></i> 지도보기
							</h4>
						</div>
						<div class="modal-body">
							<h4 class="map_info">마커 클릭 시 kakaomap 길찾기 페이지로 이동합니다</h4>
    						<div id="kakaomap" class="kakaomap">
    						</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>
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