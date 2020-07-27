<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@include file="../_inc/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/changeinfo-(2).css">
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
                <div class="bodytop">
                    <h2>회원정보 수정</h2>
                    <hr />
                </div>
                <div class="bodycenter">
                    <form name="form1" onsubmit="doSubmit(); return false;" class="form-horizontal">
                        <div class="form-group">
                            <label for="user_id" class="col-sm-2 control-label">아이디</label>
                            <div class="col-sm-5">
                                <p class="form-control-static">abcd1234</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="user_password" class="col-sm-2 control-label">비밀번호</label>
                            <div class="col-sm-5">
                                <input type="password" name="user_password" id="user_password" style="width:220px" value="" placeholder="영문,숫자 조합 8자리 이상" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="user_password" class="col-sm-2 control-label">비밀번호 확인</label>
                            <div class="col-sm-5">
                                <input type="password" name="user_password2" id="user_password2" style="width:220px" value="" placeholder="비밀번호를 다시 입력해주세요" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="user_name" class="col-sm-2 control-label">이름</label>
                            <div class="col-sm-5">
                                <p class="form-control-static">OOO</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="date" class="col-sm-2 control-label">생년월일</label>
                            <div class="col-sm-5">
                                <input type="date" value="2000-01-01" disabled />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="gender" class="col-sm-2 control-label">성별</label>
                            <div class="col-sm-10">
                                <label>
                                    <input type="radio" name="gender" id="gender_m" value="M" checked disabled />남&nbsp;
                                </label>
                                <label>
                                    <input type="radio" name="gender" id="gender_f" value="F" disabled />여
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="maillist" class="col-sm-2 control-label">이메일</label>
                            <div class="col-sm-5">
                                <input type="text" name="mail" id="mail" style="width:100px; height:25px"> @
                                <select name="maillist" id="maillist" style="height:25px">
                                    <option value="naver.com">naver.com</option>
                                    <option value="daum.net">daum.net</option>
                                    <option value="gmail.com">gmail.com</option>
                                </select>
                                &nbsp;&nbsp;
                                <input type="button" onclick="certiinq()" value="인증하기" style="width:70px;" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="certinum" class="col-sm-2 control-label">인증번호</label>
                            <div class="col-sm-5">
                                <input type="text" name="certinum" id="certinum"  placeholder="인증번호를 입력하세요" style="width:180px" />
                                &nbsp;&nbsp;
                                <input type="button" onclick="alert('인증되었습니다.')" value="인증번호확인" style="width:100px;" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="phonelist" class="col-sm-2 control-label">전화번호</label>
                            <div class="col-sm-5">
                                <select name="phonelist" id="phonelist" style="width:55px;height:25px">
                                    <option value="010">010</option>
                                    <option value="02">02</option>
                                    <option value="031">031</option>
                                    <option value="032">032</option>
                                    <option value="033">033</option>
                                    <option value="041">041</option>
                                    <option value="042">042</option>
                                    <option value="043">043</option>
                                    <option value="044">044</option>
                                    <option value="051">051</option>
                                    <option value="052">052</option>
                                    <option value="053">053</option>
                                    <option value="054">054</option>
                                    <option value="055">055</option>
                                    <option value="061">061</option>
                                    <option value="062">062</option>
                                    <option value="063">063</option>
                                    <option value="064">064</option>
                                </select>
                                &nbsp;
                                <input type="text" name="phone2" id="phone2" style="width:66px" />
                                &nbsp;
                                <input type="text" name="phone3" id="phone3" style="width:66px" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="address" class="col-sm-2 control-label">주소</label>
                            <div class="col-sm-5">
                                <input type="text" name="address1" id="address1" placeholder="주소를 입력하세요" style="width:210px" />
                                &nbsp;<input type="button" onclick="addsearch()" value="검색" style="width:70px;"/>
                                <p></p>
                                <input type="text" name="address2" id="address2" placeholder="나머지 주소" style="width:210px" />
                            </div>
                        </div>
                        <hr />
                        <div class="twobutton">
                            <input type="submit" name="button" value="회원정보 수정"
                            style="width:110px;"/>
                            &nbsp;&nbsp;&nbsp;
                            <input type="button" name="" value="취소" onclick="location.href='<%=request.getContextPath()%>/mypage/mypagemain.jsp'"
                            style="width:70px;"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script type="text/javaScript">
			function doSubmit(){
				var frm=document.form1;
				if(!frm.user_password.value){
					alert("비밀번호를 입력해주세요.");
					frm.user_password.focus();
					return false;
				}
				if(!frm.user_password2.value){
					alert("비밀번호 확인란을 채워주세요.");
					frm.user_password2.focus();
					return false;
				}
				if(!frm.mail.value){
					alert("이메일을 입력해주세요.");
					frm.mail.focus();
					return false;
				}
				if(!frm.certinum.value){
					alert("인증번호를 입력해주세요.");
					frm.certinum.focus();
					return false;
				}
				if(!frm.phone2.value){
					alert("전화번호를 입력해주세요.");
					frm.phone2.focus();
					return false;
				}
				if(!frm.phone3.value){
					alert("전화번호를 입력해주세요.");
					frm.phone3.focus();
					return false;
				}
				if(!frm.address1.value){
					alert("주소를 입력해주세요.");
					frm.address1.focus();
					return false;
				}
				if(!frm.address2.value){
					alert("나머지 주소를 입력해주세요.");
					frm.address2.focus();
					return false;
				}
				if(confirm("정말 이 정보로 수정하시겠습니까?")){
					frm.submit();
				}
			}
			function addsearch(){
				window.open('<%=request.getContextPath()%>/mypage/address_search.jsp','','width=550,height=650,scrollbars=no,toolbars=no,menubar=no,status=no,location=no');
			}
			function certiinq(){
				alert("인증번호가 해당 메일로 발송되었습니다.");
			}

		</script>
<%@ include file="../_inc/footer.jsp"%>