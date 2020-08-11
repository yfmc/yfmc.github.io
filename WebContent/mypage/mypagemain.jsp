<!-- 마이페이지 메인 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<title>마이페이지</title>
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
                            <td><span class="tooltip-graph" data-toggle="tooltip" data-html="true" data-placement="top" title="서울특별시 강남구 역삼동 814-6 스타플렉스<br/>1544-1122<br/>6관 / 874석">CGV 강남</span>
                            <a href="#"><img src="<%=request.getContextPath()%>/img/deleteicon.png" /></a>
                            </td>
                            <td><span class="tooltip-graph" data-toggle="tooltip" data-html="true" data-placement="top" title="서울특별시 양천구 목동 916번지 현대백화점 지하2층<br/>1544-1122<br/>8관 / 1,372석">CGV 목동</span>
                            <a href="#"><img src="<%=request.getContextPath()%>/img/deleteicon.png" /></a>
                            </td>
                        </tr>
                        <tr>
                            <td><span class="tooltip-graph" data-toggle="tooltip" data-html="true" data-placement="top" title="서울시 강서구 화곡로 142 메가스퀘어 4층<br/>1544-0070<br/>5관,850석">메가박스 화곡</span>
                            <a href="#"><img src="<%=request.getContextPath()%>/img/deleteicon.png" /></a>
                            </td>
                            <td><span class="tooltip-graph" data-toggle="tooltip" data-html="true" data-placement="top" title="서울특별시 영등포구 경인로102길 13 (영등포동, 시네마동 7층)<br/>1544-8855<br/>7관, 1328석">롯데시네마 영등포</span>
                            <a href="#"><img src="<%=request.getContextPath()%>/img/deleteicon.png" /></a>
                            </td>
                        </tr>
                        <tr>
                            <td><span class="tooltip-graph" data-toggle="tooltip" data-html="true" data-placement="top" title="서울특별시 금천구 디지털로10길 9 (가산동, 현대아울렛)<br/>1544-8855<br/>6관, 1054석">롯데시네마 가산디지털</span>
                            <a href="#"><img src="<%=request.getContextPath()%>/img/deleteicon.png" /></a>
                            </td>
                            <td class="gotheater"><a href="#" class="often">자주가는 영화관 설정 &nbsp;&nbsp;&nbsp;<i class="fas fa-mouse" style="font-size:14px;"></i></a></td>
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
                        <button type="button" class="btn btn-info bt1 tooltip-graph" data-toggle="tooltip" data-placement="bottom" title="예매내역 페이지로 이동합니다." >더보기</button>
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
                                <img src="<%=request.getContextPath()%>/img/mypage_movie2.jpg" />
                                <h5>반도</h5>
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <a href="<%=request.getContextPath()%>/movie/MovieContent.jsp" class="thumbnail">
                                <img src="<%=request.getContextPath()%>/img/mypage_movie3.jpg" />
                                <h5>스파이더맨: 파 프롬 홈</h5>
                            </a>
                        </div>
                        <button type="button" class="btn btn-success bt2 tooltip-graph" data-toggle="tooltip" data-placement="bottom" title="좋아한 영화 페이지로 이동합니다." >더보기</button>
                    </div>
                </div>
            </div>
            

        </div>
        <script src="<%=request.getContextPath()%>/js_files/mypagemain.js"></script>
<%@ include file="../_inc/footer.jsp"%>