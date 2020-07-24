<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<%@ include file="../_inc/header.jsp" %>

    <style type="text/css">
    #content>ul {
        width:auto;
        height:40px;
        margin-top: 100px;
        font-size: 25px;
        font-weight: bold;
        /*background-color: #f0f;*/
        text-align: center;
    }
    #content>ul>li{
        width:25%;
        height:40px;
        display:inline-block;
        float:left;
        line-height: 50px;
    }
    #content>ul:after{
        content:none;
        display: block;
        float:none;
        clear:both;
    }

    .joining {
        width: auto;
        height: 600px;
        border-top: 5px solid #eee;
        border-bottom: 5px solid #eee;
        margin-bottom: 140px;
        padding-top: 180px;

    }
    .joining .completetxt{
        width:800px;
        height:150px;
        margin:auto;

        text-align: center;
        font-size: 30px;
        font-weight:bold;
    }
    .insidelogo{
        font-family: 'Dancing Script', cursive;
        font-size:55px;
    }
    .buttons{
        width:800px;
        margin:auto;
        text-align: center;
    }
    .buttons button{
        width:120px;
        margin-right:40px;
        margin-left:40px;
    }

    </style>
    
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