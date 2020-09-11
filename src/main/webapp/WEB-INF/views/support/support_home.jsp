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
	                <li class="list-group-item"><a class="sidebar_link <% if (request.getRequestURI().indexOf("support_home") > -1) { %>on<%} %>" href="<%=request.getContextPath()%>/support/support_home.jsp">고객센터 홈</a></li>
	                <li class="list-group-item"><a class="sidebar_link <% if (request.getRequestURI().indexOf("notice") > -1) { %>on<%} %>" href="<%=request.getContextPath()%>/support/notice_list.jsp">공지사항</a></li>
	                <li class="list-group-item"><a class="sidebar_link <% if (request.getRequestURI().indexOf("faq") > -1) { %>on<%} %>" href="<%=request.getContextPath()%>/support/faq_list.jsp">자주찾는 질문</a></li>
	                <li class="list-group-item"><a class="sidebar_link <% if (request.getRequestURI().indexOf("qna") > -1) { %>on<%} %>" href="<%=request.getContextPath()%>/support/qna.jsp">1:1 문의</a></li>
	            	<li class="list-group-item"><a class="sidebar_link <% if (request.getRequestURI().indexOf("rent") > -1) { %>on<%} %>" href="<%=request.getContextPath()%>/support/rent.jsp">대관문의</a></li>
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
                        <li class="find_id_pw"><a href="<%=request.getContextPath()%>/login/02-findidpassword.jsp"><i class="far fa-address-card"></i><br>아이디 / 비밀번호 찾기</a></li>
                        <li class="check_ticket"><a href="<%=request.getContextPath()%>/mypage/bookinglist.jsp"><i class="far fa-calendar-alt"></i><br>예매 / 예매취소 내역확인</a></li>
                        <li class="my_qna"><a href="<%=request.getContextPath()%>/mypage/inquirylist.jsp"><i class="fas fa-bullhorn"></i><br>나의 문의내역 확인</a></li>
                    	<li class="rent"><a href="<%=request.getContextPath()%>/support/rent.jsp"><i class="fas fa-users"></i><br>대관문의</a></li>
                    </ul>
                </div>
                <div class="notice_wrap">
                    <div class="row">
                        <div class="pre notice_pre pull-left">
                            <div class="title_area">
                                <h3>공지사항<a href="<%=request.getContextPath()%>/support/notice_list.jsp" class="more pull-right">더보기 > </a></h3>
                                <div id="notice_list_body">
                                	<!-- Ajax 결과 위치 -->
                                </div>
                            </div>
                        </div>
                        <div class="pre faq_pre pull-right">
                            <div class="title_area">
                                <h3>자주찾는 질문<a href="<%=request.getContextPath()%>/support/faq_list.jsp" class="more pull-right">더보기 > </a></h3>
                                <div id="faq_list_body">
                                	<!-- Ajax 결과 위치 -->
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
    <script src="../plugins/handlebars/handlebars-v4.0.11.js"></script>
    <script id="notice_list_tmpl" type="text/x-handlebars-template">
    	{{#notice_list}}
    	<a href="<%=request.getContextPath()%>/support/notice_detail.jsp" class="list-group-item">
    	<span>{{noticename}}</span>
    	<span class="date pull-right">{{date}}</span>
    	{{/notice_list}}
    </script>
    <script id="faq_list_tmpl" type="text/x-handlebars-template">
    	{{#faq_list}}
    	<a href="<%=request.getContextPath()%>/support/faq_detail.jsp" class="list-group-item">
    	<span>{{faqname}}</span>
    	<span class="date pull-right">{{date}}</span>
    	{{/faq_list}}
    </script>
    <script type="text/javascript">
    	function get_notice_list() {
    		$.get("../api/support_home_list.json", function(req) {
    			var template = Handlebars.compile($("#notice_list_tmpl").html());
    			var html = template(req);
    			$("#notice_list_body").append(html);
    		});
    	}
    	function get_faq_list() {
    		$.get("../api/support_home_list.json", function(req) {
    			var template = Handlebars.compile($("#faq_list_tmpl").html());
    			var html = template(req);
    			$("#faq_list_body").append(html);
    		});
    	}
    	$(function() {
    		get_notice_list();
    		get_faq_list();
    	});
    </script>
<%@ include file="../_inc/footer.jsp" %>
