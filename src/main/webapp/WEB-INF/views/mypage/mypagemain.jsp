<!-- 마이페이지 메인 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../_inc/header.jsp" %>
<meta http-equiv="refresh" content="60">
<title>마이페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypagemain.css">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">		
        <div id="content" class="clear">
            <!-- 사이드바 -->
            <div class="sidebar">
                <div class="sidemenu">
                    <ul>
                    	<li style="background:#eee"><a href="${pageContext.request.contextPath}/mypage/mypagemain.do">마이페이지 홈</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/bookinglist.do">나의 예매내역</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/choicelist.do">나의 좋아요내역</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/changeinfo-(1).do">회원정보 수정</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/withdrawal-(1).do">회원 탈퇴</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/inquirylist.do">나의 문의내역</a></li>
                    </ul>
                </div>
            </div>
            <!-- 사이드바 끝 -->
            
            <div id="body">
            	<!-- 메인 상단부 -->
                <div class="bodytop">
                    <h3 style="font-family: 'Jua', sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${my_session.user_name}(${my_session.user_id})님의 My Page입니다.</h3>
                    <!-- 자주가는 영화관 목록 -->
                    <table class="oftentheater">
                    	<tr>
                        <c:forEach var="i" begin="0" end="1" varStatus="status">
	                       <td>
	                       <span class="tooltip-graph" data-toggle="tooltip" data-html="true" data-placement="top" title="${output[status.index].oldAddr}<br/>${output[status.index].rooms}관 / ${output[status.index].seats}석">
	                       <a href="${pageContext.request.contextPath}/branch?provNo=${output[status.index].prov_no}&theaterId=${output[status.index].theater_id}">
	                       ${output[status.index].brand}&nbsp; ${output[status.index].branch}</a></span>
	                       </td>
                        </c:forEach>
                        </tr>
                        <tr>
                        <c:forEach var="i" begin="2" end="3" varStatus="status">
	                       <td>
	                       <span class="tooltip-graph" data-toggle="tooltip" data-html="true" data-placement="top" title="${output[status.index].oldAddr}<br/>${output[status.index].rooms}관 / ${output[status.index].seats}석">
	                       <a href="${pageContext.request.contextPath}/branch?provNo=${output[status.index].prov_no}&theaterId=${output[status.index].theater_id}">
	                       ${output[status.index].brand}&nbsp; ${output[status.index].branch}</a></span>
	                       </td>
                        </c:forEach>
                        </tr>
                        <tr>
                        <c:forEach var="i" begin="4" end="4" varStatus="status">
	                       <td>
	                       <span class="tooltip-graph" data-toggle="tooltip" data-html="true" data-placement="top" title="${output[status.index].oldAddr}<br/>${output[status.index].rooms}관 / ${output[status.index].seats}석">
	                       <a href="${pageContext.request.contextPath}/branch?provNo=${output[status.index].prov_no}&theaterId=${output[status.index].theater_id}">
	                       ${output[status.index].brand}&nbsp; ${output[status.index].branch}</a></span>
	                       </td>
                        </c:forEach>
                        <!-- 자주가는 영화관 설정 창으로 이동 -->
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
                                            <c:choose>
	                    <c:when test="${bookingoutput[0]!=null}">
	                            <a href="${pageContext.request.contextPath}/movie/MovieContent.do?movie_id=${bookingoutput[0].movie_id}&title=${bookingoutput[0].title}" class="thumbnail">
	                    </c:when>
	                    <c:otherwise>
	                    		<a href="#" class="thumbnail">
	                    </c:otherwise>
	                    </c:choose>
	                            	<c:choose>
	                            	<c:when test="${bookingoutput[0].poster_link!=null}">
	                                <img src="${bookingoutput[0].poster_link}" />
	                                <h5 style="font-weight:bold">${bookingoutput[0].title}</h5>
	                                <h5 style="font-size:12px;">${bookingoutput[0].booking_date}</h5>
	                                </c:when>
	                                <c:otherwise>
	                                <img src="${pageContext.request.contextPath}/assets/img/poster_default.jpg"/>
	                                <h5 style="font-weight:bold">${bookingoutput[0].title}</h5>
	                                <h5 style="font-size:12px;">${bookingoutput[0].booking_date}</h5>
	                                </c:otherwise>
	                                </c:choose>
	                                
	                            </a>
	                    </div>
	                    <div class="col-md-3 col-sm-6 col-xs-12">
	                    <c:choose>
	                    <c:when test="${bookingoutput[1]!=null}">
	                            <a href="${pageContext.request.contextPath}/movie/MovieContent.do?movie_id=${bookingoutput[1].movie_id}&title=${bookingoutput[1].title}" class="thumbnail">
	                    </c:when>
	                    <c:otherwise>
	                    		<a href="#" class="thumbnail">
	                    </c:otherwise>
	                    </c:choose>
                    	<c:choose>
                    	<c:when test="${bookingoutput[1].poster_link!=null}">
                        <img src="${bookingoutput[1].poster_link}" />
                        <h5 style="font-weight:bold">${bookingoutput[1].title}</h5>
                        <h5 style="font-size:12px;">${bookingoutput[1].booking_date}</h5>
                        </c:when>
                        <c:otherwise>
                        <img src="${pageContext.request.contextPath}/assets/img/poster_default.jpg"/>
                        <h5 style="font-weight:bold">${bookingoutput[1].title}</h5>
                        <h5 style="font-size:12px;">${bookingoutput[1].booking_date}</h5>
                        </c:otherwise>
                        </c:choose>
                            </a>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                    <c:choose>
                    <c:when test="${bookingoutput[2]!=null}">
                            <a href="${pageContext.request.contextPath}/movie/MovieContent.do?movie_id=${bookingoutput[2].movie_id}&title=${bookingoutput[2].title}" class="thumbnail">
                    </c:when>
                    <c:otherwise>
                    		<a href="#" class="thumbnail">
                    </c:otherwise>
                    </c:choose>
                	<c:choose>
                	<c:when test="${bookingoutput[2].poster_link!=null}">
                    <img src="${bookingoutput[2].poster_link}" />
                    <h5 style="font-weight:bold">${bookingoutput[2].title}</h5>
                    <h5 style="font-size:12px;">${bookingoutput[2].booking_date}</h5>
                    </c:when>
                    <c:otherwise>
                    <img src="${pageContext.request.contextPath}/assets/img/poster_default.jpg"/>
                    <h5 style="font-weight:bold">${bookingoutput[2].title}</h5>
                    <h5 style="font-size:12px;">${bookingoutput[2].booking_date}</h5>
                    </c:otherwise>
                    </c:choose>
                    
                    </a>
                    </div>
                        <!-- 예매내역 페이지로 이동 -->
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
                    <c:choose>
                    <c:when test="${choiceoutput[0]!=null}">
                            <a href="${pageContext.request.contextPath}/movie/MovieContent.do?movie_id=${choiceoutput[0].movie_id}&title=${choiceoutput[0].title}" class="thumbnail">
                    </c:when>
                    <c:otherwise>
                    		<a href="#" class="thumbnail">
                    </c:otherwise>
                    </c:choose>
                            	<c:choose>
                            	<c:when test="${choiceoutput[0].poster_link!=null}">
                                <img src="${choiceoutput[0].poster_link}" />
                                </c:when>
                                <c:otherwise>
                                <img src="${pageContext.request.contextPath}/assets/img/poster_default.jpg"/>
                                </c:otherwise>
                                </c:choose>
                                <h5>${choiceoutput[0].title}</h5>
                            </a>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                    <c:choose>
                    <c:when test="${choiceoutput[1]!=null}">
                            <a href="${pageContext.request.contextPath}/movie/MovieContent.do?movie_id=${choiceoutput[1].movie_id}&title=${choiceoutput[1].title}" class="thumbnail">
                    </c:when>
                    <c:otherwise>
                    		<a href="#" class="thumbnail">
                    </c:otherwise>
                    </c:choose>
                            	<c:choose>
                            	<c:when test="${choiceoutput[1].poster_link!=null}">
                                <img src="${choiceoutput[1].poster_link}" />
                                </c:when>
                                <c:otherwise>
                                <img src="${pageContext.request.contextPath}/assets/img/poster_default.jpg"/>
                                </c:otherwise>
                                </c:choose>
                                <h5>${choiceoutput[1].title}</h5>
                            </a>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                    <c:choose>
                    <c:when test="${choiceoutput[2]!=null}">
                            <a href="${pageContext.request.contextPath}/movie/MovieContent.do?movie_id=${choiceoutput[2].movie_id}&title=${choiceoutput[2].title}" class="thumbnail">
                    </c:when>
                    <c:otherwise>
                    		<a href="#" class="thumbnail">
                    </c:otherwise>
                    </c:choose>
                            	<c:choose>
                            	<c:when test="${choiceoutput[2].poster_link!=null}">
                                <img src="${choiceoutput[2].poster_link}" />
                                </c:when>
                                <c:otherwise>
                                <img src="${pageContext.request.contextPath}/assets/img/poster_default.jpg"/>
                                </c:otherwise>
                                </c:choose>
                                <h5>${choiceoutput[2].title}</h5>
                            </a>
                    </div>
                    
                        <!-- 좋아요 누른 영화내역 페이지로 이동 -->
                        <button type="button" class="btn btn-success bt2 tooltip-graph" data-toggle="tooltip" data-placement="bottom" title="좋아한 영화 페이지로 이동합니다." >더보기</button>
                    </div>
                </div>
            </div>
            
        </div>
        <script src="${pageContext.request.contextPath}/assets/js_files/mypagemain.js"></script>
<%@ include file="../_inc/footer.jsp"%>