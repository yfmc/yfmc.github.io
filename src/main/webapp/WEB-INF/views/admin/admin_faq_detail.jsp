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
				     	<h3>자주찾는 질문 글</h3>
		            </div>
		            <div class = "faq_title">
		            	<h4>제목 : ${output.faq_title}</h4>
		           	</div>
		           	<div class = "faq_content">
		           		내용 : ${output.faq_content}
		           	</div>
		           	<div class="faq_reg_date">
		           		등록일 : ${output.reg_date}
		           	</div>
		           	<div class="faq_edit_date">
		           		수정일 : ${output.edit_date}
		           	</div>
		           	<a href="${pageContext.request.contextPath}/admin/admin_faq_list.do">[목록으로]</a>
		           	<a href="${pageContext.request.contextPath}/admin/admin_faq_edit.do?faq_id=${output.faq_id}">[수정하기]</a>
		           	<a href="${pageContext.request.contextPath}/admin/admin_faq_delete.do?faq_id=${output.faq_id}">[삭제하기]</a>
		        </div>
            </div>
        </div>
    
<%@ include file="../_inc/admin_footer.jsp" %>