<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    
    <!-- 필요CSS -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HeaderFooterYo.css" />
    <!-- //필요CSS -->
    <!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <!-- //부트스트랩 -->
    <!-- 구글폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Montserrat+Subrayada:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
    <!-- //구글폰트 -->
	<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<body>
    <div id="container">
        <div id="header">
        	<div class="filmlogo_header">
        		<a href="<%=request.getContextPath()%>/index.jsp"><img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FnogAg%2FbtqFWY15hQN%2FVGrVJLX5KA47ap52Q6jHZK%2Fimg.png" /></a>
            </div>
            <div class="menu">
                <ul class="mainnav">
                    <li class="nav">
                        <a href="#" class="mains">영화</a>
                        <ul class="subnav">
                            <li><a href="#">박스오피스</a></li>
                            <li><a href="#">영화검색</a></li>
                            <li><a href="#">영화소식</a></li>
                            <li><a href="#">통계</a></li>
                        </ul>
                    </li>
                    <li class="nav">
                        <a href="#" class="mains">예매</a>
                        <ul class="subnav">
                            <li><a href="<%=request.getContextPath()%>/booking/01-booking_time.jsp">예매하기</a></li>
                            <li><a href="<%=request.getContextPath()%>/booking/05-timetable.jsp">극장별시간표</a></li>
                        </ul>
                    </li>
                    <li class="nav"><a href="<%=request.getContextPath()%>/branch/01-branch.jsp" class="mains">극장</a></li>
                    <li class="nav">
                        <a href="<%=request.getContextPath()%>/support/support_home.jsp" class="mains">고객센터</a>
                        <ul class="subnav">
                            <li><a href="<%=request.getContextPath()%>/support/notice_list.jsp">공지사항</a></li>
                            <li><a href="<%=request.getContextPath()%>/support/faq_list.jsp">자주찾는질문</a></li>
                            <li><a href="<%=request.getContextPath()%>/support/qna.jsp">1:1문의</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="right_top">
                <ul>
                    <li><a href="<%=request.getContextPath()%>/login/01-login.jsp">로그인</a></li>
                    <li><a href="<%=request.getContextPath()%>/account/01-welcome.jsp">&nbsp;회원가입</a></li>
                    <li><a href="<%=request.getContextPath()%>/mypage/mypagemain.jsp">&nbsp;마이페이지</a></li>
                </ul>
            </div>
        </div>
    <script type="text/javascript">
        $(function(){
            //.nav에 마우스가 올라가거나 빠져나오는 경우 호출되는 이벤트
            $(".nav").hover(function(){
                $(this).find(".subnav").slideToggle(50);
            });
        });
