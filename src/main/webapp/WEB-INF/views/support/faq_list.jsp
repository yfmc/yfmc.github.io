<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../_inc/header.jsp"%>
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
				<h2>자주찾는 질문</h2>
				<p>
					회원님들께서 가장 자주하시는 질문을 모았습니다.<br />
					궁금하신 내용에 대해 검색해보세요.
				</p>
			</div>
			<div class="faq search">
					<form class="search_box" method="get" action="<%=request.getContextPath()%>/support/faq_list.do">
						<select name='choose' class='form-control' id="searchType">
								<option value="faq_title">제목</option>
								<option value="faq_content">내용</option>
						</select>
						<input type="text" name="keyword" id="keyword" class="form-control" placeholder="Search" value="${keyword}" />
						<button type="submit" class="searchButton btn btn-default">검색</button>
					</form>
			</div>
			<div class="search_result">
			<mark>"${keyword}"</mark>(으)로 총 "${pageData.totalCount}"건이 검색 되었습니다.
			</div>
			<div class="table_area">
				<table class="table_faq_list">
					<!-- 목록 -->
					<thead>
						<tr>
							<th style="width: 100px;">번호</th>
							<th style="width: auto;">제목</th>
							<th style="width: 150px;">등록일</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<%-- 조회결과가 없는 경우 --%>
							<c:when test="${output == null || fn:length(output)==0}">
								<tr>
									<td colspan="3" align="center">조회 결과 없음</td>
								</tr>
							</c:when>
							<%-- 조회결과가 있는 경우 --%>
							<c:otherwise>
								<%-- 조회 결과에 따른 반복처리 --%>
								<c:forEach var="item" items="${output}" varStatus="status">
									<%-- 출력을 위해 준비한 faq데이터 --%>
									<c:set var="faq_id" 			value="${item.faq_id}" />
									<c:set var="faq_title" 		value="${item.faq_title}" />
									<c:set var="reg_date" 		value="${item.reg_date}" />

									<%-- 검색어가 있다면 --%>
									<c:if test="${keyword != ''}">
										<%-- 검색어에 <mark> 태그를 적용하여 형광팬 효과 준비 --%>
										<c:set var="mark" value="<mark>${keyword}</mark>" />
										<%-- 출력을 위해 준비한 교수이름에서 검색어와 일치하는 단어를 형광펜 효과적용 --%>
										<c:set var="faq_title" value="${fn:replace(faq_title, keyword, mark)}" />
									</c:if>

									<%-- 상세페이지로 이동하기 위한 URL --%>
									<c:url value="/support/faq_detail.do" var="viewUrl">
										<c:param name="faq_id" value="${faq_id}" />
									</c:url>
									<tr>
										<td align="center">${faq_id}</td>
										<td align="center"><a href="${viewUrl}">${faq_title}</a></td>
										<td align="center">${reg_date}</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
				<div class="page">
					<!-- 페이지 번호 구현 -->
					<%-- 이전 그룹에 대한 링크 --%>
					<c:choose>
						<%-- 이전 그룹으로 이동 가능하다면? --%>
						<c:when test="${pageData.prevPage > 0}">
							<%-- 이동할 URL 생성 --%>
							<c:url value="/support/faq_list.do" var="prevPageUrl">
								<c:param name="page" value="${pageData.prevPage}" />
								<c:param name="keyword" value="${keyword}" />
							</c:url>
							<a href="${prevPageUrl}">[ < ]</a>
						</c:when>
						<c:otherwise>
			            	[ < ]
			        	</c:otherwise>
					</c:choose>

					<%-- 페이지 번호 (시작 페이지 부터 끝 페이지까지 반복) --%>
					<c:forEach var="i" begin="${pageData.startPage}"
						end="${pageData.endPage}" varStatus="status">
						<%-- 이동할 URL 생성 --%>
						<c:url value="/support/faq_list.do" var="pageUrl">
							<c:param name="page" value="${i}" />
							<c:param name="keyword" value="${keyword}" />
						</c:url>

						<%-- 페이지 번호 출력 --%>
						<c:choose>
							<%-- 현재 머물고 있는 페이지 번호를 출력할 경우 링크 적용 안함 --%>
							<c:when test="${pageData.nowPage == i}">
								<strong>[${i}]</strong>
							</c:when>
							<%-- 나머지 페이지의 경우 링크 적용함 --%>
							<c:otherwise>
								<a href="${pageUrl}">[${i}]</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>

					<%-- 다음 그룹에 대한 링크 --%>
					<c:choose>
						<%-- 다음 그룹으로 이동 가능하다면? --%>
						<c:when test="${pageData.nextPage > 0}">
							<%-- 이동할 URL 생성 --%>
							<c:url value="/support/faq_list.do" var="nextPageUrl">
								<c:param name="page" value="${pageData.nextPage}" />
								<c:param name="keyword" value="${keyword}" />
							</c:url>
							<a href="${nextPageUrl}">[ > ]</a>
						</c:when>
						<c:otherwise>
			            	[ > ]
			        	</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
$(function() {
	$(document).on('click', '.searchButton', function(e) {
		e.preventDefault();
		var url = "${pageContext.request.contextPath}/support/faq_list.do";
		url = url + "?searchType=" + $('#searchType').val();
		url = url + "&keyword=" + $('#keyword').val();
		location.href = url;		
	});
});
</script>
<%@ include file="../_inc/footer.jsp"%>