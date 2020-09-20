<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/support_home.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/support_sidebar.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/support_rent.css?time=<%=System.currentTimeMillis()%>">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>

    	<div class="row">
	        <div id="contents">
		        <!-- ==== 사이드 바 ==== -->
		        <ul class="sidebar">
	                <li class="list-group-item"><a class="sidebar_link <% if (request.getRequestURI().indexOf("support_home") > -1) { %>on<%} %>" href="<%=request.getContextPath()%>/support/support_home.do">고객센터 홈</a></li>
	                <li class="list-group-item"><a class="sidebar_link <% if (request.getRequestURI().indexOf("notice") > -1) { %>on<%} %>" href="<%=request.getContextPath()%>/support/notice_list.do">공지사항</a></li>
	                <li class="list-group-item"><a class="sidebar_link <% if (request.getRequestURI().indexOf("faq") > -1) { %>on<%} %>" href="<%=request.getContextPath()%>/support/faq_list.do">자주찾는 질문</a></li>
	                <li class="list-group-item"><a class="sidebar_link <% if (request.getRequestURI().indexOf("qna") > -1) { %>on<%} %>" href="<%=request.getContextPath()%>/support/qna.do">1:1 문의</a></li>
	            	<li class="list-group-item"><a class="sidebar_link <% if (request.getRequestURI().indexOf("rent") > -1) { %>on<%} %>" href="<%=request.getContextPath()%>/support/rent.do">대관문의</a></li>
	            </ul>
		        <!-- ==== 사이드바 끝 ==== -->
	            <!-- ==== 본문 시작 ==== -->
	            <div class="content">
		                <div class="rent_title">
		                    <h2>대관문의</h2>
		                    <ul>
		                        <li>개인이나 단체를 위한 대관서비스로 Cinephile의 넓고 쾌적한 극장에서 즐거운 추억을 만드실 수 있습니다.</li>
								<li>단체/대관 문의 외 문의나 불편사항은 이메일 문의로 작성 부탁드립니다.</li>
		                    </ul>
		                </div>
	                <form class="form-horizontal"  name="rent_form" id="rent_form"
		            	action="${pageContext.request.contextPath}/support/rent_ok.do">
		                <div class="form_title">
		                        <h4>문의내용<span class="pull-right">* 필수입력</span></h4>
		                </div>
	                    <div class="rent_box">
		                    <div class="form-group">
		                        <label for="rent_title"  class="must col-xs-2 ">영화관 선택</label>
		                            <div class="col-xs-3">
										<!-- 1차 카테고리 -->
										<div class="form-group">
											<select name="sel_region" id="sel_region" class="form-control">
												<option value="">지역선택</option>
												<option value="seoul1">서울</option>
												<option value="gyeonggi1">경기</option>
												<option value="incheon1">인천</option>
												<option value="gangwon1">강원</option>
												<option value="daejeon1">대전</option>
												<option value="chungcheong1">충청/세종</option>
												<option value="gwangju1">광주</option>
												<option value="jeolla1">전라</option>
												<option value="daegu1">대구/경북</option>
												<option value="busan1">부산/울산</option>
												<option value="gyeongnam1">경남</option>
												<option value="jeju1">제주</option>
											</select>
										</div>
									</div>
									<div class="col-xs-5">
										<!-- 2차 카테고리 -->
										<div class="form-group">
											<select name="sel_theater" id="sel_theater" class="form-control">
												<option value="">영화관선택</option>
											</select>
										</div>
									</div>
		                        </div>
		                        <div class="form-group">
		                        	<label for="rent_date"  class="must col-xs-2 " >대관 희망일</label>
		                        	<div class="col-xs-5">
		                        		<input name="rent_date" type="text" id="datepicker">
		                        	</div>
		                        </div>
			                    <div class="form-group">
			                        <label for="rent_content"  class="must col-xs-2 " >내용</label>
			                        <div class="col-xs-10">
			                            <textarea name="rent_content" id="rent_content" class="form-control"  placeholder="정확한 행사내용과 통화가능시간을 남겨주시면 더욱 빠른 답변이 가능합니다." /></textarea>
			                        </div>
			                    </div>
			                </div>
		                <div class="user_box">
		                        <h4>회원 정보</h4>
		                        <div class="form-group">
		                            <label for="user_name"  class="must col-xs-2 ">이름</label>
		                            <div class="col-xs-10">
		                                <input type="text" name="user_name" id="user_name" class="form-control" />
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="tel"  class="must col-xs-2 ">연락처</label>
		                            <div class="col-xs-10">
		                                <input type="text" name="tel" id="tel" class="form-control" placeholder="' - '를 제외하고 입력하세요." />
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="email"  class="must col-xs-2 ">이메일</label>
		                            <div class="col-xs-10">
		                                <input type="text" name="email" id="email" class="form-control" placeholder="입력하신 전화번호 혹은 이메일로 답변이 전송됩니다." />
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
	    <script id="category_item_tmpl" type="text/x-handlebars-template">
			{{#each item}}
			<option value="{{value}}">{{text}}</option>
			{{/each}}
		</script>
		<script src="../assets/plugins/validate/jquery.validate.min.js"></script>
		<script src="../assets/plugins/validate/additional-methods.min.js"></script>
    `````<script src="../assets/plugins/ajax_sws/ajax_helper.js"></script>
    `````<script src="../assets/plugins/handlebars/handlebars-v4.0.11.js"></script>
		<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>  

	    <script type="text/javascript">
	    $(function() {
	    	$.validator.addMethod("kor", function(value, element) {
	    		return this.optional(element) ||
	    		/^[ㄱ-ㅎ가-힣]*$/i.test(value);
	    	});
	    	
	    	$(function(){
	    		$( "#datepicker" ).datepicker({
	    		      showOn: "both",
	    		      buttonImage: "https://kr.seaicons.com/wp-content/uploads/2015/06/calendar-icon.png",
	    		      buttonImageOnly: true,
	    		      buttonText: "Select date",
	    		      nextText: '다음 달',
	    		      prevText: '이전 달',
	    		      showButtonPanel: true, 
	    		      currentText: '오늘 날짜', 
	    		      closeText: '닫기', 
	    		      dateFormat: "yy-mm-dd",
	    		      dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
	    		      dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
	    		      monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
	    		      monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
	    		    });
	    	});
	    	
	    	$(function() {
	    		// 드롭다운의 선택변경 이벤트
	    		$("#sel_region").change(function() {
	    			// 결과가 표시될 #sel_theater에 내용 삭제
	    			$("#sel_theater").empty();
	    			// 사용자 선택값 가져오기
	    			var choice = $(this).find("option:selected").val();
	    			// 선택값이 없다면 중단
	    			if (!choice) {
	    				return false;
	    			}
	    			
	    			$.get("../api/category.do", {type: choice}, function(req) {
	    				// 미리 준비한 HTML들을 읽어옴.
	    				var template = Handlebars.compile($("#category_item_tmpl").html());
	    				// Ajax를 통해서 읽어온 json을 템플릿에 병함
	    				var html = template(req);
	    				// #child에 읽어온 내용 추가
	    				$("#sel_theater").append(html);
	    			});
	    		});
	    	});
	    	
	    	$("#rent_form").submit(function(e) {
	            e.preventDefault();
		        // 영화관 선택
				if($('#sel_region').val() == "") {
					alert("지역을 선택해 주세요");
	                $('#sel_region').eq(0).focus();
	                return false;
	            }
	            if($('#sel_theater').val() == "") {
	                alert("영화관을 선택해 주세요.");
	                $('#sel_theater').eq(0).focus();
	                return false;
	            }
	            // 개인정보수집 동의
	            var agree = $("input.agree:checked").val();
	            if (!agree) {
	                alert("개인정보수집 동의를 해주셔야 등록이 가능합니다.");
	                return false;
	            } else if (!rent_title.value || !rent_contents.value || !user_name.value ||
	            		!birthdate.value || !tel.value || !email.value) {
	            	return false;
	            } else {
	            	alert("등록이 완료되었습니다.");
	            	location.href="<%=request.getContextPath()%>/support/rent_complete.do";
	            }
	        });
	    });
	    </script>
<%@ include file="../_inc/footer.jsp" %>