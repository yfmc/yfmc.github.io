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
                        <li style="background:#eee;"><a href="<%=request.getContextPath()%>/mypage/bookinglist.jsp">나의 예매내역</a></li>
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
                    <ul class="listarea">
                    	<!-- 이미지에 마우스 올리면 '크게하기'글자가 뜨며 클릭하면 lightbox를 통해 큰 이미지를 보여줌 -->
         				<li class="book"><div class="movieimg"><a href="../img/mypage_movie1.jpg" data-lightbox="myphoto1"><img src="../img/mypage_movie1.jpg" class="imgimg" height=170px/><div class="moreview" style="display:none;">크게 보기</div></a></div>
         					<span class="title">
         						<h3><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp">강철비2: 정상회담(Steel Rain2: Summit, 2020)</a></h3>
         					</span>
         					<span class="bookdate">
         						<h4>관람일시 : 2020-07-31(금) 15:15~</h4>
         					</span>
         					<span class="theaterpeople">
         						<h4>CGV 목동 2명 (H7,H8)</h4>
         					</span>
         					<!-- 예매취소 버튼 -->
         					<input type="button" value="예매취소" class="btn cancelbtn" />
         				</li>
         			</ul>
         			<ul class="listarea">
         				<li class="book"><div class="movieimg"><a href="../img/mypage_movie2.jpg" data-lightbox="myphoto2"><img src="../img/mypage_movie2.jpg" class="imgimg" height=170px/><div class="moreview" style="display:none;">크게 보기</div></a></div>
         					<span class="title">
         						<h3><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp">반도(Peninsula, 2020)</a></h3>
         					</span>
         					<span class="bookdate">
         						<h4>관람일시 : 2020-07-18(토) 18:00~</h4>
         					</span>
         					<span class="theaterpeople">
         						<h4>CGV 강남 4명 (F7,F8,F9,F10)</h4>
         					</span>
         					<input type="button" value="예매취소" class="btn cancelbtn" />
         				</li>
         			</ul>
         			<ul class="listarea">
         				<li class="book"><div class="movieimg"><a href="../img/mypage_movie3.jpg" data-lightbox="myphoto3"><img src="../img/mypage_movie3.jpg" class="imgimg" height=170px/><div class="moreview" style="display:none;">크게 보기</div></a></div>
         					<span class="title">
         						<h3><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp">스파이더맨: 파 프롬 홈(Spider-man: Far From Home, 2019)</a></h3>
         					</span>
         					<span class="bookdate">
         						<h4>관람일시 : 2019-07-17(수) 15:00~</h4>
         					</span>
         					<span class="theaterpeople">
         						<h4>롯데시네마 영등포 3명 (D5,D6,D7)</h4>
         					</span>
         					<!-- 예매취소할 수 없는 영화는 취소불가로 표시하며 버튼을 클릭할 수 없음 -->
         					<input type="button" value="취소불가" class="btn cancelbtn" disabled />
         				</li>
         			</ul>
         			<ul class="listarea">
         				<li class="book"><div class="movieimg"><a href="../img/mypage_movie4.jpg" data-lightbox="myphoto4"><img src="../img/mypage_movie4.jpg" class="imgimg" height=170px/><div class="moreview" style="display:none;">크게 보기</div></a></div>
         					<span class="title">
         						<h3><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp">어벤져스: 엔드게임 (Avengers: Endgame, 2019)</a></h3>
         					</span>
         					<span class="bookdate">
         						<h4>관람일시 : 2019-04-18(목) 18:15~</h4>
         					</span>
         					<span class="theaterpeople">
         						<h4>CGV 강남 3명 (D6,D7,H8)</h4>
         					</span>
         					<input type="button" value="취소불가" class="btn cancelbtn" disabled/>
         				</li>
         			</ul>
         			<ul class="listarea">
         				<li class="book"><div class="movieimg"><a href="../img/mypage_movie5.jpg" data-lightbox="myphoto5"><img src="../img/mypage_movie5.jpg" class="imgimg" height=170px/><div class="moreview" style="display:none;">크게 보기</div></a></div>
         					<span class="title">
         						<h3><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp">극한직업 (Extreme Job, 2018)</a></h3>
         					</span>
         					<span class="bookdate">
         						<h4>관람일시 : 2019-01-25(금) 18:00~</h4>
         					</span>
         					<span class="theaterpeople">
         						<h4>CGV 목동 3명 (B10,B11,B12)</h4>
         					</span>
         					<input type="button" value="취소불가" class="btn cancelbtn" disabled/>
         				</li>
         			</ul>
                </div>
                <!--  페이지 넘김 -->
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
            </div>
        </div>
        
        <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="<%=request.getContextPath()%>/js_files/bookinglist.js"></script>
        <script src="<%=request.getContextPath()%>/plugins/sweetalert/sweetalert2.all.min.js"></script>

		<script src="../plugins/lightbox/js/lightbox.min.js"></script>
        <script src="../plugins/handlebars/handlebars-v4.7.6.js"></script>
<%@ include file="../_inc/footer.jsp"%>