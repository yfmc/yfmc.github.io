<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp" %>
<%
	//세션 유효시간 설정(초단위, 기본값 5분 ) -> 모든 페이지마다 개별 설정함.
	session.setMaxInactiveInterval(60);
	
	//"mysession"이라는 이름으로 저장된 Session 객체 추출
	//-> Object 타입으로 형변환 되어 저장되므로,
	// 추출시에는 원래의 형태로 명시적 변환이 필요하다.
	String mySession = (String) session.getAttribute("mysession");
%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/account_05putMemberInfo.css?time=<%=System.currentTimeMillis()%>" />


<div id="content">
            <ul>
                <li>1단계: 이메일 인증</li>
                <li>2단계: 약관동의</li>
                <li>
                    <font color="#00a1c9">3단계: 정보입력</font>
                </li>
                <li>4단계: 가입완료</li>
            </ul>
            <div class="joining">
                <div class="essential">
                    <p>* 항목은 필수입력 사항입니다. </p>
                </div>
                <form name="join_form" id="join_form" action="${pageContext.request.contextPath}/account/05-putMemInfo_ok.do" method="post">
                <div class="meminfo">
                        <div class="input-group">
                            <label for="user_id"><span class="star">*</span> 아이디</label>
                            <input id="user_id" name="user_id" type="text" placeholder="영문,숫자 조합 8~12자리">
                        </div>
                        <div class="subbutton">
                            <button type="button" class="btn btn-default" id="id_uniq_check">중복확인</button>
                            <input type="hidden" name="checked_id" value="">
                        </div>
                        <div class="input-group">
                            <label for="user_pw"><span class="star">*</span> 비밀번호</label>
                            <input id="user_pw" name="user_pw" type="password" placeholder="영문,숫자,특수문자 조합 8자리 이상">
                        </div>
                        <div class="input-group">
                            <label for="check_pw"><span class="star">*</span> 비밀번호 확인</label>
                            <input id="check_pw" name="check_pw" type="password" placeholder="영문,숫자,특수문자 조합 8자리 이상">
                        </div>
                        <div class="input-group">
                            <label for="user_name"><span class="star">*</span> 이름</label>
                            <input id="user_name" name="user_name" type="text" placeholder="한글이름">
                        </div>
                        <div class="input-group">
                            <label for="user_birth"><span class="star">*</span> 생년월일</label>
                            <input id="user_birth" name="birthdate" type="text" placeholder="주민번호 앞 6자리">
                        </div>
                        <div class="input-group">
                            <div class="gender">
                                <label><span class="star">*</span> 성별</label>
                            </div>
                            <div class="genderradio">
                                <input type="radio" name="gender" id="male" value="m" />
                                <label for="male">남자</label>
                                <input type="radio" name="gender" id="female" value="f" />
                                <label for="female">여자</label>
                            </div>
                        </div>
                        <div class="input-group">
                            <label for="user_email"><span class="star">*</span> 이메일 주소</label>
                            <input id="user_email" name="user_email"type="text" placeholder="이메일">

                        </div>
                        <div class="input-group">
                            <label for="user_phone"><span class="star">*</span> 휴대폰 번호</label>
                            <input id="user_phone" name="phone" type="text" placeholder="휴대폰 번호를 -없이 입력해주세요">
                        </div>
                        <div class="input-group">
                            <label for="user_postcode"><span class="star">*</span> 주소</label>
                            <input id="user_postcode" name="postcode" type="text" placeholder="우편번호" class="postcodify_postcode5" >
                            <button type="button"name="user_postcode" class="btn btn-default" id="addrsc">우편번호 검색</button>
                        </div>

                        <div class="input-group">
                            <label for="user_addr"></label>
                            <input id="user_addr" name="addr" type="text" placeholder="" class="postcodify_address" >
                        </div>
                        <div class="input-group">
                            <label for="addr_detail"></label>
                            <input id="addr_detail" name="addr_detail" type="text" placeholder="주소상세" class="postcodify_details">
                        </div>

                </div>
                <div class="buttons">
                    <button type="submit" class="btn btn-default" id="btn_submit">회원가입</button>
                    <button type="button" class="btn btn-default">취소</button>
                </div>
                </form>
            </div>
        </div>
        <script src="../assets/plugins/validate/jquery.validate.min.js"></script>
        <script src="../assets/plugins/validate/additional-methods.min.js"></script>
        <script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
      <script src="../assets/js_files/account_05putMemInfo.js"></script> 

<%@ include file="../_inc/footer.jsp" %>