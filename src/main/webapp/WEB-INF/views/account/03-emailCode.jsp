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
        /*background-color: #f0f;*/
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
        .joining .info {
        width: 500px;
        height: 80px;
        margin: auto;
        font-size: 19px

    }
    .joining .variCode{
        width: 500px;
        margin:auto;
    }
    .joining .variCode form{
        width:400px;
        display:inline-block;
    }
    .joining .variCode label{
        width:150px;
        text-align:center;
        font-size:20px;
    }
    .joining .variCode input{
        width:200px;
        height:35px;
        border-radius:5px;
        border:1px solid grey;
    }

    .joining .variCode button{
        width:100px;
    }

    .joining .nomail {
        width: 500px;
        margin: auto;
        margin-top: 20px;
    }

     .joining .nomail p{
        width:250px;
        text-align:center;
        color:grey;
        font-size: 15px;
        float:left;
        margin-top: 5px
     }
    .joining .nomail .btn {
        display:block;
        margin-left: 10px;
        margin-right: 10px;
        width: 200px;
        height: 30px;
        float:left;
        /*margin-left:30px;*/
    }

    .nomail:after{
        content:" ";
        float:none;
        clear:both;
        display:block;
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
                <p class="info">
                    입력하신 이메일 주소로 인증번호 6자리가 전송되었습니다.
                    인증번호를 입력해 주세요.
                </p>
                <div class="variCode">
                        <div class="input-group">
                            <form>
                            <label for="code">인증번호</label>
                            <input id="code" type="text" placeholder="인증번호를 입력해주세요.">
                            </form>
                            <a href="<%=request.getContextPath()%>/account/04-Agree.jsp"><button type="button" class="btn btn-default">확인</button></a>
                        </div>
                </div>
                <div class="nomail">
                    <p>메일을 받지 못하였나요?</p>
                    <button type="button" class="btn btn-default">인증번호 다시 보내기</button>
                </div>
            </div>
        </div>
    
    

<%@ include file="../_inc/footer.jsp" %>