<!-- 좋아요 누른 영화 목록 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<title>마이페이지 > 좋아한 영화 목록</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/choicelist.css">
<link rel="styleshhet" href="${pageContext.request.contextPath}/assets/plugins/sweetalert/sweetalret2.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/lightbox/css/lightbox.min.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        
        <div id="content" class="clear">
        	<!-- 사이드바 -->
            <div class="sidebar">
                <div class="sidemenu">
                    <ul>
                    	<li><a href="${pageContext.request.contextPath}/mypage/mypagemain.do">마이페이지 홈</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/bookinglist.do">나의 예매내역</a></li>
                        <li style="background:#eee"><a href="${pageContext.request.contextPath}/mypage/choicelist.do">나의 좋아요내역</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/changeinfo-(1).do">회원정보 수정</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/withdrawal-(1).do">회원 탈퇴</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/inquirylist.do">나의 문의내역</a></li>
                    </ul>
                </div>
            </div>
            <!-- 사이드바 끝 -->
            
            <div id="body">
                <div class="bodytop">
                    <h3 style="font-family: 'Jua', sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="far fa-bookmark"></i>&nbsp;&nbsp;&nbsp;ooo(abcd1234)님이 좋아한 영화목록입니다.</h3>
                </div>
                <!-- 좋아한 영화 목록 -->
                <div class="bodylist">
                    <ul class="listarea">
                    	<!-- 이미지에 마우스 올리면 '크게하기'글자가 뜨며 클릭하면 lightbox를 통해 큰 이미지를 보여줌 -->
                        <li><div class="movieimg"><a href="../assets/img/mypage_movie1.jpg" data-lightbox="myphoto1"><img src="../assets/img/mypage_movie1.jpg" class="imgimg" height=170px/><div class="moreview" style="display:none;">크게 보기</div></a></div>
                            <span class="title">
                                <h3><a href="${pageContext.request.contextPath}/movie/MovieContent.do">강철비2: 정상회담(Steel Rain2: Summit, 2020)</a></h3>
                            </span>
                            <span class="rating">
                                	평점 : <span class="star-prototype">3.9</span> &nbsp;(3.9)
                            </span>
                            <span class="genre">
                                <h4>장르 : 드라마, 액션</h4>
                            </span>
                            <!-- 좋아한 영화 목록에서 제거하는 버튼 -->
                            <input type="button" value="-" class="btn btn-default remove" />
                            <!-- 예매하기 페이지로 이동하는 버튼 -->
                            <input type="button" value="예매하기" class="btn book"/>
                        </li>
                    </ul>
                    <ul class="listarea">
                        <li><div class="movieimg"><a href="../assets/img/mypage_movie2.jpg" data-lightbox="myphoto2"><img src="../assets/img/mypage_movie2.jpg" class="imgimg" height=170px/><div class="moreview" style="display:none;">크게 보기</div></a></div>
                            <span class="title">
                                <h3><a href="${pageContext.request.contextPath}/movie/MovieContent.do">반도(Peninsula, 2020)</a></h3>
                            </span>
                            <span class="rating">
                                	평점 : <span class="star-prototype">3.5</span> &nbsp;(3.5)
                            </span>
                            <span class="genre">
                                <h4>장르 : 액션, 드라마</h4>
                            </span>
                            <input type="button" value="-" class="btn btn-default remove" />
                            <input type="button" value="예매하기" class="btn book"/>
                        </li>
                    </ul>
                    <ul class="listarea">
                        <li><div class="movieimg"><a href="../assets/img/mypage_movie3.jpg" data-lightbox="myphoto3"><img src="../assets/img/mypage_movie3.jpg" class="imgimg" height=170px/><div class="moreview" style="display:none;">크게 보기</div></a></div>
                            <span class="title">

                                <h3><a href="${pageContext.request.contextPath}/movie/MovieContent.do">스파이더맨: 파 프롬 홈(Spider-man: Far From Home, 2019)</a></h3>
                            </span>
                            <span class="rating">
                                	평점 : <span class="star-prototype">4.0</span> &nbsp;(4.0)
                            </span>
                            <span class="genre">
                                <h4>장르 : 액션, 모험, 코미디</h4>
                            </span>
                            <input type="button" value="-" class="btn btn-default remove" />
                            <input type="button" value="예매불가" class="btn book" disabled/>
                        </li>
                    </ul>
                    <ul class="listarea">
                        <li><div class="movieimg"><a href="../assets/img/mypage_movie4.jpg" data-lightbox="myphoto4"><img src="../assets/img/mypage_movie4.jpg" class="imgimg" height=170px/><div class="moreview" style="display:none;">크게 보기</div></a></div>
                            <span class="title">

                                <h3><a href="${pageContext.request.contextPath}/movie/MovieContent.do">어벤져스: 엔드게임 (Avengers: Endgame, 2019)</a></h3>
                            </span>
                            <span class="rating">
                               	 평점 : <span class="star-prototype">4.3</span> &nbsp;(4.3)
                            </span>
                            <span class="genre">
                                <h4>장르 : 액션, SF</h4>
                            </span>
                            <input type="button" value="-" class="btn btn-default remove" />
                            <input type="button" value="예매불가" class="btn book" disabled/>
                        </li>
                    </ul>
                    <ul class="listarea">
                        <li><div class="movieimg"><a href="../assets/img/mypage_movie5.jpg" data-lightbox="myphoto5"><img src="../assets/img/mypage_movie5.jpg" class="imgimg" height=170px/><div class="moreview" style="display:none;">크게 보기</div></a></div>
                            <span class="title">

                                <h3><a href="${pageContext.request.contextPath}/movie/MovieContent.do">극한직업 (Extreme Job, 2018)</a></h3>
                            </span>
                            <span class="rating">
                                	평점 : <span class="star-prototype">4.5</span> &nbsp;(4.5)
                            </span>
                            <span class="genre">
                                <h4>장르 : 코미디</h4>
                            </span>
                            <input type="button" value="-" class="btn btn-default remove" />
                            <input type="button" value="예매불가" class="btn book" disabled/>
                        </li>
                    </ul>
                </div>
                <!-- 페이지 넘기기 -->
                <div id="page">
                    <div class="row">
                        <div class="col">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/mypage/choicelist.do?page=1" style="background:#a8a8a8;">1</a></li>
                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/mypage/choicelist.do?page=2">2</a></li>
                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/mypage/choicelist.do?page=3">3</a></li>
                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/mypage/choicelist.do?page=4">4</a></li>
                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/mypage/choicelist.do?page=5">5</a></li>
                                <li class="page-item"><a class="page-link" href="#">>></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/plugins/sweetalert/sweetalert2.all.min.js"></script>
        <script src="../assets/plugins/lightbox/js/lightbox.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js_files/choicelist.js"></script>
<%@ include file="../_inc/footer.jsp"%>