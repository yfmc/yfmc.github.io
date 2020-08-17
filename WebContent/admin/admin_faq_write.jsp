<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/admin_header.jsp" %>
        <div id="page-wrapper">
            <div class="row">
                <div class="title col-lg-12">
                    <h1 class="page-header">자주찾는 질문</h1>
                </div>
                <div class="faq_box">
		            <div class="faq_title">
				     	<h3>자주찾는 질문 글 작성</h3>
		            </div>
		            <form class="form-horizontal"  name="faq_form" id="faq_form">
			            <div class="form-group">
				            <label for="faq_title"  class="must col-xs-2 ">제목</label>
				            <div class="col-xs-10">
				            	<input type="text" name="faq_title" id="faq_title" class="form-control" />
				            </div>
			            </div>
			            <div class="form-group">
				            <label for="faq_contents"  class="must col-xs-2 ">내용</label>
					        <div class="col-xs-10">
					            <textarea name="faq_contents" id="faq_contents" class="form-control"  /></textarea>
					        </div>
				        </div>
				        <div class="btn_btm_wrap">
				        	<button type="submit" class="compilte btn btn-primary pull-right">입력완료</button>
				        </div>
			        </form>
		        </div>
            </div>
        </div>
    <script src="https://kit.fontawesome.com/2de30be98d.js" crossorigin="anonymous"></script>
	<script src='https://code.jquery.com/jquery-3.5.1.min.js'></script>
	<script src="https://stackpath.bootstracdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
	<script type="text/javascript">
	$("#faq_form").submit(function(e) {
		e.preventDefault();
        alert("등록이 완료되었습니다.");
        location.href="<%=request.getContextPath()%>/admin/admin_faq_list.jsp";
    });
	</script>
    
<%@ include file="../_inc/admin_footer.jsp" %>