<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/support_sidebar.css">
<style type="text/css">
    .sidebar {
        width: 200px;
        padding: 10px;
        font-weight: bold;
        font-size: 16px;
        float: left;
        margin-top: 20px;
    }

    .sidebar li a {
        display: block;
        width: auto;
    }

    #contents {
        width: 900px;
        min-height: 300px;
        margin: 0px 0px 50px 30px;
        padding-left: 15px;
        float: left;
    }

    #contents h2 {
        padding-bottom: 10px;
        font-size: 30px;
        font-weight: bold;
    }

    #contents h3 {
        padding: 0px 10px 10px 10px;
        font-size: 20px;
        font-weight: bold;
    }

    .btn-default {
        height: 50px;
        margin: 10px;
    }

    .notice-wrap {
        border-bottom: 1px solid #cacac1;
        margin-bottom: 20px;
        padding-bottom: 50px;
    }

    .notice-wrap h3 {
        border-bottom: 1px solid #000;
    }

    .notice_pre {
        display: block;
        float: left;
        padding: 0px;
    }

    .faq_pre {
        display: block;
        float: left;
        padding: 0px;
    }

    .btn-link {
        margin: 0px 0px 0px 0px;
        padding: 0;
    }
    </style>
    <title>고객센터 홈</title>
		<!-- 사이드 바 -->
        <ul class="sidebar">
            <li class="list-group-item"><a href="<%=request.getContextPath()%>/support/support_home.jsp">고객센터 홈</a></li>
            <li class="list-group-item"><a href="<%=request.getContextPath()%>/support/notice_list.jsp">공지사항</a></li>
            <li class="list-group-item"><a href="<%=request.getContextPath()%>/support/faq_list.jsp">자주찾는 질문</a></li>
            <li class="list-group-item"><a href="<%=request.getContextPath()%>/support/qna.jsp">1:1 문의</a></li>
        </ul>
        <div class="row">
            <div id="contents">
                <h2>고객센터 홈</h2>
                <div class="service">
                    <h3>자주찾는 서비스</h3>
                    <button type="button" class="btn btn-default">아이디/ 비밀번호 찾기</button><button type="button" class="btn btn-default">예매 / 예매취소 내역확인</button>
                    <button type="button" class="btn btn-default">나의 문의내역 확인</button>
                </div>
                <div class="notice-wrap">
                    <div class="row">
                        <div class="notice_pre col-xs-5">
                            <div class="title_area">
                                <h3>공지사항<button type="button" class="btn btn-link pull-right">더보기 > </button></h3>
                                <a href="#" class="list-group-item">
                                    <p class="list-group-item-text">공지사항 10</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <p class="list-group-item-text">공지사항 9</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <p class="list-group-item-text">공지사항 8</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <p class="list-group-item-text">공지사항 7</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <p class="list-group-item-text">공지사항 6</p>
                                </a>
                            </div>
                        </div>
                        <div class="faq_pre pull-right col-xs-5">
                            <div class="title_area">
                                <h3>자주찾는 질문<button type="button" class="btn btn-link pull-right">더보기 > </button></h3>
                                <a href="#" class="list-group-item">
                                    <p class="list-group-item-text">자주찾는 질문 10</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <p class="list-group-item-text">자주찾는 질문 9</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <p class="list-group-item-text">자주찾는 질문 8</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <p class="list-group-item-text">자주찾는 질문 7</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <p class="list-group-item-text">자주찾는 질문 6</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <p> Cinephile 고객센터 : 1544-8282(상담가능시간, 월~금 09:00 ~ 18:00)</p>
            </div>
        </div>
<%@ include file="../_inc/footer.jsp" %>
