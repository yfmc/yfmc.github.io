<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/plugins/datatables/datatables.min.css?time=<%=System.currentTimeMillis()%>"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/support_home.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/support_sidebar.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/support_button.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/support_list.css?time=<%=System.currentTimeMillis()%>">

<div class="row">
	<div id="contents">
		        <!-- ==== 사이드 바 ==== -->
		        <ul class="sidebar">
	                <li class="list-group-item"><a class="sidebar_link <% if (request.getRequestURI().indexOf("support_home") > -1) { %>on<%} %>" href="<%=request.getContextPath()%>/support/support_home.do">고객센터 홈</a></li>
	                <li class="list-group-item"><a class="sidebar_link <% if (request.getRequestURI().indexOf("notice") > -1) { %>on<%} %>" href="<%=request.getContextPath()%>/support/notice_list.do">공지사항</a></li>
	                <li class="list-group-item"><a class="sidebar_link <% if (request.getRequestURI().indexOf("faq") > -1) { %>on<%} %>" href="<%=request.getContextPath()%>/support/faq_list.do">자주찾는 질문</a></li>
	                <li class="list-group-item"><a class="sidebar_link <% if (request.getRequestURI().indexOf("qna") > -1) { %>on<%} %>" href="<%=request.getContextPath()%>/support/qna.do">1:1 문의</a></li>
	            	<li class="list-group-item"><a class="sidebar_link <% if (request.getRequestURI().indexOf("rent") > -1) { %>on<%} %>" href="<%=request.getContextPath()%>/support/rent.do">대관문의</a></li>
	            </ul>
		        <!-- ==== 사이드바 끝 ==== -->
		<div class="content">
			<div class="support_title">
				<h2>공지사항</h2>
				<p>저희 영화관의 이슈 및 공지사항을 확인하실 수 있습니다.</p>
			</div>
			<div class="notice search">
					<form class="search_box" name="search" method="post" action="<%=request.getContextPath()%>/support/notice_list.do">
						<!-- 추가적인 style 적용 필요함 -->
						<select name='choose' class='form-control' >
								<option value="detail_title">제목</option>
								<option value="detail_box">내용</option>
						</select>
							<input type="text" class="form-control" placeholder="Search">
							<button type="submit" class="btn btn-default">검색</button>
					</form>
			</div>
			<div class="search_result">
			총 "&nbsp;&nbsp;&nbsp;"건이 검색 되었습니다.
			</div>
			<div class="table_area">
				<table class="table_notice_list">
					<!-- 목록 -->
					<thead>
						<tr>
							<th style="width: 100px;">번호</th>
							<th style="width: auto;">제목</th>
							<th style="width: 150px;">등록일</th>
							<th style="width: 150px;">조회수</th>
						</tr>
					</thead>
					<!-- Ajax 위치 -->
				</table>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="../assets/plugins/datatables/datatables.min.js"></script>
<script type="text/javascript">
$(function(){ 
	$(".table_notice_list").DataTable({
		ajax: {
			type:"POST",
			url: '../api/notice_list.json'
		},
		columns: [
			{data: "notice_no"},
			{data: "notice_title"},
			{data: "date"},
			{data: "views"}
		],
		// 표시 건수기능
		lengthChange: true,
		// 표시 건수 10건 단위로 설정
		lengthMenu: [10, 20, 30],
		// 검색 기능
		searching: true,
		// 정렬 기능
		ordering: false,
		// 정보 표시
		info: true,
		// 페이징 기능
		paging: true,
		// 현재 상태 유지
		stateSave:true,
		pagingType : "full_numbers"
	}); 
}); 
</script>
<%@ include file="../_inc/footer.jsp"%>