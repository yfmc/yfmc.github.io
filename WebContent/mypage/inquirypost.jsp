<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/inquirypost.css">
        <div id="content" class="clear">
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
            <div id="body">
                <div class="inqpost">
                    <table class="table table-bordered table-condensed">
                        <tr>
                            <td style="width:20px;text-align:center;">17</td>
                            <td style="width:550px">회원 탈퇴는 어떤 절차로 진행되나요?</td>
                            <td style="width:150px">2020-07-17</td>
                        </tr>
                    </table>
                    <table class="table cont table-bordered ">
                        <tr>
                            <td style="padding:30px;">
                                문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 <br/>
                                문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 <br/>
                                문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 <br/>
                                문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 <br/>
                                문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 <br/>
                                문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 문의내용 <br/>
                                
                                <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                                <hr />
                               안녕하세요 Cinephile입니다. 문의하신 내용에 대한 답변입니다.<br/><br/>
                               문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 <br/>
                               문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 <br/>
                               문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 <br/>
                               문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 <br/>
                               문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 <br/>
                               문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 문의답변 <br/>
          
                            </td>
                        </tr>
                    </table>
                    <button type="button" class="btn" onclick="location.href='<%=request.getContextPath()%>/mypage/inquirylist.jsp'">목록으로</button>
                    <button type="button" class="btn" onclick="location.href='<%=request.getContextPath()%>/mypage/mypagemain.jsp'">메인으로</button>
                </div>
            </div>
        </div>
<%@ include file="../_inc/footer.jsp"%>