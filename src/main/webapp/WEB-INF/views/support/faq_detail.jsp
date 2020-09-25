<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../_inc/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/support_home.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/support_sidebar.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/support_detail.css?time=<%=System.currentTimeMillis()%>">
	<title>자주찾는 질문 글</title>
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
                <!-- ==== 본문 시작 ====-->
                <div class="content">
                    <div class="faq_title">
                        <h2>자주찾는 질문</h2>
						<p>
							회원님들께서 가장 자주하시는 질문을 모았습니다.<br />
							궁금하신 내용에 대해 검색해보세요.
						</p>
                    </div>
                    <table class="detail_content">
                        <thead>
                            <tr class="detail_title">
                                <th style="width: 100px;">${output.faq_id}</th>
                                <th style="width: auto;">${output.faq_title}</th>
                                <th style="width: 200px;">등록일 : ${output.reg_date}</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="detail_box">
                                <td colspan="3">
                                	${output.faq_content}
                                </td>
                            </tr>
                            <!-- 이전/다음 게시글 이동 -->
							<%-- 다음 게시글에 대한 링크 --%>
							<c:choose>
	                            <%-- 다음게시글이 없다면 --%>
	                            <c:when test="${nextFaq == null}">
		                            <tr class="page_move" align="left">
		                                <td colspan="3">                         
		                                    <span class="page_next">다음글</span>
		                                    <i class="fas fa-angle-up"></i>
		                                    <span>다음 글이 없습니다.</span>
		                                </td>
		                            </tr>
	                            </c:when>
	                            <%-- 다음게시글이 있다면 --%>
	                            <c:otherwise>
	                            	<tr class="page_move" align="left">
		                                <td colspan="3">                         
		                                    <span class="page_next">다음글</span>
		                                    <i class="fas fa-angle-up"></i>
		                                    <a href="<%=request.getContextPath()%>/support/faq_detail.do?faq_id=${nextFaq.faq_id}">
		                                    <span>${nextFaq.faq_title}</span>
		                                   	</a>
		                                </td>
		                            </tr>
	                            </c:otherwise>
	                        </c:choose>
	                        
							<%-- 이전 게시글에 대한 링크 --%>
							<c:choose>
								<%-- 이전 게시글로 이동이 불가능하다면 --%>
								<c:when test="${prevFaq == null}">
									<tr class="page_move" align="left">
										<td colspan="3">
										<span class="page_prev">이전글</span>
											<i class="fas fa-angle-down"></i>
											<span>이전 글이 없습니다.</span>
										</td>
									</tr>
								</c:when>
								<%-- 이전게시글로 이동이 가능하다면 --%>
								<c:otherwise>
									<tr class="page_move" align="left">
										<td colspan="3"><span class="page_prev">이전글</span>
											<i class="fas fa-angle-down"></i>
											<a href="<%=request.getContextPath()%>/support/faq_detail.do?faq_id=${prevFaq.faq_id}">
											<span>${prevFaq.faq_title}</span></a>
										</td>
									</tr>
								</c:otherwise>
							</c:choose>
                        </tbody>
                    </table>
                    <div class="list_button pull-right">
                        <a href="<%=request.getContextPath()%>/support/faq_list.do" class=" btn btn-success pull-right">목록으로</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- ==== 본문 끝 ==== -->
<%@ include file="../_inc/footer.jsp" %>