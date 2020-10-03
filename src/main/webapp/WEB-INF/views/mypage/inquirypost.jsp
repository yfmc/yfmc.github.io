<!-- 질문 내용 상세 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<title>마이페이지 > 문의 내역</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/inquirypost.css">
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
            	<!-- 문의 상세내역 -->
                <div class="inqpost">
                    <table class="detail_content">
                        <thead>
                            <tr class="detail_title">
                                <th align="center" style="width: 10px;">
                                <c:forEach var="item" items="${output2}" varStatus="status">
                                <c:if test="${item.qna_id==output.qna_id}">
                                ${item.no}
                                </c:if>

                                </c:forEach>
                                </th>
                                <th align="center" style="width: 300px;">${output.qna_title}</th>
                                <th align="center" style="width: 30px;">${output.reg_date}</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="detail_box">
                            	<td colspan="4">
                               		${output.qna_content}
                                <br/><br/><br/>
                                <hr />
                                <br/>
                                <br/>
	                                <c:choose>
	                                <c:when test="${output.answer_check=='미답변'}">
	                                	아직 답변이 없습니다.
	                                </c:when>
	                                <c:otherwise>
                              		${output.answer_content}
          						</c:otherwise>
          						</c:choose>
                                </td>
                            </tr>
                           
                        </tbody>
                    </table>
                    
                    <!-- 문의목록,메인 페이지로 가는 버튼 -->
                    <button type="button" class="btn inqgo">목록으로</button>
                    <button type="button" class="btn maingo">메인으로</button>
                </div>
            </div>
        </div>
        <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js_files/inquirypost.js"></script>
<%@ include file="../_inc/footer.jsp"%>