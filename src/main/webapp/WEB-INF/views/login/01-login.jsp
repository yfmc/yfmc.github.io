<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	session.setMaxInactiveInterval(1);
%>

<%@ include file="../_inc/header.jsp" %>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/login_01login.css?time=<%=System.currentTimeMillis()%>" />
<title>로그인 | Cinephile</title>

    <div id="content">
            <h2>로그인</h2>
            <div id="lginput">
                <form  id="login-form" name="login-form" >
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon1"><i class="fas fa-user-circle"></i></span>
                    <input type="text" class="form-control" id="user_id" name="user_id" placeholder="아이디를 입력해주세요." aria-describedby="sizing-addon1">
                </div>
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon1"><i class="fas fa-key"></i></span>
                    <input type="password" class="form-control" id="user_pw" name="user_pw" placeholder="비밀번호를 입력해주세요." aria-describedby="sizing-addon1">
                </div>
                
                <div class="loginpb">
                    <a href="<%=request.getContextPath()%>/login/02-findidpassword.do" class="fgidpw">ID/PW찾기</a>
                    <a href="<%=request.getContextPath()%>/account/01-welcome.do" class="noid">회원가입</a>
                </div>
                <div class="loginbt">     
                    <button type="submit" class="btn btn-primary" id="btn_login">로그인</button>
                </div>
                <div class="SNSlogin">
                <span>SNS 계정 로그인</span>
                <div class="Kakaologin">
                	<a id="kakao-login-btn" ><!-- <img src="../img/kakao_login.png"/> --></a>
                	<a href="http://developer.kakao.com/logout"></a>
                </div>
                </div>
                </form>
            </div>
        </div>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="../assets/js_files/login_01login.js"></script>
<script src="../assets/plugins/ajax_sws/ajax_helper.js"></script>
<%@ include file="../_inc/footer.jsp" %>