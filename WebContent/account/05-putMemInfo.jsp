<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<%@ include file="../_inc/header.jsp" %>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/account_05putMemberInfo.css?time=<%=System.currentTimeMillis()%>" />


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
                <form name="join_form" id="join_form" >
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
                            <input id="check_pw" name="check_pw" type="password" placeholder="영문,숫자 조합 8자리 이상">
                        </div>
                        <div class="input-group">
                            <label for="user_name"><span class="star">*</span> 이름</label>
                            <input id="user_name" name="user_name" type="text" placeholder="이름을 입력해주세요">
                        </div>
                        <div class="input-group">
                            <label for="user_birth"><span class="star">*</span> 생년월일</label>
                            <input id="user_birth" name="user_birth" type="text" placeholder="영문,숫자,특수문자 조합 8자리 이상">
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
                            <input id="user_email" name="user_email"type="text" placeholder="newjhj31@gmail.com" disabled>
                        </div>
                        <div class="input-group">
                            <label for="user_phone"><span class="star">*</span> 휴대폰 번호</label>
                            <input id="user_phone" name="user_phone" type="text" placeholder="휴대폰 번호를 -없이 입력해주세요">
                        </div>
                        <div class="input-group">
                            <label for="user_postcode"><span class="star">*</span> 주소</label>
                            <input id="user_postcode" name="user_postcode" type="text" placeholder="우편번호" disabled>
                            <button type="button"name="postcode" class="btn btn-default">우편번호 검색</button>
                        </div>

                        <div class="input-group">
                            <label for="user_addr"></label>
                            <input id="user_addr" name="user_addr" type="text" placeholder="" disabled>
                        </div>
                        <div class="input-group">
                            <label for="addr_detail"></label>
                            <input id="addr_detail" name="addr_detail" type="text" placeholder="주소상세">
                        </div>

                </div>
                <div class="buttons">
                    <button type="submit" class="btn btn-default" id="btn_submit">회원가입</button>
                    <button type="button" class="btn btn-default">취소</button>
                </div>
                </form>
            </div>
        </div>
        <script src="../plugins/validate/jquery.validate.min.js"></script>
        <script src="../plugins/validate/additional-methods.min.js"></script>
        <script src="../js_files/account_05putMemInfo.js"></script>

<%@ include file="../_inc/footer.jsp" %>