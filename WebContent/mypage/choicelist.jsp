<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/choicelist.css">

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
                <div class="bodytop">
                    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="far fa-bookmark"></i>&nbsp;&nbsp;&nbsp;ooo(abcd1234)님이 찜한 영화목록입니다.</h3>
                </div>
                <div class="bodylist">
                    <ul class="listarea">
                        <li><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp"><img src="<%=request.getContextPath()%>/img/mypage_movie1.jpg" height=170px></a>
                            <span class="title">
                                <h3><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp">반도 (Penisula, 2020)</a></h3>
                            </span>
                            <span class="rating">
                                <h4>평점 : 7.45 (★★★☆☆)</h4>
                            </span>
                            <span class="genre">
                                <h4>장르 : 액션, 드라마</h4>
                            </span>
                            <input type="button" onclick="removeinq()" value="-" class="btn" />
                        </li>
                    </ul>
                    <ul class="listarea">
                        <li><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp"><img src="<%=request.getContextPath()%>/img/mypage_movie2.jpg" height=170px></a>
                            <span class="title">
                                <h3><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp">스파이더맨: 파 프롬 홈 (Spider-man: Far From Home, 2019)</a></h3>
                            </span>
                            <span class="rating">
                                <h4>평점 : 8.99 (★★★★☆)</h4>
                            </span>
                            <span class="genre">
                                <h4>장르 : 액션, 모험, 코미디</h4>
                            </span>
                            <input type="button" onclick="removeinq()" value="-" class="btn" />
                        </li>
                    </ul>
                    <ul class="listarea">
                        <li><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp"><img src="<%=request.getContextPath()%>/img/mypage_movie3.jpg" height=170px></a>
                            <span class="title">

                                <h3><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp">어벤져스: 엔드게임 (Avengers: Endgame, 2019)</a></h3>
                            </span>
                            <span class="rating">
                                <h4>평점 : 9.50 (★★★★☆)</h4>
                            </span>
                            <span class="genre">
                                <h4>장르 : 액션, SF</h4>
                            </span>
                            <input type="button" onclick="removeinq()" value="-" class="btn" />
                        </li>
                    </ul>
                </div>
                <div id="pagination">
                    <div class="row">
                        <div class="col">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="#" style="background:#4f4f4f;">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">4</a></li>
                                <li class="page-item"><a class="page-link" href="#">5</a></li>
                                <li class="page-item"><a class="page-link" href="#">>></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
        	function removeinq(){
        		var result=confirm("이 영화를 찜한 영화 목록에서 제외하시겠습니까?");
        	}
        </script>
<%@ include file="../_inc/footer.jsp"%>