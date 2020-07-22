<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<%@ include file="/_inc/header.jsp" %>

    <style type="text/css">
    #content>ul {
        width: auto;
        height: 40px;
        margin-top: 100px;
        font-size: 25px;
        font-weight: bold;
        text-align: center;
    }

    #content>ul>li {
        width: 25%;
        height: 40px;
        display: inline-block;
        float: left;
        line-height: 50px;
    }

    #content>ul:after {
        content: none;
        display: block;
        float: none;
        clear: both;
    }

    .joining {
        width: auto;
        border-top: 5px solid #eee;
        border-bottom: 5px solid #eee;
        margin-bottom: 140px;
        padding-top: 50px;
    }

    .joining .essential {
        width: 1000px;
        text-align: right;
        font-size: 16px;
        font-weight: bold;
        color: red;
        margin-bottom: 30px;
    }

    .joining .meminfo {
        width: 500px;
        margin: auto;
    }

    .joining .meminfo .input-group {
        width: 500px;
        margin-bottom: 20px;
        display: inline-block;
    }
    .joining .meminfo .input-group:nth-child(10) {
        width: 500px;
        margin-bottom: 5px;
        display: inline-block;
    }
    .joining .meminfo .input-group:nth-child(11) {
        width: 500px;
        margin-bottom: 5px;
        display: inline-block;
    }
    .joining .meminfo .gender {
        display: inline-block;
    }

    .joining .meminfo .genderradio {
        display: inline-block;
    }
    .joining .meminfo .genderradio>label {
        padding-right:100px;
    }
    .input-group>label, .gender {
        width: 160px;
        text-align: left;
        font-size: 20px;
        margin-right: 20px;
    } 

    .input-group>input {
        width: 300px;
        height: 35px;
        border-radius: 5px;
        border: 1px solid grey;
    }

    .input-group:nth-child(8) input {
        width: 300px;
        height: 35px;
        border-radius: 5px;
        border: none;
        background-color: #fff;
    }
    .input-group:nth-child(10) input {
        width: 170px;
        height: 35px;
        border-radius: 5px;
        border: 1px solid grey;
        margin-bottom:-20px;
        margin-right:10px;
    }

    .joining .meminfo .subbutton {
        text-align: right;
        background-color: green;
        margin-left: 500px;
        margin-top: -55px;
        margin-bottom: 20px;
    }
    .joining .buttons {
        width: 500px;
        margin: auto;
        margin-top:10px;
        margin-bottom:50px;
        text-align:right;
        padding-right:100px;
    }
    .buttons  button{
        width:100px;
        margin-right: 30px
    }
    .star{
        color:red;
    }
    </style>
    
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
                <div class="meminfo">
                    <form>
                        <div class="input-group">
                            <label for="user_id"><span class="star">*</span> 아이디</label>
                            <input id="user_id" type="text" placeholder="영문,숫자 조합 8~12자리">
                        </div>
                        <div class="subbutton">
                            <button type="button" class="btn btn-default">중복확인</button>
                        </div>
                        <div class="input-group">
                            <label for="user_pw"><span class="star">*</span> 비밀번호</label>
                            <input id="user_pw" type="text" placeholder="영문,숫자 조합 8자리 이상">
                        </div>
                        <div class="input-group">
                            <label for="check_pw"><span class="star">*</span> 비밀번호 확인</label>
                            <input id="check_pw" type="text" placeholder="영문,숫자 조합 8자리 이상">
                        </div>
                        <div class="input-group">
                            <label for="user_name"><span class="star">*</span> 이름</label>
                            <input id="user_name" type="text" placeholder="이름을 입력해주세요">
                        </div>
                        <div class="input-group">
                            <label for="user_birth"><span class="star">*</span> 생년월일</label>
                            <input id="user_birth" type="text" placeholder="생년월일 6자리를 -없이 입력해주세요">
                        </div>
                        <div class="input-group">
                            <div class="gender">
                                <label><span class="star">*</span> 성별</label>
                            </div>
                            <div class="genderradio">
                                <input type="radio" name="male" id="male" value="m" />
                                <label for="male">남자</label>
                                <input type="radio" name="female" id="female" value="f" />
                                <label for="female">여자</label>
                            </div>
                        </div>
                        <div class="input-group">
                            <label for="user_email"><span class="star">*</span> 이메일 주소</label>
                            <input id="user_email" type="text" placeholder="newjhj31@gmail.com" disabled>
                        </div>
                        <div class="input-group">
                            <label for="user_phone"><span class="star">*</span> 휴대폰 번호</label>
                            <input id="user_phone" type="text" placeholder="휴대폰 번호를 -없이 입력해주세요">
                        </div>
                        <div class="input-group">
                            <label for="user_postcode"><span class="star">*</span> 주소</label>
                            <input id="user_postcode" type="text" placeholder="우편번호">
                            <button type="button" class="btn btn-default">우편번호 검색</button>
                        </div>

                        <div class="input-group">
                            <label for="user_addr"></label>
                            <input id="user_addr" type="text" placeholder="">
                        </div>
                        <div class="input-group">
                            <label for="addr_detail"></label>
                            <input id="addr_detail" type="text" placeholder="주소상세">
                        </div>
                    </form>
                </div>
                <div class="buttons">
                    <a href="<%=request.getContextPath()%>/account/06-Complete.jsp"><button type="button" class="btn btn-default">회원가입</button></a>
                    <button type="button" class="btn btn-default">취소</button>
                </div>
            </div>
        </div>


<%@ include file="/_inc/footer.jsp" %>