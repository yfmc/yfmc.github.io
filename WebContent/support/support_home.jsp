<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/support_home.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/support_sidebar.css?time=<%=System.currentTimeMillis()%>">

    <title>고객센터 홈</title>
    <div class="row">
        <div id="contents">
            <!-- ==== 사이드 바 ==== -->
            <ul class="sidebar">
                <li class="list-group-item"><a href="<%=request.getContextPath()%>/support/support_home.jsp">고객센터 홈</a></li>
                <li class="list-group-item"><a href="<%=request.getContextPath()%>/support/notice_list.jsp">공지사항</a></li>
                <li class="list-group-item"><a href="<%=request.getContextPath()%>/support/faq_list.jsp">자주찾는 질문</a></li>
                <li class="list-group-item"><a href="<%=request.getContextPath()%>/support/qna.jsp">1:1 문의</a></li>
            </ul>
            <!-- ==== 사이드바 끝 ==== -->
            <!-- ==== 본문 시작 ==== -->
            <div class="content">
	            <div class="support_title">
	                <h2>고객센터 홈</h2>
	            </div>
                <div class="service">
                    <h3>자주찾는 서비스</h3>
                    <ul class="service_list">
                        <li><a href="#"><i class="far fa-address-card"></i><br>아이디 / 비밀번호 찾기</a></li>
                        <li><a href="#"><i class="far fa-calendar-alt"></i><br>예매 / 예매취소 내역확인</a></li>
                        <li><a href="#"><i class="fas fa-bullhorn"></i><br>나의 문의내역 확인</a></li>
                    </ul>
                </div>
                <div class="notice-wrap">
                    <div class="row">
                        <div class="pre notice_pre pull-left">
                            <div class="title_area">
                                <h3>공지사항<a href="<%=request.getContextPath()%>/support/notice_list.jsp" class="more pull-right">더보기 > </a></h3>
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
                        <div class="pre faq_pre pull-right">
                            <div class="title_area">
                                <h3>자주찾는 질문<a href="<%=request.getContextPath()%>/support/faq_list.jsp" class="more pull-right">더보기 > </a></h3>
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
            <!-- ==== 본문 끝 ==== -->
        </div>
    </div>
<%@ include file="../_inc/footer.jsp" %>
