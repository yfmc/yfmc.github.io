<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp" %>

<style type="text/css">
    #content h2 {
        margin-top: 100px;
        padding-left: 130px;
        font-size: 30px;
    }

    #lgininfo {
        width: auto;
        height: 600px;
        border-top: 5px solid #eee;
        border-bottom: 5px solid #eee;
        margin-bottom: 140px;
        padding-top: 200px;
        text-align:center;
    }

    #lgininfo .info{
        width:600px;
        height: 100px;
        margin:auto;
        font-size: 25px


    }
    #lgininfo .loginbt {
        width: 290px;
        margin: auto;

    }

    #lgininfo .loginbt .btn {
        display: inline-block;
        margin-left:10px;
        margin-right:10px;
        width: 120px;
        /*margin-left:30px;*/
    }

    
    </style>
    
    <div id="content">
            <h2>아이디 안내</h2>
            <div id="lgininfo">
                <p class="info">
                    장혁준 회원님의 ID는 newjhj31입니다.
                </p>

                <div class="loginbt">
                    <a href="<%=request.getContextPath()%>/login/01-login.jsp"><button type="button" class="btn btn-primary">로그인</button></a>
                    <a href="<%=request.getContextPath()%>/login/02-findidpassword.jsp"><button type="button" class="btn btn-default">비밀번호 찾기</button></a>
                </div>

            </div>
        </div>

<%@ include file="../_inc/footer.jsp" %>