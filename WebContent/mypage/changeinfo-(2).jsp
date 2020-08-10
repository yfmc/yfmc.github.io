<!-- 회원정보 수정 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<title>마이페이지 > 회원정보 수정</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/changeinfo-(2).css">
<link rel="styleshhet" href="<%=request.getContextPath()%>/plugins/sweetalert/sweetalret2.min.css">
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
                    <h2>회원정보 수정</h2>
                    <hr />
                </div>
                
                <div class="bodycenter">
                	<!-- 회원정보 수정 폼 -->
                    <form name="form1" id="form1" name="form1" class="form-horizontal">
                        <!-- 아이디 -->
                        <div class="form-group">
                            <label for="user_id" class="col-xs-2 control-label">아이디</label>
                            <div class="col-xs-10">
                                <p class="form-control-static">abcd1234</p>
                            </div>
                        </div>
                        <!-- 비밀번호 -->
                        <div class="form-group">
                            <label for="user_password" class="col-xs-2 control-label"><span style="color:red;">*</span> &nbsp;비밀번호</label>
                            <div class="col-xs-10">
                                <input type="password" class="form-control" name="user_password" id="user_password" style="width:250px" value="" placeholder="영문,숫자,특수문자 조합 8자리 이상" />
                            </div>
                        </div>
                        <!-- 비밀번호 확인 -->
                        <div class="form-group">
                            <label for="user_password2" class="col-xs-2 control-label"><span style="color:red;">*</span> &nbsp;비밀번호 확인</label>
                            <div class="col-xs-10">
                                <input type="password" class="form-control" name="user_password2" id="user_password2" style="width:250px" value="" placeholder="비밀번호를 다시 입력해주세요." />
                            </div>
                        </div>
                        <!-- 이름 -->
                        <div class="form-group">
                            <label for="user_name" class="col-xs-2 control-label">이름</label>
                            <div class="col-xs-10">
                                <p class="form-control-static">OOO</p>
                            </div>
                        </div>
                        <!-- 생년월일 -->
                        <div class="form-group">
                            <label for="date" class="col-xs-2 control-label">생년월일</label>
                            <div class="col-xs-10">
                                <input type="date" class="form-control" value="2000-01-01" style="width:150px;" disabled />
                            </div>
                        </div>
                        <!-- 성별 -->
                        <div class="form-group">
                            <label for="gender" class="col-xs-2 control-label">성별</label>
                            <div class="col-xs-10">
                                <label>
                                    <input type="radio" name="gender" id="gender_m" value="M" checked disabled />남&nbsp;
                                </label>
                                <label>
                                    <input type="radio" name="gender" id="gender_f" value="F" disabled />여
                                </label>
                            </div>
                        </div>
                        <!-- 이메일 -->
                        <div class="form-group">
                            <label for="maillist" class="col-xs-2 control-label"><span style="color:red;display:none;" class="hiddenstar1">*</span>
                            <input type="checkbox" id="email_enable" /> 이메일</label>
                            <div class="col-xs-10">
                                <input type="text" class="form-control" name="mail" id="mail" value="abcd@gmail.com" style="width:200px;"disabled/>
                                &nbsp;&nbsp;
                                <input type="button" id="certigo" class="btn btn-info" value="인증하기" style="display:none;" />
                            </div>
                        </div>
                        <!-- 인증번호 및 인증번호 확인 -->
                        <div class="form-group certinum">
                            <label for="certinum" class="col-xs-2 control-label">인증번호</label>
                            <div class="col-xs-10">
                                <input type="text" class="form-control" name="certinum" id="certinum" placeholder="인증번호를 입력하세요." style="width:180px" />
                                &nbsp;&nbsp;
                                <input type="button" class="certi_confirm btn btn-info" value="인증번호확인" />
                            </div>
                        </div>
                        <!-- 연락처 -->
                        <div class="form-group">
                            <label for="phonelist" class="col-xs-2 control-label">
                            <span style="color:red;display:none;" class="hiddenstar2">*</span> <input type="checkbox" id="phone_enable"/> 연락처</label>
                            <div class="col-xs-10">
                                <input type="text" class="form-control" name="phone" id="phone" value="01012345678" style="width:150px; "disabled/>
                                (-없이 입력하세요)
                            </div>
                        </div>
                        <!-- 주소 -->
                        <div class="form-group addressgroup">
                            <label for="address" class="col-xs-2 control-label">
                            <span style="color:red;display:none;" class="hiddenstar3">*</span> <input type="checkbox" id="address_enable"/> 주소</label>
                            <div class="col-xs-10">
                                <input type="text" class="form-control" name="address1" id="address1" value="서울특별시 서초구 서초대로77길 54" style="width:270px" disabled/>
                                &nbsp;<input type="button" class="addressbutton btn btn-info" value="검색" style="display:none;"/>
                                <p></p>
                                <input type="text" class="form-control" name="address2" id="address2" value="서초 W타워 14층" style="width:210px;" disabled/>
                            </div>
                        </div>
                        <hr />
                        
                        <!-- 수정버튼, 취소버튼 -->
                        <div class="twobutton">
                            <button type="submit" name="button" id="change_btn" class="btn btn-success" style="width:110px;">회원정보 수정</button>
                            &nbsp;&nbsp;
                            <input type="button" class="out btn btn-warning" name="" value="취소"
                            style="width:70px;"/>
                        </div>
                        <input type="hidden" name="checked_id" value="">
                    </form>
                </div>
            </div>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/jquery.validate.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/additional-methods.min.js"></script>
        <script src="<%=request.getContextPath()%>/plugins/sweetalert/sweetalert2.all.min.js"></script>
		<script src="<%=request.getContextPath()%>/js_files/changeinfo-(2).js"></script>
<%@ include file="../_inc/footer.jsp"%>