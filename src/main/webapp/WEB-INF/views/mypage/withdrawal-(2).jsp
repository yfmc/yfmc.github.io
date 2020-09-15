<!-- 회원탈퇴 완료 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<title>마이페이지 > 회원 탈퇴</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/withdrawal-(2).css">

        <div id="content" class="clear">
            <div id="body">
                <div class="msg">
                    <h1>회원 탈퇴가 정상적으로 처리되었습니다.</h1>
                    <br />
                    <h4>그동안 Cinephile을 이용해주셔서 감사합니다.</h4>
                    <input type="button" class="indexgo" value="메인으로 가기" />
                </div>
            </div>
        </div>
        <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script type="text/javascript">
        
        // '메인으로 가기' 버튼 누르면 사이트 메인으로 이동
        $(function(){
        	$(document).on("click",".indexgo",function(){
        		location.href="../home.do";
        	});
        });
        </script>
<%@ include file="../_inc/footer.jsp"%>