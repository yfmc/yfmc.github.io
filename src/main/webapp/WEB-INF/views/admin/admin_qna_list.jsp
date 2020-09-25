<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../_inc/admin_header.jsp" %>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">1:1문의</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="qna_list panel panel-default">
                        <div class="panel-heading">
                            1:1 문의 관리
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
						<table class="table table-striped table-bordered table_qna_list">
							<thead>
								<tr>
									<th style="width: 10%; text-align:center;">번호</th>
									<th style="width: auto; text-align:center;">제목</th>
									<th style="width: 10%; text-align:center;">작성자</th>
									<th style="width: 15%; text-align:center;">작성일</th>
									<th style="width: 10%; text-align:center;">답변 여부</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<%-- 조회결과가 없는 경우 --%>
									<c:when test="${output == null || fn:length(output)==0}">
										<tr>
											<td colspan="5" align="center">조회 결과 없음</td>
										</tr>
									</c:when>
									<%-- 조회결과가 있는 경우 --%>
									<c:otherwise>
										<%-- 조회 결과에 따른 반복처리 --%>
										<c:forEach var="item" items="${output}" varStatus="status">
											<%-- 출력을 위해 준비한 qna데이터 --%>
											<c:set var="qna_id" value="${item.qna_id}" />
											<c:set var="qna_title" value="${item.qna_title}" />
											<c:set var="user_name" value="${item.user_name}" />
											<c:set var="reg_date" value="${item.reg_date}" />
											<c:set var="answer_check" value="${item.answer_check}" />

											<%-- 상세페이지로 이동하기 위한 URL --%>
											<c:url value="/admin/admin_qna_detail.do" var="viewUrl">
												<c:param name="qna_id" value="${item.qna_id}" />
											</c:url>
											<tr>
												<td align="center">${qna_id}</td>
												<td align="center"><a href="${viewUrl}">${qna_title}</a></td>
												<td align="center">${user_name}</td>
												<td align="center">${reg_date}</td>
												<td align="center">${answer_check}</td>
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
									<c:url value="/admin/admin_qna_list.do" var="prevPageUrl">
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
							<c:forEach var="i" begin="${pageData.startPage}" end="${pageData.endPage}" varStatus="status">
								<%-- 이동할 URL 생성 --%>
								<c:url value="/admin/admin_qna_list.do" var="pageUrl">
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
									<c:url value="/admin/admin_qna_list.do" var="nextPageUrl">
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
            </div>
        </div>
<%@ include file="../_inc/admin_footer.jsp" %>