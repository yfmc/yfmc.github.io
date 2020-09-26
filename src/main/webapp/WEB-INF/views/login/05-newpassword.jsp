<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp" %>
<title>비밀번호 재설정 | Cinephile</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/login_05newpassword.css?time=<%=System.currentTimeMillis()%>" />

    <div id="content">
     <form id="pwagain" method="post" action="${pageContext.request.contextPath}/login/setNewPw.do">
            <input type="hidden" name="user_email" id="user_email" value="${user_email}"/>
            <h2>비밀번호 재설정</h2>
            <div id="newpw">
                <div class="passwords">
                
                        <div class="input-group">
                           
                            <label for="user_pw">새로운 비밀번호</label>
                            <input id="user_pw" type="password" name="user_pw" placeholder="영문,숫자,특수문자  조합 8자리 이상">
                            
                        </div>
                        
                        <div class="input-group">
                            
                            <label for="check_pw">비밀번호 확인</label>
                            <input id=check_pw" type="password" name="check_pw" placeholder="영문,숫자,특수문자 조합 8자리 이상">
                            
                        </div>
                 
                </div>
                <div class="buttons">
                
                    <button type="submit" class="btn btn-default">비밀번호 재설정</button>
                   	<a href="<%=request.getContextPath()%>/login/02-findidpassword.do"><button type="button" class="btn btn-default">취소</button></a>
                </div>
            </div>
            </form>
        </div>

<script src="../assets/plugins/validate/jquery.validate.min.js"></script>
<script src="../assets/plugins/validate/additional-methods.min.js"></script>
<script src="../assets/js_files/login_05newpassword.js"></script>
<%@ include file="../_inc/footer.jsp" %>