<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../_inc/admin_header.jsp" %>
        <div id="page-wrapper">
            <div class="row">
                <div class="title col-lg-12">
                    <h1 class="page-header">자주찾는 질문</h1>
                </div>
                <div class="content_box">
		            <div class="faq_title">
				     	<h3>자주찾는 질문 글 작성</h3>
		            </div>
		            <form class="form-horizontal"  name="faq_form" id="faq_form"
		            	action="${pageContext.request.contextPath}/admin/admin_faq_write_ok.do">
			            <div class="form-group">
				            <label for="faq_title"  class="must col-xs-2 ">제목</label>
				            <div class="col-xs-10">
				            	<input type="text" name="faq_title" id="faq_title" class="form-control" />
				            </div>
			            </div>
			            <div class="form-group">
				            <label for="faq_content"  class="must col-xs-2 ">내용</label>
					        <div class="col-xs-10">
					            <textarea name="faq_content" id="faq_content" class="form-control"  /></textarea>
					        </div>
				        </div>
				        <div class="btn_btm_wrap">
				        	<button type="submit" class="compilte btn btn-primary pull-right">입력완료</button>
				        </div>
			        </form>
		        </div>
            </div>
        </div>
    
<%@ include file="../_inc/admin_footer.jsp" %>