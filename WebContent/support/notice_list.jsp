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
					<tbody>
						<tr>
							<td>10</td>
							<td class="detail_title"><a href="<%=request.getContextPath()%>/support/notice_detail.jsp">공지사항 10</a></td>
							<td>2020.07.20</td>
							<td>10000</td>
						</tr>
						<tr>
							<td>9</td>
							<td class="detail_title">공지사항 9</td>
							<td>2020.07.20</td>
							<td>9999</td>
						</tr>
						<tr>
							<td>8</td>
							<td class="detail_title">공지사항 8</td>
							<td>2020.07.20</td>
							<td>8888</td>
						</tr>
						<tr>
							<td>7</td>
							<td class="detail_title">공지사항 7</td>
							<td>2020.07.20</td>
							<td>7777</td>
						</tr>
						<tr>
							<td>6</td>
							<td class="detail_title">공지사항 6</td>
							<td>2020.07.20</td>
							<td>6666</td>
						</tr>
						<tr>
							<td>5</td>
							<td class="detail_title">공지사항 5</td>
							<td>2020.07.20</td>
							<td>5555</td>
						</tr>
						<tr>
							<td>4</td>
							<td class="detail_title">공지사항 4</td>
							<td>2020.07.20</td>
							<td>4444</td>
						</tr>
						<tr>
							<td>3</td>
							<td class="detail_title">공지사항 3</td>
							<td>2020.07.20</td>
							<td>3333</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- 페이지 버튼 -->
			<nav class="Page navigation">
				<ul class="pagination">
					<li><a href="#" aria-label="Previous"> <span
							aria-hidden="true">&laquo;</span>
					</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#" aria-label="Next"> <span
							aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>
		</div>
	</div>
</div>
<%@ include file="../_inc/footer.jsp"%>