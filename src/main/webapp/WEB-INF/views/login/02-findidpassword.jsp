<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp" %>
<style type="text/css">

/*============ 아디찾기=============================*/
    #content .findId {
        width: 600px;
        padding-left: 90px;
        font-size: 30px;
        margin-bottom:160px;
    }

    #findId {
        width: 50%;
        height: 600px;
        border-right: 5px solid #eee;
        margin-top: 100px;
        margin-bottom: 80px;
        padding-top: 0px;
        float:left;
    }

    #findId .input-group {
        width: 350px;
        margin: auto;
        margin-top: 20px;
    }

    #findId .input-group input{
        border-radius:10px;
    }


    #findId .fgidpw {
        padding-right: 10px;
    }



    #findId .loginbt {
        width: 350px;
        margin: auto;
        margin-top: 10px;
        padding-left: 76px;
        text-align: right;

    }

    #findId .loginbt .btn {
        width: 120px;
    }
/*============ 아디찾기=============================*/
/*============ 비번찾기=============================*/
     #content .findPd {
        width: 600px;
        padding-left: 90px;
        font-size: 30px;
        margin-bottom:130px;

    }

    #findPw {
        width: 50%;
        height: 600px;
        margin-top: 100px;
        margin-bottom: 80px;
        padding-top: 0;
        float:left;
    }

    #findPw .input-group {
        width: 350px;
        margin: auto;
        margin-top: 20px;
    }

    #findPw .input-group input{
        border-radius:10px;
    }


    #findPw .fgidpw {
        padding-right: 10px;
    }

    #findPw .loginbt {
        width: 350px;
        margin: auto;
        margin-top: 10px;
        padding-left: 76px;
        text-align: right;
    }

    #findPw .loginbt .btn {
        width: 120px;
    }
    
    #content a{
    	text-decoration:none;
    	color:black;
    }

    #content:after{
        content:'';
        float:none;
        clear:both;
        display:block;
    }
/*============ 비번찾기=============================*/
    </style>
    <div id="content">

            <div id="findId">
                <h2 class="findId">아이디 찾기</h2>
                <form>

                <div class="input-group input-group-lg">

                    <input type="text" class="form-control" placeholder="이 름" aria-describedby="sizing-addon1">
                </div>
                <div class="input-group input-group-lg">
                    <input type="text" class="form-control" placeholder="이메일" aria-describedby="sizing-addon1">
                </div>

                <div class="loginbt">
                    <button type="button" class="btn btn-default">아이디 찾기</button>
                    <a href="01-login.jsp"><button type="button" class="btn btn-default">취소</button></a>
                </div>
                </form>
            </div>

            <div id="findPw">
                <h2 class="findPd">비밀번호 찾기</h2>
                <form>

                <div class="input-group input-group-lg">

                    <input type="text" class="form-control" placeholder="이 름" aria-describedby="sizing-addon1">
                </div>
                <div class="input-group input-group-lg">

                    <input type="text" class="form-control" placeholder="아이디" aria-describedby="sizing-addon1">
                </div>
                <div class="input-group input-group-lg">

                    <input type="text" class="form-control" placeholder="이메일" aria-describedby="sizing-addon1">
                </div>

                <div class="loginbt">
                    <button type="button" class="btn btn-default">비밀번호 찾기</button>
                    <a href="<%=request.getContextPath()%>/login/01-login.jsp"><button type="button" class="btn btn-default">취소</button></a>

                </div>
                </form>
            </div>
        </div>
<%@ include file="../_inc/footer.jsp" %>