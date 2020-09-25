<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp" %>
<title>회원가입 | Cinephile</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/account_01welcome.css?time=<%=System.currentTimeMillis()%>" />
    
    <div id="content">
            <div class="welcomeimg">
                <img src="../assets/img/accountWelcome.png" alt="웰컴사인" />
            </div>
            <div class="welcometxt">
                <p>회원가입을 위해 이메일 인증이 필요합니다.</p>
                <a href="${pageContext.request.contextPath}/account/02-putEmail.do"><button type="button" class="btn btn-default">이메일 인증하기</button></a>
            </div>
        </div>

<%@ include file="../_inc/footer.jsp" %>