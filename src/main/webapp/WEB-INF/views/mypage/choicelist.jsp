<!-- 좋아요 누른 영화 목록 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                    <h3 style="font-family: 'Jua', sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="far fa-bookmark"></i>&nbsp;&nbsp;&nbsp;${my_session.user_name}(${my_session.user_id})님이 좋아한 영화목록입니다.</h3>
                </div>
                <!-- 좋아한 영화 목록 -->
                <div class="bodylist">
                <c:choose>
                	<c:when test="${output==null || fn:length(output)==0}">
                		<ul>
                			<li><h4>좋아한 영화내역이 없습니다.</h4></li>
                		</ul>
                	</c:when>
                	<c:otherwise>
                		<c:forEach var="item" items="${output}" varStatus="status">
	                    <ul class="listarea">
	                    <c:choose>
	                    	<c:when test="${item.poster_link!=null}">
	                    	<!-- 이미지에 마우스 올리면 '크게하기'글자가 뜨며 클릭하면 lightbox를 통해 큰 이미지를 보여줌 -->
	                        <li><div class="movieimg"><a href="${item.poster_link}" data-lightbox="myphoto1"><img src="${item.poster_link}" class="imgimg" height=170px/><div class="moreview" style="display:none;">크게 보기</div></a></div>
	                     	</c:when>
	                     	<c:otherwise>
	                     	<li><div class="movieimg"><a href="${pageContext.request.contextPath}/assets/img/poster_default.jpg" data-lightbox="myphoto1"><img src="${pageContext.request.contextPath}/assets/img/poster_default.jpg" class="imgimg" height=170px/><div class="moreview" style="display:none;">크게 보기</div></a></div>
	                     	</c:otherwise>
	                     </c:choose>
	                            <span class="title">
	                                <h3><a href="${pageContext.request.contextPath}/movie/MovieContent.do?movie_id=${item.movie_id}">${item.title}</a></h3>
	                            </span>
	                            <span class="rating">
	                                	평점 : <span class="star-prototype">${item.star_info}</span> &nbsp;(${item.star_info})
	                            </span>
	                            <span class="genre">
	                            <c:choose>
		                            <c:when test="${item.age_limit==0}">
		                                <h4>관람가 : 전체관람가</h4>
		                            </c:when>
		                            <c:when test="${item.age_limit==1}">
		                                <h4>관람가 : 12세 이상 관람가</h4>
		                            </c:when>
		                            <c:when test="${item.age_limit==2}">
		                                <h4>관람가 : 15세 이상 관람가</h4>
		                            </c:when>
		                            <c:otherwise>
		                            	<h4>관람가 : 청소년 관람불가</h4>
		                            </c:otherwise>
	                            </c:choose>
	                            </span>
	                            <!-- 좋아한 영화 목록에서 제거하는 버튼 -->
	                            <button type="button" class="btn btn-default remove" onclick = "location.href = '${pageContext.request.contextPath}/mypage/choice_delete.do?fav_movie_id=${item.fav_movie_id}'" >-</button>
	                            
	                            
	                            <!-- 예매하기 페이지로 이동하는 버튼 -->
	                            <input type="button" value="예매불가" class="btn book" disabled/>

	                        </li>
	                    </ul>
                    	</c:forEach>
		                <!--  페이지 넘김 -->
						<div id="page">
		                    <div class="row">
		                        <div class="col">
		                        <ul class="pagination">
		                           <c:choose>
										<c:when test="${pageData.prevPage>0}">
											<c:url value="/mypage/choicelist.do" var="prevPageUrl">
												<c:param name="page" value="${pageData.prevPage}"/>
											</c:url>
											<li class="page-item"><a class="page-link" href="${prevPageUrl}">이전</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link">이전</a></li>
										</c:otherwise>
									</c:choose>
									
									<c:forEach var="i" begin="${pageData.startPage}" end="${pageData.endPage}" varStatus="status">
										<c:url value="/mypage/choicelist.do" var="pageUrl">
											<c:param name="page" value="${i}"/>
										</c:url>
										<c:choose>
											<c:when test="${pageData.nowPage ==i}">
												<li class="page-item page-link""><a class="page-link" style="background-color:#eee;"><strong class="thispage">${i}</strong></a></li>
											</c:when>
											<c:otherwise>
												<li class="page-item"><a class="page-link" href="${pageUrl}">${i}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
			
									<c:choose>
										<c:when test="${pageData.nextPage>0}">
											<c:url value="/mypage/choicelist.do" var="nextPageUrl">
												<c:param name="page" value="${pageData.nextPage}"/>
											</c:url>
												<li class="page-item"><a class="page-link" href="${nextPageUrl}">다음</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item page-link"><a class="page-link">다음</a></li>
										</c:otherwise>
									</c:choose>
								</ul>
		                        </div>
		                    </div>
		                </div>
                	</c:otherwise>
                </c:choose>
                </div>
            </div>
        </div>
        <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/plugins/sweetalert/sweetalert2.all.min.js"></script>
        <script src="../assets/plugins/lightbox/js/lightbox.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js_files/choicelist.js"></script>
<%@ include file="../_inc/footer.jsp"%>