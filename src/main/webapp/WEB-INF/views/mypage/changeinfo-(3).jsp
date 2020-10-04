<!-- 회원탈퇴 완료 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<meta http-equiv="refresh" content="60">
<title>마이페이지 > 회원 탈퇴</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/changeinfo-(3).css?after">

        <div id="content" class="clear">
        	
            
            <div id="body">
                <div class="msg">
                    <h1>회원정보가 수정되었습니다. 다시 로그인해주세요!</h1>
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
        		location.href="${pageContext.request.contextPath}/index.do";
        	});
        });
        </script>
<%@ include file="../_inc/footer.jsp"%>