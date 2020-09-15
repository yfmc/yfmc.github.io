<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp" %>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/login_03successid.css?time=<%=System.currentTimeMillis()%>" />


    
    <div id="content">
            <h2>아이디 안내</h2>
            <div id="lgininfo">
                <p class="info">
                    장혁준 회원님의 ID는 newjhj31입니다.
                </p>

                <div class="loginbt">
                    <a href="<%=request.getContextPath()%>/login/01-login.jsp"><button type="button" class="btn btn-primary">로그인</button></a>
                    <a href="<%=request.getContextPath()%>/login/02-findidpassword.jsp"><button type="button" class="btn btn-default">비밀번호 찾기</button></a>
                </div>

            </div>
        </div>

<%@ include file="../_inc/footer.jsp" %>