</script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/changeinfo-(2).css">
<link rel="styleshhet" href="<%=request.getContextPath()%>/plugins/sweetalert/sweetalret2.min.css">
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
                    <form name="form1" id="form1" name="form1" class="form-horizontal">
                        <div class="form-group">
                            <label for="user_id" class="col-xs-2 control-label">아이디</label>
                            <div class="col-xs-10">
                                <p class="form-control-static">abcd1234</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="user_password" class="col-xs-2 control-label"><span style="color:red;">*</span> &nbsp;비밀번호</label>
                            <div class="col-xs-10">
                                <input type="password" class="form-control" name="user_password" id="user_password" style="width:220px" value="" placeholder="영문,숫자 조합 8자리 이상" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="user_password2" class="col-xs-2 control-label"><span style="color:red;">*</span> &nbsp;비밀번호 확인</label>
                            <div class="col-xs-10">
                                <input type="password" class="form-control" name="user_password2" id="user_password2" style="width:220px" value="" placeholder="비밀번호를 다시 입력해주세요" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="user_name" class="col-xs-2 control-label">이름</label>
                            <div class="col-xs-10">
                                <p class="form-control-static">OOO</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="date" class="col-xs-2 control-label">생년월일</label>
                            <div class="col-xs-10">
                                <input type="date" class="form-control" value="2000-01-01" style="width:150px;" disabled />
                            </div>
                        </div>
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
                        <div class="form-group">
                            <label for="maillist" class="col-xs-2 control-label">
                            <input type="checkbox" id="email_enable" /> 이메일</label>
                            <div class="col-xs-10">
                                <input type="text" class="form-control" name="mail" id="mail" value="abcd@gmail.com" style="width:200px;"disabled/>
                                &nbsp;&nbsp;
                                <input type="button" id="certigo" class="btn btn-info" value="인증하기" style="display:none;" />
                            </div>
                        </div>
                        <div class="form-group certinum">
                            <label for="certinum" class="col-xs-2 control-label">인증번호</label>
                            <div class="col-xs-10">
                                <input type="text" class="form-control" name="certinum" id="certinum"  placeholder="인증번호를 입력하세요" style="width:180px" />
                                &nbsp;&nbsp;
                                <input type="button" class="certi_confirm btn btn-info" value="인증번호확인" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="phonelist" class="col-xs-2 control-label">
                            <input type="checkbox" id="phone_enable"/> 연락처</label>
                            <div class="col-xs-10">
                                <input type="text" class="form-control" name="phone" id="phone" value="01012345678" style="width:150px; "disabled/>
                                (-없이 입력하세요)
                            </div>
                        </div>
                        <div class="form-group addressgroup">
                            <label for="address" class="col-xs-2 control-label">
                            <input type="checkbox" id="address_enable"/> 주소</label>
                            <div class="col-xs-10">
                                <input type="text" class="form-control" name="address1" id="address1" value="서울특별시 서초구 서초대로77길 54" style="width:270px" disabled/>
                                &nbsp;<input type="button" class="addressbutton btn btn-info" value="검색" style="display:none;"/>
                                <p></p>
                                <input type="text" class="form-control" name="address2" id="address2" value="서초 W타워 14층" style="width:210px;" disabled/>
                            </div>
                        </div>
                        <hr />
                        <div class="twobutton">
                            <button type="submit" name="button" id="change_btn" class="btn btn-success" style="width:110px;">회원정보 수정</button>
                            &nbsp;&nbsp;
                            <input type="button" class="out btn btn-warning" name="" value="취소"
                            style="width:70px;"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/jquery.validate.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/additional-methods.min.js"></script>
        <script src="<%=request.getContextPath()%>/plugins/sweetalert/sweetalert2.all.min.js"></script>
        <script type="text/javaScript">
			$(function(){
				jQuery.validator.setDefaults({
	                onkeyup:false,
	                onclick:false,
	                onfocusout:false,
	                showErrors:function(errorMap,errorList){
	                    if(this.numberOfInvalids()){
	                        swal({
	                            title:"에러",
	                            text:errorList[0].message,
	                            type:"error"
	                        }).then(function(result){
	                            setTimeout(function(){
	                                $(errorList[0].element).val('');
	                                $(errorList[0].element).focus();
	                            },100);
	                        });
	                    }
	                }
	            });
				$.validator.addMethod("phones",function(value,element){
	                return this.optional(element)||
	                /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/i.test(value)||
	                /^\d{2,3}\d{3,4}\d{4}$/i.test(value);
	            });
				$("#form1").validate({
					submitHandler: function() {
						swal({
		        			title:"확인",
		        			text:"정말 이 정보로 수정하시겠습니까?",
		        			type:"question",
		        			confirmButtonText:"Yes",
		        			showCancelButton:true,
		        			cancelButtonText:"No",
		        		}).then(function(result){
		        			if(result.value){
		        				swal("","수정되었습니다.","success");
		        			}
		        		});

			        },
					rules:{
						user_password:{required:true,minlength:8,maxlength:20,passwordCk:true},
						user_password2:{required:true,equalTo:"#user_password"},
						mail:{required:true,email:true},
						certinum:{required:true},
						phone:{required:true,phones:true},
						address1:{required:true},
						address2:{required:true}
					},
					messages:{
						user_password:{
							required:"비밀번호를 입력하세요.",
							minlength:"비밀번호는 8글자 이상 입력하셔야 합니다.",
							maxlength:"비밀번호는 최대 20자까지 가능합니다.",
						},
						user_password2:{
							required:"비밀번호 확인값을 입력하세요.",
							equalTo:"비밀번호 확인이 잘못되었습니다."
						},
						mail:{
							required:"이메일을 입력하세요.",
							email:"이메일 형식이 잘못되었습니다."
						},
						certinum:{
							required:"인증번호를 입력하세요."
						},
						phone:{
							required:"연락처를 입력하세요.",
							phones:"연락처 형식이 잘못되었습니다."
						},
						address1:{
							required:"주소를 검색해주세요.",
						},
						address2:{
							required:"나머지 주소를 입력해주세요."
						}
					}
				});
				
				$(document).on("click","#certigo",function(){
					swal({
						html:"해당 메일로 인증번호가 발송되었습니다."
					});
				});
				$(document).on("click",".certi_confirm",function(){
					swal({
						html:"인증되었습니다."
					});
				});
				$(document).on("click",".addressbutton",function(){
					window.open('<%=request.getContextPath()%>/mypage/address_search.jsp','','width=550,height=650,scrollbars=no,toolbars=no,menubar=no,status=no,location=no');
				});
				$(document).on("click",".out",function(){
					location.href="<%=request.getContextPath()%>/mypage/mypagemain.jsp";
				});
				$("#email_enable").change(function(){
					var now=$("#mail").prop("disabled");
					$("#mail").prop("disabled",!now);
					if($("#mail").prop("disabled")==false){
						$("#mail").focus();
					}
					if($("#certigo").css("display") == "none"){
					    $("#certigo").show();
					    $(".certinum").show();
					} else {
					    $("#certigo").hide();
					    $(".certinum").hide();
					}
				});
				$("#phone_enable").change(function(){
					var now=$("#phone").prop("disabled");
					$("#phone").prop("disabled",!now);
					if($("#phone").prop("disabled")==false){
						$("#phone").focus();
					}
				});
				$("#address_enable").change(function(){
					var now=$("#address1").prop("disabled");
					var now2=$("#address2").prop("disabled");
					$("#address1").prop("disabled",!now);
					$("#address2").prop("disabled",!now2);
					if($("#address1").prop("disabled")==false){
						$("#address1").focus();
					}
					if($(".addressbutton").css("display")=="none"){
						$(".addressbutton").show();
					}
					else{
						$(".addressbutton").hide();
					}
				});
				
			});

		</script>
<div id="footer">
	<div class="filmlogo_footer">
		<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FnogAg%2FbtqFWY15hQN%2FVGrVJLX5KA47ap52Q6jHZK%2Fimg.png" />
	</div>
	<div class="companyinfo">
		<p>
			서울특별시 서초구 서초동 1303-37 서초W타워 13층<br /> 대표이사 : 마이클 장 | 사업자 등록번호 : 123-45-67890 | 통신판매업신고번호 : 2020-서울서초-0001<br /> 개인정보보호 책임자 : 장혁준 | 고객센터 : 1544-8282<br /> COPYRIGHT ⓒ Cinephile. Inc. All rights reserved<br />
		</p>
	</div>
	<div class="theaterlogo">
		<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbdRPDR%2FbtqFOM3ejqr%2F3Dq6LbMGNQkNjcSKY7fKT0%2Fimg.png" alt="영화관로고">
	</div>
</div>

</div>

<!-- //폰트어썸 -->
<script src="https://kit.fontawesome.com/2de30be98d.js" crossorigin="anonymous"></script>
<!-- //폰트어썸 -->

<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
</body>

</html>