<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../_inc/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/support_home.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/support_sidebar.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/support_qna.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/support_qna_complete.css?time=<%=System.currentTimeMillis()%>">
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
	            	<div class="rent_title">
	                    <h2>대관문의</h2>
	                    <ul>
		                	<li>개인이나 단체를 위한 대관서비스로 Cinephile의 넓고 쾌적한 극장에서 즐거운 추억을 만드실 수 있습니다.</li>
							<li>단체/대관 문의 외 문의나 불편사항은 이메일 문의로 작성 부탁드립니다.</li>
		                </ul>
	                </div>
	                <div class="complete_box">
	                	<div class="filmlogo_header">
			        		<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FnogAg%2FbtqFWY15hQN%2FVGrVJLX5KA47ap52Q6jHZK%2Fimg.png"  />
			            </div>
			            <div class="complete_title">
			            	<p>작성하신 대관문의내용이 정상적으로 <span style="color:#ff7787">접수완료</span> 되었습니다.</p>
			            </div>
			            <p class="complete_text">
			            	등록하신 연락처 및 이메일로 답변 드리겠습니다.<br>
			            	항상 노력하는 CinePhile이 되겠습니다.
			            </p>
			            <div class="btn_btm_wrap">
			            	<a href="<%=request.getContextPath()%>/mypage/inquirylist.do" class="btn btn-default">문의내역 확인</a>
			                <a href="<%=request.getContextPath()%>/support/support_home.do" class="btn btn-primary" >고객센터 홈으로</a>
			            </div>
	                </div>
	            </div>
	            <!-- ==== 본문 끝 ==== -->
	        </div>
	    </div>
<%@ include file="../_inc/footer.jsp" %>