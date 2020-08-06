<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="../_inc/header.jsp"%>
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
				<h2>공지사항</h2>
				<p>저희 영화관의 이슈 및 공지사항을 확인하실 수 있습니다.</p>
			</div>
			<div class="notice search">
				<div class="input-group">
					<span class="input-group-btn">
					<!-- 추가적인 style 적용 필요함 -->
					<select name='choose' class='form-control' style="width: auto; margin-right: -1px;">
							<option value="">제목</option>
							<option value="">내용</option>
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
					<tbody id="notice_list_body">
                    	<!-- Ajax 결과 위치 -->
                    </tbody>
				</table>
			</div>
			<!-- 페이지 버튼 -->
			<div class="Page navigation">
                <ul class="pagination">
                    <li class="page-item"><a class="page-link" href="#"><</a></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                    <li class="page-item"><a class="page-link" href="#">></a></li>
                </ul>
            </div>
		</div>
	</div>
</div>
<script src="../plugins/handlebars/handlebars-v4.0.11.js"></script>
    <script id="notice_list_tmpl" type="text/x-handlebars-template">
    	{{#each notice_list}}	
		<tr>
    	<td>{{noticeno}}</td>
		<td class="detail_title"><a href="<%=request.getContextPath()%>/support/notice_detail.jsp">{{noticename}}</a></td>
    	<td>{{date}}</td>
    	<td>{{views}}</td>
		</tr>
    	{{/each}}
    </script>
    <script type="text/javascript">
    	function get_notice_list() {
    		$.get("../api/notice_list.json", function(req) {
    			var template = Handlebars.compile($("#notice_list_tmpl").html());
    			var html = template(req);
    			$("#notice_list_body").append(html);
    		});
    	}
    	$(function() {
    		get_notice_list();
    	});
	</script>
<%@ include file="../_inc/footer.jsp"%>