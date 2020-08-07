<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<%@ include file="../_inc/header.jsp" %>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/account_03emailCode.css?time=<%=System.currentTimeMillis()%>" />

    <div id="content">
            <ul>
                <li>
                    <font color="#00a1c9">1단계: 이메일 인증</font>
                </li>
                <li>2단계: 약관동의</li>
                <li>3단계: 정보입력</li>
                <li>4단계: 가입완료</li>
            </ul>
            <div class="joining">
                <p class="info">
                    입력하신 이메일 주소로 인증번호 6자리가 전송되었습니다.
                    인증번호를 입력해 주세요.
                </p>
                <form>
                <div class="variCode">
                        <div class="input-group">
                            
                            <label for="code">인증번호</label>
                            <input id="code" type="text" placeholder="인증번호를 입력해주세요.">
                            
                            <button type="button" class="btn btn-default" id="code_submit">확인</button>
                            
                        </div>
                </div>
                <div class="nomail">
                    <p>메일을 받지 못하였나요?</p>
                    <button type="button" class="btn btn-default" id="code_again">인증번호 다시 보내기</button>
                </div>
                </form>
            </div>
        </div>
    
    
<script src="../js_files/account_03emailCode.js"></script>
<%@ include file="../_inc/footer.jsp" %>