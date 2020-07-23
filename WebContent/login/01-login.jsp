<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp" %>
    <style type="text/css">
    #content h2 {
        margin-top: 100px;
        padding-left: 130px;
        font-size: 30px;
    }

    #lginput {
        width: auto;
        height: 600px;
        border-top: 5px solid #eee;
        border-bottom: 5px solid #eee;
        margin-bottom: 140px;
        padding-top: 180px;
    }

    #lginput .input-group {
        width: 30%;
        margin: auto;
        margin-top: 20px;
    }


    #lginput .loginpb {
        width: 30%;
        margin: auto;
        margin-top: 20px;
    }

    #lginput .fgidpw {
        padding-right: 10px;
    }

    #lginput a {
        color: grey;
        font-size: 18px
    }

    #lginput .loginbt {
        width: 30%;
        margin: auto;
        padding-right: 20px;
        margin-top: -30px;
    }

    #lginput .loginbt .btn {
        display: block;
        width: 150px;
        margin-left: 210px;
    }
    </style>
    
    <div id="content">
            <h2>로그인</h2>
            <div id="lginput">
                <form>
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon1"><i class="fas fa-user-circle"></i></span>
                    <input type="text" class="form-control" placeholder="아이디를 입력해주세요." aria-describedby="sizing-addon1">
                </div>
                <div class="input-group input-group-lg">
                    <span class="input-group-addon" id="sizing-addon1"><i class="fas fa-key"></i></span>
                    <input type="text" class="form-control" placeholder="비밀번호를 입력해주세요." aria-describedby="sizing-addon1">
                </div>
                <div class="loginpb">
                    <a href="<%=request.getContextPath()%>/login/02-findidpassword.jsp" class="fgidpw">ID/PW찾기</a>
                    <a href="#" class="noid">회원가입</a>
                </div>
                <div class="loginbt">
                    <button type="button" class="btn btn-primary">로그인</button>
                </div>
                </form>
            </div>
        </div>
<%@ include file="../_inc/footer.jsp" %>