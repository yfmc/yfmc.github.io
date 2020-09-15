<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<%@ include file="../_inc/header.jsp" %>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/account_06Complete.css?time=<%=System.currentTimeMillis()%>" />

    
<div id="content">
            <ul>
                <li>1단계: 이메일 인증</li>
                <li>2단계: 약관동의</li>
                <li>3단계: 정보입력</li>
                <li><font color="#00a1c9">4단계: 가입완료</font></li>
            </ul>
            <div class="joining">
                <div class="completetxt">
                    <p>
                        회원가입이 정상적으로 처리되었습니다.<br/>
                        <span class="user_name">장혁준</span> 고객님, <span class="insidelogo">cinephile </span> 회원이 되신 것을 환영합니다!
                    </p>
                </div>
                <div class="buttons">
                    <a href="<%=request.getContextPath()%>/login/01-login.jsp"><button type="button" class="btn btn-primary">로그인 하기</button></a>
                    <a href="<%=request.getContextPath()%>/index.jsp"><button type="button" class="btn btn-default">메인으로 가기</button></a>
                </div>
            </div>
        </div>

<%@ include file="../_inc/footer.jsp" %>