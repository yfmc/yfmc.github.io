<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/choicelist.css">

        <div id="content" class="clear">
            <div class="sidebar">
                <div class="sidemenu">
                    <ul>
                        <li><a href="./bookinglist.jsp">나의 예매내역</a></li>
                        <li><a href="./choicelist.jsp">나의 좋아요내역</a></li>
                        <li><a href="./changeinfo-(1).jsp">회원정보 수정</a></li>
                        <li><a href="./withdrawal-(1).jsp">회원 탈퇴</a></li>
                        <li><a href="./inquirylist.jsp">나의 문의내역</a></li>
                    </ul>
                </div>
            </div>
            <div id="body">
                <div class="bodytop">
                    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ooo(abcd1234)님이 찜한 영화목록입니다.</h3>
                </div>
                <div class="bodylist">
                    <ul class="listarea">
                        <li><a href="../movie/MovieContent.jsp"><img src="../img/mypage_movie1.jpg" height=170px></a>
                            <span class="title">
                                <h3><a href="../movie/MovieContent.jsp">반도</a></h3>
                            </span>
                            <span class="rating">
                                <h4>평점 : 8.90</h4>
                            </span>
                            <span class="genre">
                                <h4>장르:액션, 코미디</h4>
                            </span>
                            <input type="button" value="-" class="btn" />
                        </li>
                    </ul>
                    <ul class="listarea">
                        <li><a href="../movie/MovieContent.jsp"><img src="../img/mypage_movie2.jpg" height=170px></a>
                            <span class="title">
                                <h3><a href="../movie/MovieContent.jsp">스파이더맨:파 프롬 홈</a></h3>
                            </span>
                            <span class="rating">
                                <h4>평점 : 8.90</h4>
                            </span>
                            <span class="genre">
                                <h4>장르:액션, 코미디</h4>
                            </span>
                            <input type="button" value="-" class="btn" />
                        </li>
                    </ul>
                    <ul class="listarea">
                        <li><a href="../movie/MovieContent.jsp"><img src="../img/mypage_movie3.jpg" height=170px></a>
                            <span class="title">

                                <h3><a href="../movie/MovieContent.jsp">어벤져스:엔드게임</a></h3>
                            </span>
                            <span class="rating">
                                <h4>평점 : 8.90</h4>
                            </span>
                            <span class="genre">
                                <h4>장르:액션, 코미디</h4>
                            </span>
                            <input type="button" value="-" class="btn" />
                        </li>
                    </ul>
                </div>
                <div id="pagination">
                    <div class="row">
                        <div class="col">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
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
<%@ include file="../_inc/footer.jsp"%>