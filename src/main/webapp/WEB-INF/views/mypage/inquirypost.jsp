<!-- 질문 내용 상세 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/inquirypost.css">
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
            	<!-- 문의 상세내역 -->
                <div class="inqpost">
                    <table class="detail_content">
                        <thead>
                            <tr class="detail_title">
                                <th style="width: 100px;">10</th>
                                <th style="width: auto;">예매가 되지 않습니다.</th>
                                <th style="width: 150px;">2020.07.20</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="detail_box">
                            	<td colspan="4">
                               문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용<br/>
                               문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용<br/>
                               문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용<br/>
                               문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용<br/>
                               문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용<br/>
                               문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용<br/>
                                
                                <br/><br/><br/><br/><br/><br/>
                                <hr />
                               안녕하세요 Cinephile입니다. 문의하신 내용에 대한 답변입니다.<br/><br/>
                               문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 <br/>
                               문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 <br/>
                               문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 <br/>
                               문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 <br/>
                               문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 <br/>
                               문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 <br/>
          
                                </td>
                            </tr>
                            <tr class="page_move" align="left">
                                <td colspan="4">                         
                                        <span class="page_next">다음글</span>
                                        <i class="fas fa-angle-up"></i>
                                        <a href="#" class id="?">
                                        <span>다음 글이 없습니다.</span>
                                    </a>
                                </td>
                            </tr>
                            <tr class="page_move" align="left">
                                <td colspan="4">
                                        <span class="page_prev">이전글</span>
                                        <i class="fas fa-angle-down"></i>
                                    	<a href="#" class id="?">
                                        <span>결제가 되지 않습니다.</span>
                                    </a>
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
        <script src="<%=request.getContextPath()%>/js_files/inquirypost.js"></script>
<%@ include file="../_inc/footer.jsp"%>