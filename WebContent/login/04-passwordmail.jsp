<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="/inc/header.jsp" %>

<style type="text/css">
    #content h2 {
        margin-top: 100px;
        padding-left: 130px;
        font-size: 30px;
    }

    #pwEmail {
        width: auto;
        height: 600px;
        border-top: 5px solid #eee;
        border-bottom: 5px solid #eee;
        margin-bottom: 140px;
        padding-top: 200px;
        text-align: left;
        font-weight: bold;
    }

    #pwEmail .info {
        width: 500px;
        height: 80px;
        margin: auto;
        font-size: 19px

    }
    #pwEmail .variCode{
        width: 500px;
        margin:auto;
    }
    #pwEmail .variCode form{
        width:400px;
        display:inline-block;
    }
    #pwEmail .variCode label{
        width:150px;
        text-align:center;
        font-size:20px;
    }
    #pwEmail .variCode input{
        width:200px;
        height:35px;
        border-radius:10px;
        border:1px solid grey;
    }

    #pwEmail .variCode button{
        width:100px;
    }

    #pwEmail .nomail {
        width: 500px;
        margin: auto;
        margin-top: 20px;
    }

     #pwEmail .nomail p{
        width:250px;
        text-align:center;
        color:grey;
        font-size: 15px;
        float:left;
        margin-top: 5px
     }
    #pwEmail .nomail .btn {
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
            <h2>이메일 인증</h2>
            <div id="pwEmail">
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
                            <button type="button" class="btn btn-default">확인</button>
                        </div>
                </div>
                <div class="nomail">
                    <p>메일을 받지 못하였나요?</p>
                    <button type="button" class="btn btn-default">인증번호 다시 보내기</button>
                </div>
            </div>
        </div>

<%@ include file="/inc/footer.jsp" %>