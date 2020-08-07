<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="/_inc/header.jsp"%>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/Branch.css?time=<%=System.currentTimeMillis()%>" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/Branch_yeti.css?time=<%=System.currentTimeMillis()%>" />
<!-- 스크롤바 플러그인 -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/plugins/fakescroll/fakescroll.css?time=<%=System.currentTimeMillis()%>" />

<title>상영시간표 > 예매 | Cinephile</title>

<!-- content -->
<div id="content">
	<!-- 극장 선택 테이블 -->
	<div class="branch_table">
		<h1 class="table_name">극장 선택</h1>
		<div class="provincial">
			<ul>
				<li><a href="#seoul">서울</a></li>
				<li><a href="#gyeonggi">경기</a></li>
				<li><a href="#incheon">인천</a></li>
				<li><a href="#gangwon">강원</a></li>
				<li><a href="#daejeon">대전</a></li>
				<li><a href="#chungcheong">충청/세종</a></li>
				<li><a href="#gwangju">광주</a></li>
				<li><a href="#jeolla">전라</a></li>
				<li><a href="#daegu">대구/경북</a></li>
				<li><a href="#busan">부산/울산</a></li>
				<li><a href="#gyeongnam">경남</a></li>
				<li><a href="#jeju">제주</a></li>
			</ul>
		</div>
		<div class="branch_list">
			<ul id="seoul">
				<li><a href="#">CGV 강남</a></li>
				<li><a href="#">롯데시네마 영등포</a></li>
				<li><a href="#">메가박스 송파파크하비오</a></li>
				<li><a href="#">메가박스 코엑스</a></li>
				<li><a href="#">CGV 압구정</a></li>
				<li><a href="#">롯데시네마 프리미엄구미센트럴</a></li>
				<li><a href="#">메가박스 군자</a></li>
				<li><a href="#">롯데시네마 신도림</a></li>
				<li><a href="#">롯데시네마 서울대입구</a></li>
				<li><a href="#">CGV 하계</a></li>
				<li><a href="#">CGV 건대입구</a></li>
				<li><a href="#">메가박스 창동</a></li>
				<li><a href="#">롯데시네마 강동</a></li>
				<li><a href="#">롯데시네마 도곡</a></li>
				<li><a href="#">메가박스 아트나인</a></li>
				<li><a href="#">CGV 홍대</a></li>
				<li><a href="#">CGV 신촌아트레온</a></li>
				<li><a href="#">롯데시네마 홍대입구</a></li>
				<li><a href="#">메가박스 신촌</a></li>
				<li><a href="#">CGV 왕십리</a></li>
				<li><a href="#">CGV 성신여대입구</a></li>
				<li><a href="#">롯데시네마 청량리</a></li>
				<li><a href="#">CGV 강남</a></li>
				<li><a href="#">롯데시네마 영등포</a></li>
				<li><a href="#">메가박스 송파파크하비오</a></li>
				<li><a href="#">메가박스 코엑스</a></li>
				<li><a href="#">CGV 압구정</a></li>
				<li><a href="#">롯데시네마 프리미엄구미센트럴</a></li>
				<li><a href="#">메가박스 군자</a></li>
				<li><a href="#">롯데시네마 신도림</a></li>
				<li><a href="#">롯데시네마 서울대입구</a></li>
				<li><a href="#">CGV 하계</a></li>
				<li><a href="#">CGV 건대입구</a></li>
				<li><a href="#">메가박스 창동</a></li>
				<li><a href="#">롯데시네마 강동</a></li>
				<li><a href="#">롯데시네마 도곡</a></li>
				<li><a href="#">메가박스 아트나인</a></li>
				<li><a href="#">CGV 홍대</a></li>
				<li><a href="#">CGV 신촌아트레온</a></li>
				<li><a href="#">롯데시네마 홍대입구</a></li>
				<li><a href="#">메가박스 신촌</a></li>
				<li><a href="#">CGV 왕십리</a></li>
				<li><a href="#">CGV 성신여대입구</a></li>
				<li><a href="#">롯데시네마 청량리</a></li>
				<li><a href="#">CGV 강남</a></li>
				<li><a href="#">롯데시네마 영등포</a></li>
				<li><a href="#">메가박스 송파파크하비오</a></li>
				<li><a href="#">메가박스 코엑스</a></li>
				<li><a href="#">CGV 압구정</a></li>
				<li><a href="#">롯데시네마 프리미엄구미센트럴</a></li>
				<li><a href="#">메가박스 군자</a></li>
				<li><a href="#">롯데시네마 신도림</a></li>
				<li><a href="#">롯데시네마 서울대입구</a></li>
				<li><a href="#">CGV 하계</a></li>
				<li><a href="#">CGV 건대입구</a></li>
				<li><a href="#">메가박스 창동</a></li>
				<li><a href="#">롯데시네마 강동</a></li>
				<li><a href="#">롯데시네마 도곡</a></li>
				<li><a href="#">메가박스 아트나인</a></li>
				<li><a href="#">CGV 홍대</a></li>
				<li><a href="#">CGV 신촌아트레온</a></li>
				<li><a href="#">롯데시네마 홍대입구</a></li>
				<li><a href="#">메가박스 신촌</a></li>
				<li><a href="#">CGV 왕십리</a></li>
				<li><a href="#">CGV 성신여대입구</a></li>
				<li><a href="#">롯데시네마 청량리</a></li>
				<li><a href="#">CGV 신촌아트레온</a></li>
				<li><a href="#">롯데시네마 홍대입구</a></li>
				<li><a href="#">메가박스 신촌</a></li>
				<li><a href="#">CGV 왕십리</a></li>
				<li><a href="#">CGV 성신여대입구</a></li>
				<li><a href="#">롯데시네마 청량리</a></li>
			</ul>
		</div>
		<!-- float 마감제 -->
		<div class="clear"></div>
	</div>
	<hr />
	<!-- 상영시간표 -->
	<div class="timetable">
		<h1>상영시간표</h1>
		<!-- 날짜 선택 head 영역 -->
		<div class="table_head">
			<!-- 날짜 선택 버튼 영역 -->
			<div class="week_btn">
				<a class="btn btn-lg"><font color="black"><i class="fas fa-angle-left"></i></font></a>
				<a class="btn btn-lg"><font color="red">7/19<br />일</font></a>
				<a class="btn btn-lg"><font color="black">7/20<br />월</font></a>
				<a class="btn btn-lg"><font color="black">7/21<br />화</font></a>
				<a class="btn btn-lg"><font color="black">7/22<br />수</font></a>
				<a class="btn btn-lg"><font color="black">7/23<br />목</font></a>
				<a class="btn btn-lg"><font color="black">7/24<br />금</font></a>
				<a class="btn btn-lg"><font color="blue">7/25<br />토</font></a>
				<a class="btn btn-lg"><font color="black"><i class="fas fa-angle-right"></i></font></a>
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

<!-- 스크롤바 플러그인 -->
<script src="<%=request.getContextPath()%>/plugins/fakescroll/fakescroll.min.js"></script>
<!-- js 참조 -->
<script src="<%=request.getContextPath()%>/branch/branch.js"></script>
<%@ include file="/_inc/footer.jsp"%>