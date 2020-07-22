<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="/_inc/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/inquirylist.css">

        <div id="content" class="clear">
            <div class="sidebar">
                <div class="sidemenu">
                    <ul>
                        <li><a href="./bookinglist.jsp">나의 예매내역</a></li>
                        <li><a href="./choicelist.jsp">나의 좋아요내역</a></li>
                        <li><a href="./changeinfo-(1).jsp">회원정보 수정</a></li>
                        <li><a href="./withdrawal-(1).jsp">회원 탈퇴</a></li>
                        <li><a href="./inquirylist.jsp">나의 문의내역</a></li>
                    </ul>
                </div>
            </div>
            <div id="body">
                <div class="bodytop">
                    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ooo(abcd1234)님의 문의 내역입니다.</h3>
                </div>
                <div class="board">
                    <table class="table table-hover table-bordered">
                        <thead>
                            <tr>
                                <th style="width:45px;text-align:center;">번호</th>
                                <th style="width:550px">제목</th>
                                <th style="width:150px">작성일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="text-align:center;">20</td>
                                <td><a href="./inquirypost.jsp">예매가 되지 않습니다.</a></td>
                                <td>2020.07.20</td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">19</td>
                                <td><a href="./inquirypost.jsp">환불은 어느 시점에 적용되나요?</a></td>
                                <td>2020.07.19</td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">18</td>
                                <td><a href="./inquirypost.jsp">등록되지 않은 영화관이 있습니다.</a></td>
                                <td>2020.07.18</td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">17</td>
                                <td><a href="./inquirypost.jsp">회원 탈퇴는 어떤 절차로 진행되나요?</a></td>
                                <td>2020.07.17</td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">16</td>
                                <td><a href="./inquirypost.jsp">사이트가 느립니다.</a></td>
                                <td>2020.07.16</td>
                            </tr>
                        </tbody>
                    </table>
                    <hr />
                    <div class="text-center">
                        <ul class="pagination">
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                            <li class="page-item"><a class="page-link" href="#">>></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
<%@ include file="/_inc/footer.jsp"%>