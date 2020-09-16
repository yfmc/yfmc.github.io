<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/admin_header.jsp" %>
        <div id="page-wrapper">
            <div class="row">
                <div class="title col-lg-12">
                    <h1 class="page-header">공지사항</h1>
                </div>
                <div class="content_box">
		            <div class="notice_title">
				     	<h3>공지사항 글 작성</h3>
		            </div>
		            <form class="form-horizontal"  name="notice_form" id="notice_form">
			            <div class="form-group">
				            <label for="notice_title"  class="must col-xs-2 ">제목</label>
				            <div class="col-xs-10">
				            	<input type="text" name="notice_title" id="notice_title" class="form-control" />
				            </div>
			            </div>
			            <div class="form-group">
				            <label for="notice_content"  class="must col-xs-2 ">내용</label>
					        <div class="col-xs-10">
					            <textarea name="notice_content" id="notice_content" class="form-control"  /></textarea>
					        </div>
				        </div>
				        <div class="btn_btm_wrap">
				        	<button type="submit" class="compilte btn btn-primary pull-right">입력완료</button>
				        </div>
			        </form>
		        </div>
            </div>
        </div>
    
	<script type="text/javascript">
	$("#notice_form").submit(function(e) {
		e.preventDefault();
        alert("등록이 완료되었습니다.");
        location.href="<%=request.getContextPath()%>/admin/admin_notice_list.do";
    });
	</script>
    
<%@ include file="../_inc/admin_footer.jsp" %>