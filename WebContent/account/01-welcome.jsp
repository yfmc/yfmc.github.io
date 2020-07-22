<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="/_inc/header.jsp" %>


    <style type="text/css">
    #content {
        width: auto;
        padding-left: 110px;
        padding-top: 50px;
        padding-bottom: 50px;
    }

    .welcomeimg {
        width: 900px;
        display: block;
        margin: auto;
    }
    .welcometxt{
        width:510px;
        margin:auto;
        margin-top:30px;
    }
    .welcometxt > p{
        display:inline-block;
        width:300px;
    }
    .welcometxt > button{
        display: inline-block;
        width:200px;
    }
    </style>
    
    <div id="content">
            <div class="welcomeimg">
                <img src="../img/accountWelcome.png" alt="웰컴사인" />
            </div>
            <div class="welcometxt">
                <p>회원가입을 위해 이메일 인증이 필요합니다.</p>
                <a href="<%=request.getContextPath()%>/account/02-putEmail.jsp"><button type="button" class="btn btn-default">이메일 인증하기</button></a>
            </div>
        </div>
        
        
<%@ include file="/_inc/footer.jsp" %>