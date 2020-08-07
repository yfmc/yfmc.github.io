<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp" %>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/login_05newpassword.css?time=<%=System.currentTimeMillis()%>" />

    <div id="content">
            <h2>비밀번호 재설정</h2>
            <div id="newpw">
                <div class="passwords">
                        <div class="input-group">
                            <form>
                            <label for="code">새로운 비밀번호</label>
                            <input id="code" type="text" placeholder="영문, 숫자 조합 8자리 이상">
                            </form>
                        </div>
                        <div class="input-group">
                            <form>
                            <label for="code">비밀번호 확인</label>
                            <input id="code" type="text" placeholder="영문, 숫자 조합 8자리 이상">
                            </form>
                        </div>
                </div>
                <div class="buttons">
                    <button type="button" class="btn btn-default">비밀번호 재설정</button>
                   	<a href="<%=request.getContextPath()%>/login/02-findidpassword.jsp"><button type="button" class="btn btn-default">취소</button></a>
                </div>
            </div>
        </div>
<%@ include file="../_inc/footer.jsp" %>