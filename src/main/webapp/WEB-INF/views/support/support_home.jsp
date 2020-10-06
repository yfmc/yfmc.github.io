<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../_inc/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/support_home.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/support_sidebar.css?time=<%=System.currentTimeMillis()%>">

    <title>고객센터 홈</title>
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
            <!-- ==== 본문 시작 ==== -->
            <div class="content">
	            <div class="support_title">
	                <h2>고객센터</h2>
	            </div>
                <div class="service">
                    <h3>자주찾는 서비스</h3>
                    <ul class="service_list">
                        <li class="find_id_pw"><a href="<%=request.getContextPath()%>/login/02-findidpassword.do"><i class="far fa-address-card"></i><br>아이디 / 비밀번호 찾기</a></li>
                        <li class="check_ticket"><a href="<%=request.getContextPath()%>/mypage/bookinglist.do"><i class="far fa-calendar-alt"></i><br>예매 / 예매취소 내역확인</a></li>
                        <li class="my_qna"><a href="<%=request.getContextPath()%>/mypage/inquirylist.do"><i class="fas fa-bullhorn"></i><br>나의 문의내역 확인</a></li>
                    	<li class="rent"><a href="<%=request.getContextPath()%>/support/rent.do"><i class="fas fa-users"></i><br>대관문의</a></li>
                    </ul>
                </div>
                <div class="notice_wrap">
                    <div class="row">
                        <div class="pre notice_pre pull-left">
                            <div class="title_area">
                                <h3>공지사항<a href="<%=request.getContextPath()%>/support/notice_list.do" class="more pull-right">더보기 > </a></h3>
                                <div id="notice_list_body">
                                	<table>
                                		<thead>
                                			<tr>
	                                			<th style="width: 25px;"></th>
	                                			<th style="width: auto;"></th>
	                                			<th style="width: 85px;"></th>
                                			</tr>
                                		</thead>
                                		<tbody>
                                			<c:choose>
                                				<%-- 조회결과가 없는 경우 --%>
                                				<c:when test="${noticeList == null || fn:length(noticeList)==0}">
                                					<tr>
                                						<td colspan="3" align="center">조회 결과 없음</td>
                                					</tr>
                                				</c:when>
                                				<%-- 조회결과가 있는 경우 --%>
                                				<c:otherwise>
                                					<c:forEach var="item1" items="${noticeList}" varStatus="status" begin="0" end="4" step="1">
                                						<%-- 출력을 위해 준비한 notice데이터 --%>
                                						<c:set var="notice_id" 		value="${fn:length(noticeList)-status.index}" />
                                						<c:set var="notice_title" 		value="${item1.notice_title}" />
                                						<c:set var="reg_date" 			value="${item1.reg_date}" />
                                						
                                						<%-- 상세페이지로 이동하기 위한 URL --%>
                                						<c:url value="/support/notice_detail.do" var="viewUrl1">
                                							<c:param name="notice_id"  value="${notice_id}" />
                                						</c:url>
                                						<tr>
                                							<td align="center" >${notice_id}</td>
                                							<td align="center"><a href="${viewUrl1}">${notice_title}</a></td>
                                							<td align="center">${reg_date}</td>
                                						</tr>
                                					</c:forEach>
                                				</c:otherwise>
                                			</c:choose>
                                		</tbody>
                                	</table>
                                </div>
                            </div>
                        </div>
                        <div class="pre faq_pre pull-right">
                            <div class="title_area">
                                <h3>자주찾는 질문<a href="<%=request.getContextPath()%>/support/faq_list.do" class="more pull-right">더보기 > </a></h3>
                                <div id="faq_list_body">
                                	<table>
                                		<thead>
                                			<tr>
                                				<th style="width: 25px;"> </th>
                                				<th style="width: auto;"> </th>
                                				<th style="width: 85px;"> </th>
                                			</tr>
                                		</thead>
                                		<tbody>
                                			<c:choose>
                                				<%-- 조회결과가 없는 경우 --%>
                                				<c:when test="${faqList == null || fn:length(faqList)==0}">
                                					<tr>
                                						<td colspan="3" align="center">조회 결과 없음</td>
                                					</tr>
                                				</c:when>
                                				<%-- 조회결과가 있는 경우 --%>
                                				<c:otherwise>
                                					<c:forEach var="item2" items="${faqList}" varStatus="status" begin="0" end="4" step="1">
                                						<%-- 출력을 위해 준비한 notice데이터 --%>
                                						<c:set var="faq_id" 			value="${fn:length(faqList)-status.index}" />
                                						<c:set var="faq_title" 		value="${item2.faq_title}" />
                                						<c:set var="reg_date" 		value="${item2.reg_date}" />
                                						
                                						<%-- 상세페이지로 이동하기 위한 URL --%>
                                						<c:url value="/support/faq_detail.do" var="viewUrl2">
                                							<c:param name="faq_id"  value="${faq_id}" />
                                						</c:url>
                                						<tr>
                                							<td align="center">${faq_id}</td>
                                							<td align="center"><a href="${viewUrl2}">${faq_title}</a></td>
                                							<td align="center">${reg_date}</td>
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
                </div>
                <p> Cinephile 고객센터 : 1544-8282(상담가능시간, 월~금 09:00 ~ 18:00)</p>
            </div>
            <!-- ==== 본문 끝 ==== -->
        </div>
    </div>    
<%@ include file="../_inc/footer.jsp" %>
