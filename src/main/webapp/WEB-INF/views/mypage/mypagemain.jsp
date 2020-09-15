<!-- 마이페이지 메인 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/mypagemain.css">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">		
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
            	<!-- 메인 상단부 -->
                <div class="bodytop">
                    <h3 style="font-family: 'Jua', sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ooo(abcd1234)님의 My Page입니다.</h3>
                    <!-- 자주가는 영화관 목록 -->
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
                            <td>롯데시네마 가산디지털
                            <a href="#"><img src="<%=request.getContextPath()%>/img/deleteicon.png" /></a>
                            </td>
                            <td><a href="#" class="often">자주가는 영화관 설정하기</a></td>
                        </tr>
                    </table>
                </div>
                <!--  메인 중단부 -->
                <div class="bodycenter">
                	<!--  예매내역 3개 표시 -->
                    <span class="centertitle">
                        <h4 style="font-family: 'Jua', sans-serif;">나의 최근 예매내역</h4>
                    </span>
                    <div class="row">
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <a href="<%=request.getContextPath()%>/movie/MovieContent.jsp" class="thumbnail">
                                <img src="<%=request.getContextPath()%>/img/mypage_movie1.jpg" />
                                <h5 style="font-weight:bold">강철비2: 정상회담</h5>
                                <h5 style="font-size:12px;">예매:2020-07-31</h5>
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <a href="<%=request.getContextPath()%>/movie/MovieContent.jsp" class="thumbnail">
                                <img src="<%=request.getContextPath()%>/img/mypage_movie2.jpg" />
                                <h5 style="font-weight:bold">반도</h5>
                                <h5 style="font-size:12px;">예매:2020-07-18</h5>
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <a href="<%=request.getContextPath()%>/movie/MovieContent.jsp" class="thumbnail">
                                <img src="<%=request.getContextPath()%>/img/mypage_movie3.jpg" />
                                <h5 style="font-weight:bold">스파이더맨: 파 프롬 홈</h5>
                                <h5 style="font-size:12px;">예매:2019-07-17</h5>
                            </a>
                        </div>
                        <button type="button" class="btn btn-default bt1" >더보기</button>
                    </div>
                </div>
                <!--  메인 하단부 -->
                <div class="bodybottom">
                	<!--  좋아요 누른 영화 3개 표시 -->
                    <span class="centertitle">
                        <h4 style="font-family: 'Jua', sans-serif;">좋아한 영화</h4>
                    </span>
                    <div class="row">
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <a href="<%=request.getContextPath()%>/movie/MovieContent.jsp" class="thumbnail">
                                <img src="<%=request.getContextPath()%>/img/mypage_movie1.jpg" />
                                <h5>강철비2: 정상회담</h5>
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <a href="<%=request.getContextPath()%>/movie/MovieContent.jsp" class="thumbnail">
                                <img src="../img/mypage_movie2.jpg" />
                                <h5>반도</h5>
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <a href="<%=request.getContextPath()%>/movie/MovieContent.jsp" class="thumbnail">
                                <img src="<%=request.getContextPath()%>/img/mypage_movie3.jpg" />
                                <h5>스파이더맨: 파 프롬 홈</h5>
                            </a>
                        </div>
                        <button type="button" class="btn btn-default bt2" >더보기</button>
                    </div>
                </div>
            </div>
        </div>
        <script src="<%=request.getContextPath()%>/js_files/mypagemain.js"></script>
<%@ include file="../_inc/footer.jsp"%>