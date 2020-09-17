<!--  예매리스트 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../_inc/header.jsp" %>
<title>마이페이지 > 예매내역</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bookinglist.css">
<link rel="styleshhet" href="${pageContext.request.contextPath}/assets/plugins/sweetalert/sweetalret2.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets//plugins/lightbox/css/lightbox.min.css">
        <div id="content" class="clear">
        	<!-- 사이드바 -->
            <div class="sidebar">
                <div class="sidemenu">
                    <ul>
                    	<li><a href="${pageContext.request.contextPath}/mypage/mypagemain.do">마이페이지 홈</a></li>
                        <li style="background:#eee;"><a href="${pageContext.request.contextPath}/mypage/bookinglist.do">나의 예매내역</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/choicelist.do">나의 좋아요내역</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/changeinfo-(1).do">회원정보 수정</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/withdrawal-(1).do">회원 탈퇴</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/inquirylist.do">나의 문의내역</a></li>
                    </ul>
                </div>
            </div>
            <!-- 사이드바 끝 -->
            
            <div id="body">
                <div class="bodytop">
                    <h3 style="font-family: 'Jua', sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="far fa-calendar-alt"></i>&nbsp;&nbsp;&nbsp;ooo(abcd1234)님의 예매내역입니다.</h3>
                </div>
                
                <!--  예매내역 리스트로 -->
                <div class="bodylist">
                <c:choose>
                	<c:when test="${output==null || fn:length(output)==0}">
                		<ul>
                			<li>예매내역이 없습니다.</li>
                		</ul>
                	</c:when>
                	<c:otherwise>
                		<c:forEach var="item" items="${output}" varStatus="status">
                		<ul class="listarea">
                    	<!-- 이미지에 마우스 올리면 '크게하기'글자가 뜨며 클릭하면 lightbox를 통해 큰 이미지를 보여줌 -->
	         				<li class="book"><div class="movieimg"><a href="${item.poster}" data-lightbox="myphoto1"><img src="${item.poster}" class="imgimg" height=170px/><div class="moreview" style="display:none;">크게 보기</div></a></div>
	         					<span class="title">
	         						<h3><a href="${pageContext.request.contextPath}/movie/MovieContent.do">${item.title}</a></h3>
	         					</span>
	         					<span class="bookdate">
	         						<h4>${item.lookdate}</h4>
	         					</span>
	         					<span class="theaterpeople">
	         						<h4>${item.branch} ${item.peonum}명 (${item.seatno})</h4>
	         					</span>
	         					<!-- 예매취소 버튼 -->
	         					<c:choose>
	         						<c:when test="${item.bookok=='Y'}">
	         							<input type="button" value="예매취소" class="btn cancelbtn"/>
	         						</c:when>
	         						<c:otherwise>
	         							<input type="button" value="취소불가" class="btn cancelbtn" disabled/>
	         						</c:otherwise>
	         					</c:choose>
	         				</li>
         				</ul>
                		</c:forEach>
                	</c:otherwise>
                </c:choose>
                </div>
                <!--  페이지 넘김 -->
				<div id="page">
                    <div class="row">
                        <div class="col">
                        <ul class="pagination">
                           <c:choose>
								<c:when test="${pageData.prevPage>0}">
									<c:url value="/mypage/bookinglist.do" var="prevPageUrl">
										<c:param name="page" value="${pageData.prevPage}"/>
									</c:url>
									<li class="page-item"><a class="page-link" href="${prevPageUrl}">이전</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item"><a class="page-link">이전</a></li>
								</c:otherwise>
							</c:choose>
							
							<c:forEach var="i" begin="${pageData.startPage}" end="${pageData.endPage}" varStatus="status">
								<c:url value="/mypage/bookinglist.do" var="pageUrl">
									<c:param name="page" value="${i}"/>
								</c:url>
								<c:choose>
									<c:when test="${pageData.nowPage ==i}">
										<li class="page-item page-link"><a class="page-link"><strong class="thispage">${i}</strong></a></li>
									</c:when>
									<c:otherwise>
										<li class="page-item"><a class="page-link" href="${pageUrl}">${i}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
	
							<c:choose>
								<c:when test="${pageData.nextPage>0}">
									<c:url value="/mypage/bookinglist.do" var="nextPageUrl">
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

            </div>
		</div>
        
        <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js_files/bookinglist.js"></script>
        <script src="${pageContext.request.contextPath}/assets/plugins/sweetalert/sweetalert2.all.min.js"></script>

		<script src="${pageContext.request.contextPath}/assets/plugins/lightbox/js/lightbox.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/plugins/handlebars/handlebars-v4.7.6.js"></script>
<%@ include file="../_inc/footer.jsp"%>