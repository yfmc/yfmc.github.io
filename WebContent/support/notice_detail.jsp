<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="/_inc/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/support_home.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/support_sidebar.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/support_detail.css?time=<%=System.currentTimeMillis()%>">
    <title>공지사항 글</title>
    	<div class="row">
            <div id="contents">
                <!-- ==== 사이드 바 ==== -->
                <ul class="sidebar">
                    <li class="list-group-item"><a href="<%=request.getContextPath()%>/support/support_home.jsp">고객센터 홈</a></li>
                    <li class="list-group-item"><a href="<%=request.getContextPath()%>/support/notice_list.jsp">공지사항</a></li>
                    <li class="list-group-item"><a href="<%=request.getContextPath()%>/support/faq_list.jsp">자주찾는 질문</a></li>
                    <li class="list-group-item"><a href="<%=request.getContextPath()%>/support/qna.jsp">1:1 문의</a></li>
                </ul>
                <!-- ==== 사이드바 끝 ==== -->
                <!-- ==== 본문 시작 ====-->
                <div class="content">
                    <div class="notice_title">
                        <h2>공지사항</h2>
                        <p>저희 영화관의 이슈 및 공지사항을 확인하실 수 있습니다.</p>
                    </div>
                    <table class="detail_content">
                        <thead>
                            <tr class="detail_title">
                                <th style="width: 100px;">번호 10</th>
                                <th style="width: auto;">공지사항10</th>
                                <th style="width: 150px;">등록일 2020.07.20</th>
                                <th style="width: 150px;">조회수 10000</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="detail_box">
                                <td colspan="4">
                                	여기는 공지사항 내용입니다.<br />
                                    잘 읽어 보세요.<br />
                                    확인 잘 해보세요.<br />
                                    저희 영화관을 이용해 주셔서 감사합니다.<br />
                                    Cinephile.<br />
                                    확인 잘 해보세요.<br />
                                    확인 잘 해보세요.<br />
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
                                        <span>공지사항 9</span>
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="list_button pull-right">
                        <a href="<%=request.getContextPath()%>/support/notice_list.jsp" class=" btn btn-success pull-right">목록으로</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- ==== 본문 끝 ==== -->
<%@ include file="/_inc/footer.jsp" %>