<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/account_02putEmail.css?time=<%=System.currentTimeMillis()%>" />


<div id="content">
	<ul>
		<li><font color="#00a1c9">1단계: 이메일 인증</font></li>
		<li>2단계: 약관동의</li>
		<li>3단계: 정보입력</li>
		<li>4단계: 가입완료</li>
	</ul>
	<div class="joining">
		<form name="email_form" id="email_form">
			<div class="emails">
				<div class="input-group">
					<label for="user_email">이메일 주소</label> 
					<input id="user_email" name="user_email" type="text" placeholder="이메일 주소를 입력해주세요">
				</div>
				<div class="input-group">
					<label for="email_check">이메일 주소 확인</label> 
					<input id="email_check" name="email_check" type="text" placeholder="이메일 주소를 입력해주세요" disabled>
				</div>
				<div class="buttons">
					<a href="<%=request.getContextPath()%>/account/03-emailCode.jsp">
						<button type="submit" class="btn btn-default" id="email_submit" disabled>인증번호 전송</button>
						
					</a> 
					<a href="<%=request.getContextPath()%>/account/01-welcome.jsp">
						<button type="button" class="btn btn-default">취소</button>
					</a>
				</div>
			</div>
			<div class="check_btn">
				<button type="button" class="btn btn-default" id="email_uniq_check">중복확인</button>
				<input type="hidden" name="checked_email" value="">
			</div>
		</form>
	</div>
</div>

<script src="../plugins/validate/jquery.validate.min.js"></script>
<script src="../plugins/validate/additional-methods.min.js"></script>
<script src="../js_files/account_02putEmail.js"></script>

<%@ include file="../_inc/footer.jsp"%>