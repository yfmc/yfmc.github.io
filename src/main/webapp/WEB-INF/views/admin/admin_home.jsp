<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../_inc/admin_header.jsp"%>
<div id="page-wrapper">
	<div class="row">
		<h1 class="page-header">Cinephile 관리자 페이지</h1>
	</div>
	<div class="row">
		<div class="unanswer_list panel panel-default">
			<div class="panel-heading">
				1:1문의 미답변 목록
				<a href="<%=request.getContextPath()%>/admin/admin_qna_list.do" class="more pull-right">더보기 > </a>
			</div>
			<div class="panel-body">
				<table class="table table-striped table-bordered unanswer_table">
					<thead>
						<tr>
							<th style="width: 10%; text-align:center;">번호</th>
							<th style="width: auto; text-align:center;">제목</th>
							<th style="width: 15%; text-align:center;">작성자</th>
							<th style="width: 20%; text-align:center;">등록일</th>
						</tr>
						<%-- 미답변인 1:1문의내역만 가져오기 --%>
						<c:choose>
							<%-- 조회결과가 없는 경우 --%>
							<c:when test="${qnaList == null || fn:length(qnaList)==0}">
								<tr>
									<td colspan="4" align="center">미답변 내역이 없습니다.</td>
								</tr>
							</c:when>
							<%-- 조회결과가있는경우 --%>
							<c:otherwise>
								<c:forEach var="item" items="${qnaList}" varStatus="status" begin="0" end="3" step="1">
									<%-- 출력을 위한 1:1문의 데이터 --%>
									<c:set var="qna_id" value="${item.qna_id}" />
									<c:set var="qna_title" value="${item.qna_title}" />
									<c:set var="user_name" value="${item.user_name}" />
									<c:set var="reg_date" value="${item.reg_date}" />
									<c:set var="answer_check" value="${item.answer_check}" />
									<%-- 상세페이지로 이동하기 위한 URL --%>
									<c:url value="/admin/admin_qna_detail.do" var="viewUrl">
										<c:param name="qna_id" value="${qna_id}" />
									</c:url>
									<c:if test="${answer_check == '미답변'}">
										<tr>
											<td align="center">${qna_id}</td>
											<td align="center"><a href="${viewUrl}">${qna_title}</a></td>
											<td align="center">${user_name}</td>
											<td align="center">${reg_date}</td>
										</tr>
									</c:if>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</thead>
				</table>
			</div>
		</div>
		<div class="notice_list_pre panel panel-default">
			<div class="panel-heading">
				공지사항 목록
				<a href="<%=request.getContextPath()%>/admin/admin_notice_list.do" class="more pull-right">더보기 > </a>
			</div>
			<div class="panel-body">
				<table class="table table-striped table-bordered unanswer_table">
					<thead>
						<tr>
							<th style="width: 10%; text-align:center;">번호</th>
							<th style="width: auto; text-align:center;">제목</th>
							<th style="width: 20%; text-align:center;">등록일</th>
							<th style="width: 15%; text-align:center;">조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<%-- 조회결과가 없는 경우 --%>
							<c:when test="${noticeList == null || fn:length(noticeList)==0}">
								<tr>
									<td colspan="4" align="center">조회 결과 없음</td>
								</tr>
							</c:when>
							<%-- 조회결과가 있는 경우 --%>
							<c:otherwise>
								<c:forEach var="item" items="${noticeList}" varStatus="status" begin="0" end="3" step="1">
									<%-- 출력을 위해 준비한 notice데이터 --%>
									<c:set var="notice_id" 		value="${fn:length(noticeList)-status.index}" />
									<c:set var="notice_title" 		value="${item.notice_title}" />
									<c:set var="reg_date" 			value="${item.reg_date}" />
									<c:set var="views" 				value="${item.views}" />

									<%-- 상세페이지로 이동하기 위한 URL --%>
									<c:url value="/admin/admin_notice_detail.do" var="viewUrl">
										<c:param name="notice_id" value="${notice_id}" />
									</c:url>
									<tr>
										<td align="center">${notice_id}</td>
										<td align="center"><a href="${viewUrl}">${notice_title}</a></td>
										<td align="center">${reg_date}</td>
										<td align="center">${views}</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="../assets/plugins/datatables/datatables.min.js"></script>
<%@ include file="../_inc/admin_footer.jsp"%>