<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/mypagemain.css">
		
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
                    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ooo(abcd1234)님의 My Page입니다.</h3>
                    <table class="oftentheater">
                        <tr>
                            <td>CGV 강남
                            <a href="#"><img src="<%=request.getContextPath()%>/img/deleteicon.png" /></a>
                            </td>
                            <td>CGV 목동
                            <a href="#"><img src="<%=request.getContextPath()%>/img/deleteicon.png" /></a>
                            </td>
                        </tr>
                        <tr>
                            <td>메가박스 화곡
                            <a href="#"><img src="<%=request.getContextPath()%>/img/deleteicon.png" /></a>
                            </td>
                            <td>롯데시네마 영등포
                            <a href="#"><img src="<%=request.getContextPath()%>/img/deleteicon.png" /></a>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><a href="#" onclick="openth()">자주가는 영화관 설정하기</a></td>
                        </tr>
                    </table>
                </div>
                <div class="bodycenter">
                    <span class="centertitle">
                        <h4>나의 최근 예매내역</h4>
                    </span>
                    <div class="row">
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <a href="<%=request.getContextPath()%>/movie/MovieContent.jsp" class="thumbnail">
                                <img src="<%=request.getContextPath()%>/img/mypage_movie1.jpg" />
                                <h5 style="font-weight:bold">반도</h5>
                                <h5 style="font-size:12px;">예매:2020-07-18</h5>
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <a href="<%=request.getContextPath()%>/movie/MovieContent.jsp" class="thumbnail">
                                <img src="<%=request.getContextPath()%>/img/mypage_movie2.jpg" />
                                <h5 style="font-weight:bold">스파이더맨:파프롬홈</h5>
                                <h5 style="font-size:12px;">예매:2019-07-04</h5>
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <a href="<%=request.getContextPath()%>/movie/MovieContent.jsp" class="thumbnail">
                                <img src="<%=request.getContextPath()%>/img/mypage_movie3.jpg" />
                                <h5 style="font-weight:bold">어벤져스:엔드게임</h5>
                                <h5 style="font-size:12px;">예매:2019-04-18</h5>
                            </a>
                        </div>
                        <button type="button" class="btn btn-default" onclick="location.href='./bookinglist.jsp'">더보기</button>
                    </div>
                </div>
                <div class="bodybottom">
                    <span class="centertitle">
                        <h4>찜한 영화</h4>
                    </span>
                    <div class="row">
                        <!-- 갤러리 한 개 영역 -->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <a href="<%=request.getContextPath()%>/movie/MovieContent.jsp" class="thumbnail">
                                <img src="<%=request.getContextPath()%>/img/mypage_movie1.jpg" />
                                <h5>반도</h5>
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <a href="<%=request.getContextPath()%>/movie/MovieContent.jsp" class="thumbnail">
                                <img src="../img/mypage_movie2.jpg" />
                                <h5>스파이더맨:파프롬홈</h5>
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <a href="<%=request.getContextPath()%>/movie/MovieContent.jsp" class="thumbnail">
                                <img src="<%=request.getContextPath()%>/img/mypage_movie3.jpg" />
                                <h5>어벤져스:엔드게임</h5>
                            </a>
                        </div>
                        <button type="button" class="btn btn-default" onclick="location.href='./choicelist.jsp'">더보기</button>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javaScript">
			function openth(){
				window.open('./oftentheater.jsp','','width=600,height=650,scrollbars=no,toolbars=no,menubar=no,status=no,location=no');
			}
		</script>
<%@ include file="../_inc/footer.jsp"%>