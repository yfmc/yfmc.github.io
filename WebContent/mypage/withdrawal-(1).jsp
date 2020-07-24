<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/withdrawal-(1).css">

        <div id="content" class="clear">
            <div class="sidebar">
                <div class="sidemenu">
                    <ul>
                        <li><a href="./bookinglist.jsp">나의 예매내역</a></li>
                        <li><a href="./choicelist.jsp">나의 좋아요내역</a></li>
                        <li><a href="./changeinfo-(1).jsp">회원정보 수정</a></li>
                        <li><a href="./withdrawal-(1).jsp">회원 탈퇴</a></li>
                        <li><a href="./inquirylist.jsp">나의 문의내역</a></li>
                    </ul>
                </div>
            </div>
            <div id="body">
                <div class="reqmsg">
                    <p>회원 탈퇴하기 전 본인 확인이 필요합니다.<br />비밀번호를 입력해주세요.</p>
                    <br />
                    <form action="" method="POST" class="form-inline">
                        <div class="form-group">
                            <input type="password" name="password" id="password" placeholder="  비밀번호를 입력해주세요">
                        </div>
                        &nbsp;&nbsp;<button type="button" class="btn" onclick="location.href='./withdrawal-(2).jsp'">입력</button>
                    </form>
                </div>
                <div class="mainbutton">
                	<button type="button" class="btn" onclick="location.href='./mypagemain.jsp'">메인으로</button>
                </div>
            </div>
        </div>
<%@ include file="../_inc/footer.jsp"%>