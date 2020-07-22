<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>Hello Bootstrap</title>
    <!-- 필요CSS -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HeaderFooterYo.css" />
    <!-- //필요CSS -->
    <!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <!-- //부트스트랩 -->
    <!-- 구글폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Montserrat+Subrayada:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
    <!-- //구글폰트 -->

</head>

<body>
    <div id="container">
        <div id="header">
        	<div class="filmlogo_header">
        		<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FnogAg%2FbtqFWY15hQN%2FVGrVJLX5KA47ap52Q6jHZK%2Fimg.png" href="../index.jsp" />
            </div>
            <div class="menu">
                <ul class="mainnav">
                    <li class="nav">
                        <a href="#" class="mains">영화</a>
                        <ul class="subnav">
                            <li><a href="#">박스오피스</a></li>
                            <li><a href="#">영화검색</a></li>
                            <li><a href="#">영화소식</a></li>
                            <li><a href="#">통계</a></li>
                        </ul>
                    </li>
                    <li class="nav">
                        <a href="#" class="mains">예매</a>
                        <ul class="subnav">
                            <li><a href="#">예매하기</a></li>
                            <li><a href="#">극장별시간표</a></li>
                        </ul>
                    </li>
                    <li class="nav"><a href="#" class="mains">극장</a></li>
                    <li class="nav">
                        <a href="#" class="mains">고객센터</a>
                        <ul class="subnav">
                            <li><a href="#">공지사항</a></li>
                            <li><a href="#">자주찾는질문</a></li>
                            <li><a href="#">1:1문의</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="right_top">
                <ul>
                    <li><a href="<%=request.getContextPath()%>/login/01-login.jsp">로그인</a></li>
                    <li><a href="<%=request.getContextPath()%>/account/01-welcome.jsp">&nbsp;회원가입</a></li>
                    <li><a href="<%=request.getContextPath()%>/mypage/mypagemain.jsp">&nbsp;마이페이지</a></li>
                </ul>
            </div>
        </div>