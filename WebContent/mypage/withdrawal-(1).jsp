<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/withdrawal-(1).css">

        <div id="content" class="clear">
            <div class="sidebar">
                <div class="sidemenu">
                    <ul>
                        <li><a href="<%=request.getContextPath()%>/mypage/bookinglist.jsp">나의 예매내역</a></li>
                        <li><a href="<%=request.getContextPath()%>/mypage/choicelist.jsp">나의 좋아요내역</a></li>
                        <li><a href="<%=request.getContextPath()%>/mypage/changeinfo-(1).jsp">회원정보 수정</a></li>
                        <li><a href="<%=request.getContextPath()%>/mypage/withdrawal-(1).jsp">회원 탈퇴</a></li>
                        <li><a href="<%=request.getContextPath()%>/mypage/inquirylist.jsp">나의 문의내역</a></li>
                    </ul>
                </div>
            </div>
            <div id="body">
                <div class="reqmsg">
                	<i class="fas fa-frown-open"></i>
                    <p style="font-family: 'Jua', sans-serif;">회원 탈퇴하기 전 본인 확인이 필요합니다.<br />비밀번호를 입력해주세요.</p>
                    <br />
                    <form action="" method="POST" class="form-inline">
                        <div class="form-group">
                            <input type="password" name="password" id="password" placeholder="  비밀번호를 입력해주세요">
                        </div>
                        &nbsp;&nbsp;<button type="button" onclick="withinq()" class="btn">입력</button>
                    </form>
                </div>
                <div class="mainbutton">
                	<button type="button" class="btn" onclick="location.href='<%=request.getContextPath()%>/mypage/mypagemain.jsp'">메인으로</button>
                </div>
            </div>
        </div>
        <script type="text/javascript">
        	function withinq(){
        		var result=confirm("정말로 탈퇴하시겠습니까?");
        		if(result){
        			location.href="<%=request.getContextPath()%>/mypage/withdrawal-(2).jsp";
        		}

        	}
        </script>
<%@ include file="../_inc/footer.jsp"%>