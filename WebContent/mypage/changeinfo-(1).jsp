<!--  회원정보 수정 전 비밀번호 물어보는 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<title>마이페이지 > 회원정보 수정</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<link rel="styleshhet" href="<%=request.getContextPath()%>/plugins/sweetalert/sweetalret2.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/changeinfo-(1).css">
        <div id="content" class="clear">
        	<!-- 사이드바 -->
            <div class="sidebar">
                <div class="sidemenu">
                    <ul>
                    	<li><a href="<%=request.getContextPath()%>/mypage/mypagemain.jsp">마이페이지 홈</a></li>
                        <li><a href="<%=request.getContextPath()%>/mypage/bookinglist.jsp">나의 예매내역</a></li>
                        <li><a href="<%=request.getContextPath()%>/mypage/choicelist.jsp">나의 좋아요내역</a></li>
                        <li style="background:#eee"><a href="<%=request.getContextPath()%>/mypage/changeinfo-(1).jsp">회원정보 수정</a></li>
                        <li><a href="<%=request.getContextPath()%>/mypage/withdrawal-(1).jsp">회원 탈퇴</a></li>
                        <li><a href="<%=request.getContextPath()%>/mypage/inquirylist.jsp">나의 문의내역</a></li>
                    </ul>
                </div>
            </div>
            <!-- 사이드바 끝 -->
            
            <div id="body">
                <div class="reqmsg">
                <i class="fas fa-key"></i>
                    <p>회원정보를 수정하기 전 본인 확인이 필요합니다.<br />비밀번호를 입력해주세요.</p>
                    <br />
                    <form action="" method="POST" class="form-inline">
                        <div class="form-group">
                            <input type="password" name="password" id="password" placeholder="  비밀번호를 입력해주세요">
                        </div>
                        <!--  입력버튼 -->
                        &nbsp;&nbsp;<button type="submit" class="btn btn-default change_go_btn">입력</button>
                    </form>
                </div>
                <!-- 메인으로 가는 버튼 -->
                <div class="mainbutton">
                	<button type="button" class="btn main_go_btn">메인으로</button>
                </div>
            </div>
        </div>
        <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="<%=request.getContextPath()%>/plugins/sweetalert/sweetalert2.all.min.js"></script>
        <script src="<%=request.getContextPath()%>/js_files/changeinfo-(1).js"></script>
<%@ include file="../_inc/footer.jsp"%>