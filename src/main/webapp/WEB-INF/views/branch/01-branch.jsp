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

<c:set var="tab" value="${requestScope['javax.servlet.forward.servlet_path']}" />
<%-- URL에 따라 페이지 종류 분리 --%>
<c:choose>
	<c:when test="${fn:contains(tab, 'branch')}">
		<title>극장정보 > 극장 | Cinephile</title>
	</c:when>
	<c:otherwise>
		<title>상영시간표 > 예매 | Cinephile</title>
	</c:otherwise>
</c:choose>

<!-- content -->
<div id="content">
	<!-- 극장 선택 테이블 -->
	<div class="branch_table">
		<%-- 페이지 종류에 따라 문구 차등 노출 --%>
		<c:choose>
			<c:when test="${fn:contains(tab, 'branch')}">
				<h1 class="table_name">지역별 극장 정보</h1>
			</c:when>
			<c:otherwise>
				<h1 class="table_name">극장 선택</h1>
			</c:otherwise>
		</c:choose>
		
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
<c:choose>
	<c:when test="${output2[0].getProvNo()==40 || output2[0].getProvNo()==50 || output2[0].getProvNo()==70 || output2[0].getProvNo()==120}">
		<div class="branch_list" style="height: 200px">
	</c:when>
	<c:when test="${output2[0].getProvNo()==30 || output2[0].getProvNo()==80}">
		<div class="branch_list" style="height: 300px">
	</c:when>
	<c:when test="${output2[0].getProvNo()==60 || output2[0].getProvNo()==100 || output2[0].getProvNo()==110}">
		<div class="branch_list" style="height: 350px">
	</c:when>
	<c:when test="${output2[0].getProvNo()==90}">
		<div class="branch_list" style="height: 400px">
	</c:when>
	<c:otherwise>
		<div class="branch_list">	
	</c:otherwise>
