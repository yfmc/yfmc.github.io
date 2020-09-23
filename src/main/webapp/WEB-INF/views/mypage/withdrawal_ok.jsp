<!-- 회원탈퇴 전 비밀번호 확인하는 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<title>마이페이지 > 회원 탈퇴</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/withdrawal_ok.css">

        <div id="content" class="clear">
        	<!-- 사이드바 -->
            <div class="sidebar">
                <div class="sidemenu">
                    <ul>
                    	<li><a href="${pageContext.request.contextPath}/mypage/mypagemain.do">마이페이지 홈</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/bookinglist.do">나의 예매내역</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/choicelist.do">나의 좋아요내역</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/changeinfo-(1).do">회원정보 수정</a></li>
                        <li style="background:#eee"><a href="${pageContext.request.contextPath}/mypage/withdrawal-(1).do">회원 탈퇴</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/inquirylist.do">나의 문의내역</a></li>
                    </ul>
                </div>
            </div>
            <!-- 사이드바 끝 -->
            
            <div id="body">
                <div class="reqmsg">
                	<i class="fas fa-frown-open"></i>
                    <p>정말로 탈퇴하시겠습니까?<br />
                    <br />
                    <form action="${pageContext.request.contextPath}/mypage/withdrawal-(2).do" method="POST" class="form-inline">
                        <button type="submit" class="btn btn1 btn-secondary">탈퇴하기</button>
                        <button type="button" class="btn btn2 btn-success maingo">다시한번<br/>생각하기</button>
                    </form>
                </div>
            </div>
        </div>
        <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script type="text/javaScript">
        $(function(){
        	
        	// 취소 버튼 누르면 마이페이지 메인으로 이동
        	$(document).on("click",".maingo",function(){
        		location.href="../mypage/mypagemain.do";
        	});
        });
        
        </script>
<%@ include file="../_inc/footer.jsp"%>