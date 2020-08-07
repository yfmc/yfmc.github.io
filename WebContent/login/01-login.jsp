<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp" %>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/login_01login.css?time=<%=System.currentTimeMillis()%>" />
    <div id="content">
            <h2>로그인</h2>
            <div id="lginput">
                <form>
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon1"><i class="fas fa-user-circle"></i></span>
                    <input type="text" class="form-control" id="user_id" placeholder="아이디를 입력해주세요." aria-describedby="sizing-addon1">
                </div>
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon1"><i class="fas fa-key"></i></span>
                    <input type="password" class="form-control" id="user_pw" placeholder="비밀번호를 입력해주세요." aria-describedby="sizing-addon1">
                </div>
                <div class="loginpb">
                    <a href="<%=request.getContextPath()%>/login/02-findidpassword.jsp" class="fgidpw">ID/PW찾기</a>
                    <a href="#" class="noid">회원가입</a>
                </div>
                <div class="loginbt">
                
                    <button type="button" class="btn btn-primary" id="btn_login">로그인</button>
             
                   
           
                </div>
                </form>
            </div>
        </div>
<script src="../js_files/login_01login.js"></script>
<%@ include file="../_inc/footer.jsp" %>