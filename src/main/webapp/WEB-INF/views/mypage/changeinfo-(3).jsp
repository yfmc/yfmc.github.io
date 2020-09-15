<!-- 회원탈퇴 완료 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<title>마이페이지 > 회원 탈퇴</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/changeinfo-(3).css">

        <div id="content" class="clear">
        	<!-- 사이드바 -->
            <div class="sidebar">
                <div class="sidemenu">
                    <ul>
                    	<li><a href="${pageContext.request.contextPath}/mypage/mypagemain.do">마이페이지 홈</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/bookinglist.do">나의 예매내역</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/choicelist.jsp">나의 좋아요내역</a></li>
                        <li style="background:#eee"><a href="${pageContext.request.contextPath}/mypage/changeinfo-(1).do">회원정보 수정</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/withdrawal-(1).do">회원 탈퇴</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/inquirylist.do">나의 문의내역</a></li>
                    </ul>
                </div>
            </div>
            <!-- 사이드바 끝 -->
            
            <div id="body">
                <div class="msg">
                    <h1>회원정보가 수정되었습니다.</h1>
                    <br/>
                    <br/>
                    <input type="button" class="maingo btn btn-info" value="메인으로" />
                </div>
            </div>
        </div>
        <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script type="text/javascript">
        
        // '메인으로' 버튼 누르면 마이페이지 메인으로 이동
        $(function(){
        	$(document).on("click",".maingo",function(){
        		location.href="${pageContext.request.contextPath}/mypage/mypagemain.do";
        	});
        });
        </script>
<%@ include file="../_inc/footer.jsp"%>