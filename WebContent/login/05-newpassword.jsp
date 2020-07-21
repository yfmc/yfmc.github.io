<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="/inc/header.jsp" %>

<style type="text/css">
    #content h2 {
        margin-top: 100px;
        padding-left: 130px;
        font-size: 30px;
    }

    #newpw {
        width: auto;
        height: 600px;
        border-top: 5px solid #eee;
        border-bottom: 5px solid #eee;
        margin-bottom: 140px;
        padding-top: 200px;
        text-align: left;
        font-weight: bold;
    }

    #newpw .passwords{
        width: 500px;
        margin:auto;
    }
    #newpw .passwords form{
        width:500px;
        margin-bottom:20px;
        display:inline-block;
    }
    #newpw .passwords label{
        width:150px;
        text-align:left;
        font-size:20px;
        margin-right:20px;
    }
    #newpw .passwords input{
        width:300px;
        height:35px;
        border-radius:10px;
        border:1px solid grey;
    }


    #newpw .buttons {
        width: 500px;
        background-color: red;
        margin-left: 370px;
        margin-top: 10px;

    }


    #newpw .buttons .btn {
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
                    <button type="button" class="btn btn-default">취소</button>
                </div>
            </div>
        </div>
<%@ include file="/inc/footer.jsp" %>