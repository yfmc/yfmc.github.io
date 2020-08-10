<!-- 질문 내역 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<title>마이페이지 > 문의 내역</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/inquirylist.css">

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
                <div class="bodytop">
                    <h3 style="font-family: 'Jua', sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-bullhorn"></i>&nbsp;&nbsp;&nbsp;ooo(abcd1234)님의 문의 내역입니다.</h3>
                </div>
                <!-- 문의 내역 게시판 형식으로 -->
                <div class="table_area">
					<table class="table_faq_list">
						<thead>
							<tr>
								<th style="width: 100px;">번호</th>
								<th style="width: auto;">제목</th>
								<th style="width: 150px;">등록일</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>10</td>
								<td class="detail_title"><a href="<%=request.getContextPath()%>/mypage/inquirypost.jsp">예매가 되지 않습니다.</a></td>
								<td>2020.07.20</td>
							</tr>
							<tr>
								<td>9</td>
								<td class="detail_title"><a href="<%=request.getContextPath()%>/mypage/inquirypost.jsp">예매가 되지 않습니다.</a></td>
								<td>2020.07.19</td>
							</tr>
							<tr>
								<td>8</td>
								<td class="detail_title"><a href="<%=request.getContextPath()%>/mypage/inquirypost.jsp">예매가 되지 않습니다.</a></td>
								<td>2020.07.18</td>
							</tr>
							<tr>
								<td>7</td>
								<td class="detail_title"><a href="<%=request.getContextPath()%>/mypage/inquirypost.jsp">예매가 되지 않습니다.</a></td>
								<td>2020.07.17</td>
							</tr>
							<tr>
								<td>6</td>
								<td class="detail_title"><a href="<%=request.getContextPath()%>/mypage/inquirypost.jsp">예매가 되지 않습니다.</a></td>
								<td>2020.07.16</td>
							</tr>
							<tr>
								<td>5</td>
								<td class="detail_title"><a href="<%=request.getContextPath()%>/mypage/inquirypost.jsp">예매가 되지 않습니다.</a></td>
								<td>2020.07.15</td>
							</tr>
							<tr>
								<td>4</td>
								<td class="detail_title"><a href="<%=request.getContextPath()%>/mypage/inquirypost.jsp">예매가 되지 않습니다.</a></td>
								<td>2020.07.14</td>
							</tr>
							<tr>
								<td>3</td>
								<td class="detail_title"><a href="<%=request.getContextPath()%>/mypage/inquirypost.jsp">예매가 되지 않습니다.</a></td>
								<td>2020.07.13</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- 페이지 넘기기 버튼 -->
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
                <!-- 1:1문의 페이지로 가는 버튼 -->
	            <div class="inqbutton">
	                <button type="button" class="btn faqgo">1:1문의</button>
	            </div>
            </div>
        </div>
        <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="<%=request.getContextPath()%>/js_files/inquirylist.js"></script>
<%@ include file="../_inc/footer.jsp"%>