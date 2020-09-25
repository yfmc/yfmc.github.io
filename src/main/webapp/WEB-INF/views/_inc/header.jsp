<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="study.spring.cinephile.model.Members" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	//세션값 가져오기
	Members loginInfo = (Members) session.getAttribute("login_info");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">

    <!-- 필요CSS -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/HeaderFooterYo.css" />


    <!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">


    <!-- 구글폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Montserrat+Subrayada:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">


    <!-- 폰트어썸 -->
	<script src="https://kit.fontawesome.com/2de30be98d.js" crossorigin="anonymous"></script>

	<!-- JS참조 -->
    <script src='https://code.jquery.com/jquery-3.5.1.min.js'></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
	<script src="${pageContext.request.contextPath}/assets/js_files/headerMenuSlide.js"></script>

</head>

<body>
    <div id="container">
        <div id="header">
        	<div class="filmlogo_header">
        		<a href="${pageContext.request.contextPath}/index.do"><img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FnogAg%2FbtqFWY15hQN%2FVGrVJLX5KA47ap52Q6jHZK%2Fimg.png" /></a>
            </div>
            <div class="menu">
                <ul class="mainnav">
                    <li class="nav">
                        <a href="${pageContext.request.contextPath}/movie/nowMoving.do" class="mains">영화</a>
                        <ul class="subnav">
                            <li><a href="${pageContext.request.contextPath}/movie/nowMoving.do">박스오피스</a></li>
                            <li><a href="${pageContext.request.contextPath}/movie/MovieSearch.do">영화검색</a></li>
                            <li><a href="${pageContext.request.contextPath}/movie/MovieNews1.do">영화소식</a></li>
                            <li><a href="${pageContext.request.contextPath}/movie/Statistics.do">통계</a></li>
                        </ul>
                    </li>
                    <li class="nav">
                        <a href="${pageContext.request.contextPath}/booking/01-booking_time.do" class="mains">예매</a>
                        <ul class="subnav">
                            <li><a href="${pageContext.request.contextPath}/booking/01-booking_time.do">예매하기</a></li>
                            <li><a href="${pageContext.request.contextPath}/timetable">극장별시간표</a></li>
                        </ul>
                    </li>
                    <li class="nav"><a href="${pageContext.request.contextPath}/branch" class="mains">극장</a></li>
                    <li class="nav">
                        <a href="<%=request.getContextPath()%>/support/support_home.do" class="mains">고객센터</a>
                        <ul class="subnav">
                            <li><a href="<%=request.getContextPath()%>/support/notice_list.do">공지사항</a></li>
                            <li><a href="<%=request.getContextPath()%>/support/faq_list.do">자주찾는질문</a></li>
                            <li><a href="<%=request.getContextPath()%>/support/qna.do">1:1문의</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="right_top">
                <ul>
                <%--JSTL을 통해 세션에 직접 접근하기--%>
                <c:choose>
                	<c:when test="${loggedIn == null}">
                    <li><a href="${pageContext.request.contextPath}/login/01-login.do" class="login">로그인</a></li>
                    <li><a href="${pageContext.request.contextPath}/account/01-welcome.do">&nbsp;회원가입</a></li>
                    </c:when>
					<c:otherwise>                   
                     <li id="logout"><a href="${pageContext.request.contextPath}/login/logout.do">로그아웃</a></li>
                    </c:otherwise>
                </c:choose>
                    
                    <li><a href="<%=request.getContextPath()%>/mypage/mypagemain.do">&nbsp;마이페이지</a></li>
                   <%-- <li><a href="${pageContext.request.contextPath}/account/05-putMemInfo.do">&nbsp;회원가입지름길</a></li> --%>
                   <li><a href="<%=request.getContextPath()%>/admin/admin_home.do">&nbsp;관리자페이지</a></li>
                </ul>
            </div>
        </div>
