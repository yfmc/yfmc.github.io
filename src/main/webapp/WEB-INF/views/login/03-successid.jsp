<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp" %>
<title>아이디 찾기 성공 | Cinephile</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/login_03successid.css?time=<%=System.currentTimeMillis()%>" />


    
    <div id="content">
            <h2>아이디 안내</h2>
            <div id="lgininfo">
                <p class="info">
                   ${output.user_name} 회원님의 ID는 ${output.user_id}입니다.
                </p>

                <div class="loginbt">
                    <a href="${pageContext.request.contextPath}/login/01-login.do"><button type="button" class="btn btn-primary">로그인</button></a>
                    <a href="${pageContext.request.contextPath}/login/02-findidpassword.do"><button type="button" class="btn btn-default">비밀번호 찾기</button></a>
                </div>

            </div>
        </div>

<%@ include file="../_inc/footer.jsp" %>