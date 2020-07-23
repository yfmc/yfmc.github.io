<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/withdrawal-(2).css">

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
                <div class="msg">
                    <h1>회원 탈퇴가 정상적으로 처리되었습니다.</h1>
                    <br />
                    <h4>그동안 Cinephile을 이용해주셔서 감사합니다.</h4>
                    <input type="button" value="메인으로 가기" onclick="location.href='../index.jsp'" />
                </div>
            </div>
        </div>
<%@ include file="../_inc/footer.jsp"%>