<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>CInephile 관리자 페이지</title>
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" >
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css" >
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/admin.css" >
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/plugins/datatables/datatables.min.css" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css">
    
    <script src="https://kit.fontawesome.com/2de30be98d.js" crossorigin="anonymous"></script>
	<script src='https://code.jquery.com/jquery-3.5.1.min.js'></script>
	<script src="https://stackpath.bootstracdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
</head>

<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <a class="navbar-brand" href="<%=request.getContextPath()%>/assets/admin/admin_home.jsp">Cinephile 관리자</a>
            </div>
            <ul class="nav navbar-top-links navbar-right">
                <li class="divider"></li>
                <li><a href="<%=request.getContextPath()%>/admin/admin_login.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                </li>
            </ul>
            <div class="navbar-default navbar-static-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="side-menu">
                	    <li>
                            <a class="sidebar_link <% if (request.getRequestURI().indexOf("home") > -1) { %>on<%} %>" href="<%=request.getContextPath()%>/admin/admin_home.jsp">홈</a>
                        </li>
                  		<li>
                            <a class="sidebar_link <% if (request.getRequestURI().indexOf("notice") > -1) { %>on<%} %>" href="<%=request.getContextPath()%>/admin/admin_notice_list.jsp">공지사항 관리</a>
                        </li>
                        <li>
                            <a class="sidebar_link <% if (request.getRequestURI().indexOf("qna") > -1) { %>on<%} %>" href="<%=request.getContextPath()%>/admin/admin_qna_list.jsp">1:1문의 관리</a>
                        </li>
                        <li>
                            <a class="sidebar_link <% if (request.getRequestURI().indexOf("faq") > -1) { %>on<%} %>" href="<%=request.getContextPath()%>/admin/admin_faq_list.jsp">자주찾는질문 관리</a>
                        </li>
                        <li>
                            <a class="sidebar_link <% if (request.getRequestURI().indexOf("member") > -1) { %>on<%} %>" href="<%=request.getContextPath()%>/admin/admin_member.jsp">회원 관리</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>