<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp" %>
<title>아이디 or 비밀번호 찾기 | Cinephile</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/login_02findidpassword.css?time=<%=System.currentTimeMillis()%>" />

    <div id="content">

            <div id="findId">
                <h2 class="findId">아이디 찾기</h2>
                <form id="find__id">

                <div class="input-group input-group-lg">

                    <input type="text" class="form-control" id="nameforid" name="user_name" placeholder="이 름" aria-describedby="sizing-addon1">
                </div>
                <div class="input-group input-group-lg">
                    <input type="text" class="form-control" id="emailforid" name="user_email" placeholder="이메일" aria-describedby="sizing-addon1">
                </div>

                <div class="loginbt">
                    <button type="submit" class="btn btn-default" id="findid">아이디 찾기</button>
                    <a href="<%=request.getContextPath()%>/login/01-login.do"><button type="button" class="btn btn-default">취소</button></a>
                </div>
                </form>
            </div>

            <div id="findPw">
                <h2 class="findPd">비밀번호 찾기</h2>
                <form id="find__pw">

                <div class="input-group input-group-lg">

                    <input type="text" class="form-control" id="nameforpw" name="user_name" placeholder="이 름" aria-describedby="sizing-addon1">
                </div>
                <div class="input-group input-group-lg">

                    <input type="text" class="form-control" id="idforpw" name="user_id" placeholder="아이디" aria-describedby="sizing-addon1">
                </div>
                <div class="input-group input-group-lg">

                    <input type="text" class="form-control" id="emailforpw" name="user_email" placeholder="이메일" aria-describedby="sizing-addon1">
                </div>

                <div class="loginbt">
                    <button type="submit" class="btn btn-default" id="findpw">비밀번호 찾기</button>
                    <a href="<%=request.getContextPath()%>/login/01-login.do"><button type="button" class="btn btn-default">취소</button></a>

                </div>
                </form>
            </div>
        </div>
<script src="../assets/js_files/login_02findidpassword.js"></script>
<%@ include file="../_inc/footer.jsp" %>