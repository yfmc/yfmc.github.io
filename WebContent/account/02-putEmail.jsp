<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<%@ include file="../_inc/header.jsp" %>

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
        height: 600px;
        border-top: 5px solid #eee;
        border-bottom: 5px solid #eee;
        margin-bottom: 140px;
        padding-top: 200px;
    }

    .joining .emails {
        width: 500px;
        margin: auto;
    }

    .joining .emails .input-group {
        width: 500px;
        margin-bottom: 20px;
        display: inline-block;
    }

    .joining .emails label {
        width: 160px;
        text-align: left;
        font-size: 20px;
        margin-right: 20px;
    }

    .joining .emails input {
        width: 300px;
        height: 35px;
        border-radius: 5px;
        border: 1px solid grey;
    }


    .joining .buttons {
        width: 500px;
        margin-left: 20px;
        margin-top: 10px;

    }


    .joining .buttons .btn {
        display: block;
        margin-left: 10px;
        margin-right: 10px;
        width: 200px;
        height: 30px;
        float: left;
        /*margin-left:30px;*/
    }
    </style>
    
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
                <div class="emails">
                    <form>
                    <div class="input-group">
                            <label for="code">이메일 주소</label>
                            <input id="code" type="text" placeholder="이메일 주소를 입력해주세요">
                    </div>
                    <div class="input-group">
                            <label for="code">이메일 주소 확인</label>
                            <input id="code" type="text" placeholder="이메일 주소를 입력해주세요">
                    </div>
                    </form>
                    <div class="buttons">
                        <button type="button" class="btn btn-default">인증번호 전송</button>
                        <a href="<%=request.getContextPath()%>/account/01-welcome.jsp"><button type="button" class="btn btn-default">취소</button></a>
                    </div>
                </div>
            </div>
        </div>


<%@ include file="../_inc/footer.jsp" %>