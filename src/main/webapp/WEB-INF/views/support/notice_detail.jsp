<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../_inc/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/support_home.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/support_sidebar.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/support_detail.css?time=<%=System.currentTimeMillis()%>">
    <title>공지사항 글</title>
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
                    <div class="notice_title">
                        <h2>공지사항</h2>
                        <p>저희 영화관의 이슈 및 공지사항을 확인하실 수 있습니다.</p>
                    </div>
                    <table class="detail_content">
                        <thead>
                            <tr class="detail_title">
                                <th style="width: 100px;">${output.notice_id}</th>
                                <th style="width: auto;">${output.notice_title}</th>
                                <th style="width: 150px;">등록일 ${output.reg_date}</th>
                                <th style="width: 150px;">조회수 ${output.views}</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="detail_box">
                                <td colspan="4">
                                	${output.notice_content}
                                </td>
                            </tr>
                            <tr class="page_move" align="left">
                                <td colspan="4">                         
                                    <span class="page_next">다음글</span>
                                    <i class="fas fa-angle-up"></i>
                                    <a href="#" id="?">
                                    <span>다음 글이 없습니다.</span>
                                   	</a>
                                </td>
                            </tr>
                            <tr class="page_move" align="left">
                                <td colspan="4">
                                        <span class="page_prev">이전글</span>
                                        <i class="fas fa-angle-down"></i>
                                    	<a href="#" id="?">
                                        <span>공지사항 9</span>
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="list_button pull-right">
                        <a href="<%=request.getContextPath()%>/support/notice_list.do" class=" btn btn-success pull-right">목록으로</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- ==== 본문 끝 ==== -->
<%@ include file="../_inc/footer.jsp" %>