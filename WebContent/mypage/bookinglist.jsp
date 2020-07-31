<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bookinglist.css">
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
                    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="far fa-calendar-alt"></i>&nbsp;&nbsp;&nbsp;ooo(abcd1234)님의 예매내역입니다.</h3>
                </div>
                <div class="bodylist">
                    <ul class="listarea">
                        <li><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp"><img src="<%=request.getContextPath()%>/img/mypage_movie1.jpg" height=170px></a>
                            <span class="title">
                                <h3><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp">강철비2: 정상회담(Steel Rain2: Summit, 2020)</a></h3>
                            </span>
                            <span class="bookdate">
                                <h4>예매일 : 2020년-07월-31일</h4>
                            </span>
                            <span class="theaterpeople">
                                <h4>CGV 목동 2명 (H7,H8)</h4>
                            </span>
                            <span class="starttime">
                                15:15 ~
                            </span>
                            <input type="button" onclick="cancelinq()" value="예매취소" class="btn" />
                        </li>
                    </ul>
                    <ul class="listarea">
                        <li><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp"><img src="<%=request.getContextPath()%>/img/mypage_movie2.jpg" height=170px></a>
                            <span class="title">
                                <h3><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp">반도(Peninsula, 2020)</a></h3>
                            </span>
                            <span class="bookdate">
                                <h4>예매일 : 2019년-07월-18일</h4>
                            </span>
                            <span class="theaterpeople">
                                <h4>CGV 강남 4명 (F7,F8,F9,F10)</h4>
                            </span>
                            <input type="button" value="예매취소" class="btn"/>
                        </li>
                    </ul>
                    <ul class="listarea">
                        <li><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp"><img src="<%=request.getContextPath()%>/img/mypage_movie3.jpg" height=170px></a>
                            <span class="title">
                                <h3><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp">스파이더맨: 파 프롬 홈(Spider-man: Far From Home, 2019)</a></h3>
                            </span>
                            <span class="bookdate">
                                <h4>예매일 : 2019년-07월-17일</h4>
                            </span>
                            <span class="theaterpeople">
                                <h4>롯데시네마 영등포 3명 (D5,D6,D7)</h4>
                            </span>
                            <input type="button" value="취소불가" class="btn" disabled />
                        </li>
                    </ul>
                    <ul class="listarea">
                        <li><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp"><img src="<%=request.getContextPath()%>/img/mypage_movie4.jpg" height=170px></a>
                            <span class="title">
                                <h3><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp">어벤져스: 엔드게임 (Avengers: Endgame, 2019)</a></h3>
                            </span>
                            <span class="bookdate">
                                <h4>예매일 : 2020년-04월-18일</h4>
                            </span>
                            <span class="theaterpeople">
                                <h4>CGV 강남 3명 (D6,D7,H8)</h4>
                            </span>
                            <input type="button" onclick="cancelinq()" value="취소불가" class="btn" disabled />
                        </li>
                    </ul>
                    <ul class="listarea">
                        <li><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp"><img src="<%=request.getContextPath()%>/img/mypage_movie5.jpg" height=170px></a>
                            <span class="title">
                                <h3><a href="<%=request.getContextPath()%>/movie/MovieContent.jsp">극한직업 (Extreme Job, 2018)</a></h3>
                            </span>
                            <span class="bookdate">
                                <h4>예매일 : 2019년-01월-25일</h4>
                            </span>
                            <span class="theaterpeople">
                                <h4>CGV 목동 3명 (B10,B11,B12)</h4>
                            </span>
                            <input type="button" onclick="cancelinq()" value="취소불가" class="btn" disabled />
                        </li>
                    </ul>
                </div>
                <div id="page">
                    <div class="row">
                        <div class="col">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="#" style="background:#a8a8a8;">1</a></li>
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
        function cancelinq(){
        	var result=confirm("정말로 예매취소하시겠습니까?");
        	if(result){
        		alert("예매가 취소되었습니다.");
        	}
        }
        </script>
<%@ include file="../_inc/footer.jsp"%>