</c:choose>
			<ul id="branch_list">				
				<c:forEach var="item" items="${output2}" varStatus="status">
					<%-- 상세페이지로 이동하기 위한 URL --%>
					<c:url value="${tab}" var="viewUrl">
						<c:param name="provNo" value="${item.provNo}" />
						<c:param name="theaterId" value="${item.theaterId}" />
					</c:url>
					<li><a href="${viewUrl}">${item.brand}&nbsp;${item.branch}</a></li>
				</c:forEach>
			</ul>
		</div>
		<!-- float 마감제 -->
		<div class="clear"></div>
	</div>
	<hr />
	
	<%-- 극장 페이지인 경우에만 상세정보를 노출 --%>
	<c:choose>
	<c:when test="${fn:contains(tab, 'branch')}">
	<h1 class="branch_infottl">지점 상세 정보</h1>
	<!-- 극장 상세 정보 -->
	<div class="branch_info">
		<!-- 극장 상세 정보 head -->
		<div class="branch_head">
			<c:choose>
			<%-- 자주 가는 영화관인 경우 지점명 옆에 별 표시 --%>
			<c:when test="${favCount>0}">
			<h2 class="branch_name">${output.brand}&nbsp;${output.branch}&nbsp;<i class="fas fa-star"></i></h2>
			</c:when>
			<%-- 자주 가는 영화관이 아닐 경우 등록 버튼 표시 --%>
			<c:otherwise>
			<h2 class="branch_name">${output.brand}&nbsp;${output.branch}</h2>
			<form method="post" action="${pageContext.request.contextPath}/branch/add_ok.do" >
				<input type="hidden" name="theater_id" value="${output.theaterId}" />
				<input type="hidden" name="members_id" value="${user}" />
				<button type="submit" id="bookmarking" class="btn btn-default addbtn"><i class="fas fa-plus-circle"></i> 자주 가는 영화관 등록</button>
			</form>
			</c:otherwise>
			</c:choose>
		</div>
		<!-- 극장 상세 정보 body -->
		<div class="branch_body">
			<!-- 텍스트 정보 -->
			<div class="info_text">
				<div class="info_detail">
					<span class="add1">${output.oldAddr}</span><br /> <span class="add2">${output.newAddr}</span><br /> <span class="rooms">${output.rooms}개관 / </span> <span class="seats">${output.seats}석</span>
				</div>
			</div>
			
			<!-- 브랜드 로고 영역 -->
			<div class="info_img">
				<c:if test="${output.brand=='CGV'}">
				<img src="http://img.cgv.co.kr/R2014/images/title/h1_cgv.png" />
				</c:if>
				<c:if test="${output.brand=='롯데시네마'}">
				<img src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/logo.png" />
				</c:if>
				<c:if test="${output.brand=='메가박스'}">
				<img src="https://img.megabox.co.kr/static/pc/images/common/ci/logo.png" />
				</c:if>
			</div>
		</div>
		<!-- float 마감제 -->
		<div class="clear"></div>

		<!-- 극장 상세 정보 tail -->
		<div class="branch_tail">
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
	</c:when>
	<c:otherwise></c:otherwise>
	</c:choose>
	
	<!-- 상영시간표 -->
	<div class="timetable">
		<%-- 상영시간표 페이지인 경우에만 지점명+상영시간표 문구 노출 --%>
		<c:choose>
			<c:when test="${fn:contains(tab, 'timetable')}">
				<h1>${output.brand}&nbsp;${output.branch}&nbsp;상영시간표</h1>
			</c:when>
			<c:otherwise>
				<h1>상영시간표</h1>
			</c:otherwise>
		</c:choose>
		<!-- 날짜 선택 영역 -->
		<div class="table_head">
			<!-- 날짜 선택 버튼 영역 -->
			<div class="table_header">
				<div class="week_btn">
					<a class="btn btn-lg weekday day0" data-date=""></a>
					<a class="btn btn-lg weekday day1" data-date=""></a>
					<a class="btn btn-lg weekday day2" data-date=""></a>
					<a class="btn btn-lg weekday day3" data-date=""></a>
					<a class="btn btn-lg weekday day4" data-date=""></a>
					<a class="btn btn-lg weekday day5" data-date=""></a>
					<a class="btn btn-lg weekday day6" data-date=""></a>
					<a class="btn btn-lg weekday day7" data-date=""></a>
					<a class="btn btn-lg weekday day8" data-date=""></a>
					<a class="btn btn-lg weekday day9" data-date=""></a>
					<a class="btn btn-lg weekday day10" data-date=""></a>
					<a class="btn btn-lg weekday day11" data-date=""></a>
					<a class="btn btn-lg weekday day12" data-date=""></a>
					<a class="btn btn-lg weekday day13" data-date=""></a>
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
			
			<!-- 상영 영화 목록 -->
			<div id="film_list">
 
				<c:forEach var="i" begin="0" end="${movieCount-1}">
					<div class="film_time film${i} &nbsp; ${movieList[i].movieId}" data-id="${movieList[i].movieId}" data-count="${movieCount}">						
						<c:choose>
							<c:when test="${movieList[i].ageLimit==0}">
								<h3><span class="label label-success">전체</span> ${movieList[i].title}</h3>
							</c:when>
							<c:when test="${movieList[i].ageLimit==1}">
								<h3><span class="label label-primary">12</span> ${movieList[i].title}</h3>
							</c:when>
							<c:when test="${movieList[i].ageLimit==2}">
								<h3><span class="label label-warning">15</span> ${movieList[i].title}</h3>
							</c:when>
							<c:when test="${movieList[i].ageLimit==3}">
								<h3><span class="label label-danger">청불</span> ${movieList[i].title}</h3>
							</c:when>
						</c:choose>						
					</div>
				</c:forEach>
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
<script src="${pageContext.request.contextPath}/assets/js_files/branch3.js"></script>
<script src="${pageContext.request.contextPath}/assets/js_files/timetable.js"></script>
<%@ include file="../_inc/footer.jsp"%>