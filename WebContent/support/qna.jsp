<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/support_home.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/support_sidebar.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/support_qna.css?time=<%=System.currentTimeMillis()%>">
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
	            <!-- ==== 본문 시작 ==== -->
	            <div class="content">
	                <div class="qna_title">
	                    <h2>1:1문의</h2>
	                    <ul>
	                        <li>문의하시기전 FAQ(자주찾는 질문)를 확인하시면 궁금증을 더욱 빠르게 해결 하실 수 있습니다.</li>
	                        <li>1:1문의글 답변 운영시간 09:00 ~ 18:00</li>
	                    </ul>
	                    <span>고객님의 문의에 <span style="color:#ff7787">답변하는 직원은 고객 여러분의 가족 중 한 사람</span>일 수 있습니다.
	                   	<p style="font-size:12px;">고객의 언어폭력(비하, 욕설, 반말, 성희롱 등)으로부터 직원을 보호하기 위해 관련 법에 따라 수사기관에 필요한 조치를 요구할 수 있으며,
	                   	<br />형법에 의해 처벌 대상이 될 수 있습니다.</p></span>
	                </div>
	                <div class="form_title">
	                        <h4>문의내용<span class="pull-right">* 필수입력</span></h4>
	                </div>
	                <form class="form-horizontal"  name="qna_form" id="qna_form">
	                    <div class=" qna_box">
	                        <div class="form-group">
	                            <label for="qna_title" class="must col-xs-2 ">제목</label>
	                            <div class="col-xs-10">
	                                <input type="text" name="qna_title" id="qna_title" class="form-control" />
	                            </div>
	                        </div>
	                        <div class="form-group">
	                            <label for="qna_contents" class="must col-xs-2 ">내용</label>
	                            <div class="col-xs-10">
	                                <textarea name="qna_contents" id="qna_contents" class="form-control"  /></textarea>
	                            </div>
	                        </div>
	                        <div class="form-group">
	                            <label for="textbox" class="col-xs-2 ">첨부파일</label>
	                            <div class="col-xs-2">
	                                <input type="file" name="file_img" id="file_img" class="file_img" >
	                            </div>
	                        </div>
	                        <h4>회원 정보</h4>
	                        <div class="form-group">
	                            <label for="user_name" class="must col-xs-2">이름</label>
	                            <div class="col-xs-10">
	                                <input type="text" name="user_name" id="user_name" class="form-control" />
	                            </div>
	                        </div>
	                        <div class="form-group">
	                            <label for="birthdate" class="must col-xs-2">생년월일</label>
	                            <div class="col-xs-10">
	                                <input type="text" name="birthdate" id="birthdate" class="form-control"  placeholder="예) 1900-01-01" />
	                            </div>
	                        </div>
	                        <div class="form-group">
	                            <label for="tel" class="must col-xs-2">연락처</label>
	                            <div class="col-xs-10">
	                                <input type="text" name="tel" id="tel" class="form-control" placeholder="' - '를 제외하고 입력하세요." />
	                            </div>
	                        </div>
	                        <div class="form-group">
	                            <label for="email" class="must col-xs-2">이메일</label>
	                            <div class="col-xs-10">
	                                <input type="text" name="email" id="email" class="form-control" placeholder="입력하신 이메일로 답변이 전송됩니다." />
	                            </div>
	                        </div>
	                    </div>
		                    <div class="text_box">
			                    <div class="text_box_title">
			                        <span class="pull-right">문의를 통해 아래의 개인정보를 수집합니다.<br /> 수집된 개인정보는 문의 외 목적으로 사용하지 않습니다.</span>
			                    	<h4>개인정보 수집에 대한 동의</h4>
			                    </div>
			                    <p>
			                        개인정보의 수집목적 및 항목<br />
			                        ① 수집 목적 : 원활한 고객 상담, 불편사항 및 문의사항 관련 의사소통 경로 확보<br />
			                        ② 수집 항목<br />
			                        *필수입력사항<br />
			                        - 이용자 식별을 위한 항목 : 성명, 연락처, 생년월일, 이메일, 아이디(로그인 시 수집)<br /><br />
			                        개인정보의 보유 및 이용기간<br />
			                        입력하신 개인정보는 문의 접수 후 처리 완료 시점으로 부터 3개월 간 보유 합니다. (단, 생년월일은 이용자 식별 목적으로 이용되며 별도 보관되지 않습니다.)<br />
			                        다만, 소비자보호에 관한 법률 등 관계 법률에 의해 보유할 필요가 있는 경우에는 다음과 같이 보유합니다.<br />
			                        보유기간 : 소비자의 불만 또는 분쟁처리에 관한 기록 3년<br /><br />
			                        ※ 1:1문의 서비스 제공을 위한 최소한의 개인정보이며 거부할 수 있습니다. 다만, 수집에 동의하지 않을 경우 서비스 이용이 제한됩니다.<br />
			                    </p>
		                    </div>
			                    <div class="agree_check pull-right" >
			                        <label><input type="radio" name="radio01" class="agree" id="agree" />동의</label>
			                        <label><input type="radio" name="radio01" class="disagree" id="disagree" checked />동의하지 않음</label>
			                    </div>
	                	<div class="form-group">
			                <div class="btn_btm_wrap">
			                    <button type="reset" class="btn btn-default">취소</button>
			                    <button type="submit" class="btn btn-primary">입력완료</button>
			                </div>
		                </div>
	            	</form>
	            </div>
	            <!-- ==== 본문 끝 ==== -->
	        </div>
	    </div>
		<script src="../plugins/validate/jquery.validate.min.js"></script>
		<script src="../plugins/validate/additional-methods.min.js"></script>
	    <script type="text/javascript">
	    $(function() {
	    	$.validator.addMethod("kor", function(value, element) {
	    		return this.optional(element) ||
	    		/^[ㄱ-ㅎ가-힣]*$/i.test(value);
	    	});
	    	
	    	$.validator.addMethod("phone", function(value, element) {
	    		return this.optional(element) ||
	    		/^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/i.test(value) ||
	    		/^\d{2,3}\d{3,4}\d{4}$/i.test(value);
	    	});
	    	
	    	$("#qna_form").validate({
	    		// 입력검사 규칙
	    		rules: {
	    			qna_title: {required: true},
	    			qna_contents: {required: true},
	    			file_img: {extension: "jpg|gif|png"},
	    			user_name: {required: true, kor: true},
	    			birthdate: {required: true, date: true},
	    			tel: {required: true, phone: true},
	    			email: {required: true, email: true}
	    		},
	    		messages: {
	    			qna_title: {required: "제목을 입력하세요."},
	    			qna_contents: {required: "내용을 입력하세요."},
	    			file_img: {extension: "첨부파일은 jpg, gif, png 형식만 가능합니다."},
	    			user_name: {required: "이름을 입력하세요.", kor:"이름은 한글로 입력하세요"},
	    			birthdate: {required: "생년월일을 입력하세요.", date: "생년월일의 형식이 맞지 않습니다."},
	    			tel: {required: "전화번호를 입력하세요.", phone: "전화번호 형식이 맞지 않습니다."},
	    			email: {required: "이메일을 입력하세요.", email:"이메일 형식이 맞지 않습니다."}
	    		}
	    	});
	    	$("#qna_form").submit(function(e) {
	            e.preventDefault();
	            var agree = $("input.agree:checked").val();
	            if (!agree) {
	                alert("개인정보수집 동의를 해주셔야 등록이 가능합니다.");
	                return false;
	            } else {
	            	alert("등록이 완료되었습니다.");
	            	location.href="<%=request.getContextPath()%>/support/qna_complete.jsp";
	            }
	        });
	    });
	    </script>
<%@ include file="../_inc/footer.jsp" %>