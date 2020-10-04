<!-- 질문 내역 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../_inc/header.jsp" %>
<meta http-equiv="refresh" content="60">
<title>마이페이지 > 문의 내역</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/inquirylist.css">

        <div id="content" class="clear">
        	<!-- 사이드바 -->
            <div class="sidebar">
                <div class="sidemenu">
                    <ul>
                    	<li><a href="${pageContext.request.contextPath}/mypage/mypagemain.do">마이페이지 홈</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/bookinglist.do">나의 예매내역</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/choicelist.do">나의 좋아요내역</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/changeinfo-(1).do">회원정보 수정</a></li>
                        <li><a href="${pageContext.request.contextPath}/mypage/withdrawal-(1).do">회원 탈퇴</a></li>
                        <li style="background:#eee"><a href="${pageContext.request.contextPath}/mypage/inquirylist.do">나의 문의내역</a></li>
                    </ul>
                </div>
            </div>
            <!-- 사이드바 끝 -->
            <div id="body">
                <div class="bodytop">
                    <h3 style="font-family: 'Jua', sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-bullhorn"></i>&nbsp;&nbsp;&nbsp;${my_session.user_name}(${my_session.user_id})님의 문의 내역입니다.</h3>
                </div>
                <!-- 문의 내역 게시판 형식으로 -->
                <div class="table_area">
					<table class="table_faq_list">
						<thead>
							<tr>
								<th align="center" style="width: 10px;">번호</th>
								<th align="center" style="width: 400px;">제목</th>
								<th align="center" style="width: 30px;">등록일</th>
							</tr>
						</thead>
						<tbody>
						<c:choose>
							<c:when test="${output==null || fn:length(output)==0}">
								<td colspan="3" align="center">문의내역이 없습니다.</td>
							</c:when>
							<c:otherwise>
								<c:forEach var="item" items="${output}" varStatus="status">
								<c:url value="/mypage/inquirypost.do" var="viewUrl">
									<c:param name="qna_id" value="${item.qna_id}"/>
								</c:url>
								<tr>
									<td>${item.no}</td>
									<td class="detail_title"><a href="${viewUrl}">${item.qna_title}</a></td>
									<td>${item.reg_date}</td>
								</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
						</tbody>
					</table>
					<c:choose>
			        <c:when test="${output==null||fn:length(output)==0}">
			        </c:when>
        			<c:otherwise>
        			<!--  페이지 넘김 -->
					<div id="page">
	                    <div class="row">
	                        <div class="col">
	                        <ul class="pagination">
	                           <c:choose>
									<c:when test="${pageData.prevPage>0}">
										<c:url value="/mypage/inquirylist.do" var="prevPageUrl">
											<c:param name="page" value="${pageData.prevPage}"/>
										</c:url>
										<li class="page-item"><a class="page-link" href="${prevPageUrl}">이전</a></li>
									</c:when>
									<c:otherwise>
										<li class="page-item"><a class="page-link">이전</a></li>
									</c:otherwise>
								</c:choose>
								
								<c:forEach var="i" begin="${pageData.startPage}" end="${pageData.endPage}" varStatus="status">
									<c:url value="/mypage/inquirylist.do" var="pageUrl">
										<c:param name="page" value="${i}"/>
									</c:url>
									<c:choose>
										<c:when test="${pageData.nowPage ==i}">
											<li class="page-item page-link"><a class="page-link" style="background-color:#eee;"><strong class="thispage">${i}</strong></a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link" href="${pageUrl}">${i}</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
		
								<c:choose>
									<c:when test="${pageData.nextPage>0}">
										<c:url value="/mypage/inquirylist.do" var="nextPageUrl">
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
						<!-- 1:1문의 페이지로 가는 버튼 -->
		            <div class="inqbutton">
		                <button type="button" class="btn faqgo">1:1문의</button>
		            </div>
				</div>
				
                
            </div>
        </div>
        <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js_files/inquirylist.js"></script>
<%@ include file="../_inc/footer.jsp"%>