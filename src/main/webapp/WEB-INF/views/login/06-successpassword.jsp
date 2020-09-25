<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp" %>
<title>비밀번호 변경 성공 | Cinephile</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/login_06successpassword.css?time=<%=System.currentTimeMillis()%>" />
    
    <div id="content">
            <h2>비밀번호 재설정</h2>
            <div id="lgininfo">
                <p class="info">
                    비밀번호가 성공적으로 재설정되었습니다.
                </p>

                <div class="loginbt">
                    <a href="<%=request.getContextPath()%>/login/01-login.do"><button type="button" class="btn btn-primary">로그인</button></a>

                </div>

            </div>
        </div>
<%@ include file="../_inc/footer.jsp" %>