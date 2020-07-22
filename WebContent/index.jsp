<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>Hello Bootstrap</title>
    <!-- 필요CSS -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HeaderFooterYo.css" />
    <!-- //필요CSS -->
    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="//stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="//stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
    <!-- //부트스트랩 -->
    <!-- 구글폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Montserrat+Subrayada:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
    <!-- //구글폰트 -->
    <!-- //폰트어썸 -->
    <script src="https://kit.fontawesome.com/2de30be98d.js" crossorigin="anonymous"></script>
    <!-- //폰트어썸 -->

</head>

<body>
    <div id="container">
        <div id="header">
            <h1 class="filmlogo"><a href="#"><i class="fas fa-film"></i> Cinephile</a></h1>
            <div class="menu">
                <ul class="mainnav">
                    <li class="nav">
                        <a href="#" class="mains">영화</a>
                        <ul class="subnav">
                            <li><a href="#">박스오피스</a></li>
                            <li><a href="#">영화검색</a></li>
                            <li><a href="#">영화소식</a></li>
                            <li><a href="#">통계</a></li>
                        </ul>
                    </li>
                    <li class="nav">
                        <a href="#" class="mains">예매</a>
                        <ul class="subnav">
                            <li><a href="#">예매하기</a></li>
                            <li><a href="#">극장별시간표</a></li>
                        </ul>
                    </li>
                    <li class="nav"><a href="#" class="mains">극장</a></li>
                    <li class="nav">
                        <a href="#" class="mains">고객센터</a>
                        <ul class="subnav">
                            <li><a href="#">공지사항</a></li>
                            <li><a href="#">자주찾는질문</a></li>
                            <li><a href="#">1:1문의</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="right_top">
                <ul>
                    <li><a href="<%=request.getContextPath()%>/login/01-login.jsp">로그인</a></li>
                    <li><a href="<%=request.getContextPath()%>/account/01-welcome.jsp">&nbsp;회원가입</a></li>
                    <li><a href="#">&nbsp;마이페이지</a></li>
                </ul>
            </div>
        </div>
    <style type="text/css">
    #content {
        width: 100%;
        margin: auto;
        margin-top: 50px;
        z-index: 1000;
    }

    #content .ad img {
        display: block;
        width: 100%;
        height: 500px;
        z-index: 1000;
    }

    #content .carousel {}

    .article {
        text-align: center;
        color: black;

    }

    .article .thumb {
        width: 100%;
        height: 230px;

    }

    .article a {
        display: block;
        width: 100%;
        height: 100%;
        color: black;
    }

    .article h4 {
        font-size: 14px;
    }


    .thumb img {
        width: 100%;
        height: 150px;
    }
    </style>

        <div id="content">
            <div class="ad">
                <div id="carousel-id" class="carousel slide" data-ride="carousel">
                    <!-- 중앙 하단부 동그라미들 -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-id" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-id" data-slide-to="1" class=""></li>
                        <li data-target="#carousel-id" data-slide-to="2" class=""></li>
                    </ol>
                    <!-- 이미지 슬라이드 -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="img/alive.jpg">
                        </div>
                        <div class="item">
                            <img src="img/bando2.jpg">
                        </div>
                        <div class="item">
                            <img src="img/akak.jpg">
                        </div>
                    </div>
                    <!-- 이전,다음 버튼 -->
                    <a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
                    <a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
            </div>
            <div class="article">
                <div class="col-lg-12">
                    <div class="page-header">
                        <h2>영화 소식</h2>
                    </div>
                </div>
                <div class="row">
                    <!-- 갤러리 한 개 영역 -->
                    <div class="col-md-3 col-sm-3 col-xs-3">
                        <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                        <div class="thumb">
                            <a href="#" class="thumbnail">
                                <img src="img/ar1.jpg" class="img-responsive" />
                                <h4>리뷰 | ‘SF8-블링크’, 클리셰 범벅에 한숨만 푹</h4>
                            </a>
                        </div>
                    </div>
                    <!-- // 갤러리 한 개 영역 -->
                    <!-- 갤러리 한 개 영역 -->
                    <div class="col-md-3 col-sm-3 col-xs-3">
                        <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                        <div class="thumb">
                            <a href="#" class="thumbnail">
                                <img src="img/ar2.jpg" class="img-responsive" />
                                <h4>이슈 | HBO 맥스, ‘배트맨’ 드라마 제작 확정</h4>
                            </a>
                        </div>
                    </div>
                    <!-- // 갤러리 한 개 영역 -->
                    <!-- 갤러리 한 개 영역 -->
                    <div class="col-md-3 col-sm-3 col-xs-3">
                        <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                        <div class="thumb">
                            <a href="#" class="thumbnail">
                                <img src="img/ar3.jfif" class="img-responsive" />
                                <h4>인터뷰 | ‘반도’ 연상호 감독 “이레, 첫 만남에 크게 될 배우라 느껴”</h4>
                            </a>
                        </div>
                    </div>
                    <!-- // 갤러리 한 개 영역 -->
                    <!-- 갤러리 한 개 영역 -->
                    <div class="col-md-3 col-sm-3 col-xs-3">
                        <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                        <div class="thumb">
                            <a href="#" class="thumbnail">
                                <img src="img/ar4.jpg" class="img-responsive" />
                                <h4>기획 | 퀸의 귀환, 만능 엔터테이너 엄정화의 화려한 필모</h4>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
<div id="footer">
            <div class="logo">
                <h1><i class="fas fa-film"></i> Cinephile</h1>
            </div>
            <div class="companyinfo">
                <p>
                    서울특별시 서초구 서초동 1303-37 서초W타워 13층<br />
                    대표이사 : 마이클 장 | 사업자 등록번호 : 123-45-67890 | 통신판매업신고번호 : 2020-서울서초-0001<br />
                    개인정보보호 책임자 : 장혁준 | 고객센터 : 1544-8282<br />
                    COPYRIGHT ⓒ Cinephile. Inc. All rights reserved<br />
                </p>
            </div>
            <div id="theaterlogo">
                <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbdRPDR%2FbtqFOM3ejqr%2F3Dq6LbMGNQkNjcSKY7fKT0%2Fimg.png" alt="영화관로고">
            </div>
        </div>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="//stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </div>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="//stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>

</html>