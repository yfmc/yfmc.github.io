<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>CInephile 관리자 페이지</title>
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css" >
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.min.css" >
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/admin.css" >
    <link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/datatables/datatables.min.css" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css">
</head>

<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <a class="navbar-brand" href="<%=request.getContextPath()%>/admin/admin_home.jsp">Cinephile 관리자</a>
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
                            <a href="<%=request.getContextPath()%>/admin/admin_home.jsp">홈</a>
                        </li>
                  		<li>
                            <a href="<%=request.getContextPath()%>/admin/admin_notice_list.jsp">공지사항 관리</a>
                        </li>
                        <li>
                            <a href="<%=request.getContextPath()%>/admin/admin_qna_list.jsp">1:1문의 관리</a>
                        </li>
                        <li>
                            <a href="<%=request.getContextPath()%>/admin/admin_faq_list.jsp">자주찾는질문 관리</a>
                        </li>
                        <li>
                            <a href="#">회원 관리</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>