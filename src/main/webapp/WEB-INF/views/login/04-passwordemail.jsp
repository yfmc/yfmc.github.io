<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp" %>
<title>비밀번호 찾기 이메일 인증 | Cinephile</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/login_04passwordmail.css?time=<%=System.currentTimeMillis()%>" />


    <div id="content">
            <h2>이메일 인증</h2>
            <div id="pwEmail">
                <p class="info">
                    입력하신 이메일 주소로 인증번호 6자리가 전송되었습니다.
                    인증번호를 입력해 주세요. <span id="timer"></span>
                </p>
                <div class="variCode">
                        <div class="input-group">
                            <form id="codesubmit" <%--method="get" action="${pageContext.request.contextPath}/login/04-passwordemail_ok.do" --%>>
                            <input type="hidden" name="user_email" id="user_email" value="${user_email}"/>
                            <label for="code_check">인증번호</label>
                            <input id="code_check" type="text" name="code_check" placeholder="인증번호를 입력해주세요.">
                            <button type="submit" class="btn btn-default">확인</button>
                            </form>
                        </div>
                </div>
                <form method="get" action="${pageContext.request.contextPath}/login/goPwCode.do">
                <div class="nomail">
                    <p>메일을 받지 못하였나요?</p>
                    <input type="hidden" name="user_email" id="user_email" value="${user_email}"/>
                    <button type="submit" class="btn btn-default" id="code_again">인증번호 다시 보내기</button>
                </div>
                </form>
            </div>
        </div>
<script src="../assets/js_files/login_04passwordemail.js"></script>
<%@ include file="../_inc/footer.jsp" %>