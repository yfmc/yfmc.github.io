<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/plugins/datatables/datatables.min.css?time=<%=System.currentTimeMillis()%>"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/support_home.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/support_sidebar.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/support_button.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/support_list.css?time=<%=System.currentTimeMillis()%>">

<div class="row">
	<div id="contents">
	<!-- 사이드 바 -->
		<ul class="sidebar">
			<li class="list-group-item"><a href="<%=request.getContextPath()%>/support/support_home.jsp">고객센터 홈</a></li>
			<li class="list-group-item"><a href="<%=request.getContextPath()%>/support/notice_list.jsp">공지사항</a></li>
			<li class="list-group-item"><a href="<%=request.getContextPath()%>/support/faq_list.jsp">자주찾는 질문</a></li>
			<li class="list-group-item"><a href="<%=request.getContextPath()%>/support/qna.jsp">1:1 문의</a></li>
		</ul>
		<div class="content">
			<div class="support_title">
				<h2>자주찾는 질문</h2>
				<p>
					회원님들께서 가장 자주하시는 질문을 모았습니다.<br />
					궁금하신 내용에 대해 검색해보세요.
				</p>
			</div>
			<div class="faq search">
				<div class="input-group">
					<span class="input-group-btn">
					<!-- 추가적인 style 적용 필요함 -->
					<select name='choose' class='form-control' style="width: auto; margin-right: -1px;">
							<option value="detail_title">제목</option>
							<option value="detail_content">내용</option>
					</select>
					</span> <input type="text" class="form-control" placeholder="Search">
					<span class="input-group-btn">
						<button type="button" class="btn btn-default">검색</button>
					</span>
				</div>
			</div>
			<div class="search_result">
			총 "&nbsp;&nbsp;&nbsp;"건이 검색 되었습니다.
			</div>
			<div class="table_area">
				<table class="table_faq_list">
					<!-- 목록 -->
					<thead>
						<tr>
							<th style="width: 100px;">번호</th>
							<th style="width: auto;">제목</th>
							<th style="width: 150px;">등록일</th>
							<th style="width: 150px;">조회수</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="../plugins/datatables/datatables.min.js"></script>
<script type="text/javascript">
$(function(){ 
	$(".table_faq_list").DataTable({
		ajax: {
			type:"POST",
			url: '../api/faq_list.json',
			dataType:"JSON"
		},
		columns: [
			{data: "faqno"},
			{data: "faqname"},
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