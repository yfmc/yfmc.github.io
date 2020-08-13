<!--  예매리스트 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<title>마이페이지 > 예매내역</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bookinglist.css">
<link rel="styleshhet" href="<%=request.getContextPath()%>/plugins/sweetalert/sweetalret2.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/lightbox/css/lightbox.min.css">
        <div id="content" class="clear">
        	<!-- 사이드바 -->
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
            <!-- 사이드바 끝 -->
            
            <div id="body">
                <div class="bodytop">
                    <h3 style="font-family: 'Jua', sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="far fa-calendar-alt"></i>&nbsp;&nbsp;&nbsp;ooo(abcd1234)님의 예매내역입니다.</h3>
                </div>
                
                <!--  예매내역 리스트로 -->
                <div class="bodylist">
                    
                </div>
				<div id="page">
                    <div class="row">
                        <div class="col">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/mypage/bookinglist.jsp?page=1" style="background:#a8a8a8;">1</a></li>
                                <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/mypage/bookinglist.jsp?page=2">2</a></li>
                                <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/mypage/bookinglist.jsp?page=3">3</a></li>
                                <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/mypage/bookinglist.jsp?page=4">4</a></li>
                                <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/mypage/bookinglist.jsp?page=5">5</a></li>
                                <li class="page-item"><a class="page-link" href="#">>></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                
                <!--  페이지 넘김 -->

            </div>
        </div>
        <script type="text/x-handlebars-template" id="booking_list">
		{{#each data}}
		 <ul class="listarea">
         	<li class="book"><span class="movieimg"><a href="{{poster}}" data-lightbox="myphoto"><img src={{{poster}}} height=170px/></a></span>
         		<span class="title">
         			<h3><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp">{{title}}</a></h3>
         		</span>
         		<span class="bookdate">
         			<h4>{{bookdate}}</h4>
         		</span>
         		<span class="theaterpeople">
         			<h4>{{theaterpeople}}</h4>
         		</span>
         		<input type="button" value="{{bookable}}" class="btn cancelbtn"{{btnable}} />
         	</li>
         </ul>


		{{/each}}
		</script>
        <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="<%=request.getContextPath()%>/js_files/bookinglist.js"></script>
        <script src="<%=request.getContextPath()%>/plugins/sweetalert/sweetalert2.all.min.js"></script>

		<script src="../plugins/lightbox/js/lightbox.min.js"></script>
        <script src="../plugins/handlebars/handlebars-v4.7.6.js"></script>
<%@ include file="../_inc/footer.jsp"%>