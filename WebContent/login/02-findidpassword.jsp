<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp" %>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/login_02findidpassword.css?time=<%=System.currentTimeMillis()%>" />

    <div id="content">

            <div id="findId">
                <h2 class="findId">아이디 찾기</h2>
                <form>

                <div class="input-group input-group-lg">

                    <input type="text" class="form-control" id="nameforid" placeholder="이 름" aria-describedby="sizing-addon1">
                </div>
                <div class="input-group input-group-lg">
                    <input type="text" class="form-control" id="emailforid" placeholder="이메일" aria-describedby="sizing-addon1">
                </div>

                <div class="loginbt">
                    <button type="button" class="btn btn-default" id="findid">아이디 찾기</button>
                    <a href="01-login.jsp"><button type="button" class="btn btn-default">취소</button></a>
                </div>
                </form>
            </div>

            <div id="findPw">
                <h2 class="findPd">비밀번호 찾기</h2>
                <form>

                <div class="input-group input-group-lg">

                    <input type="text" class="form-control" id="nameforpw" placeholder="이 름" aria-describedby="sizing-addon1">
                </div>
                <div class="input-group input-group-lg">

                    <input type="text" class="form-control" id="idforpw" placeholder="아이디" aria-describedby="sizing-addon1">
                </div>
                <div class="input-group input-group-lg">

                    <input type="text" class="form-control" id="emailforpw" placeholder="이메일" aria-describedby="sizing-addon1">
                </div>

                <div class="loginbt">
                    <button type="button" class="btn btn-default" id="findpw">비밀번호 찾기</button>
                    <a href="<%=request.getContextPath()%>/login/01-login.jsp"><button type="button" class="btn btn-default">취소</button></a>

                </div>
                </form>
            </div>
        </div>
<script src="../js_files/login_02findidpassword.js"></script>
<%@ include file="../_inc/footer.jsp" %>