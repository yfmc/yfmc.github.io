<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../_inc/admin_header.jsp" %>
        <div id="page-wrapper">
            <div class="row">
                <div class="title col-lg-12">
                    <h1 class="page-header">공지사항</h1>
                </div>
                <div class="content_box">
		            <div class="notice_title">
				     	<h3>공지사항 글</h3>
		            </div>
		            <div class = "notice_title">
		            	<h4>제목 : ${output.notice_title}</h4>
		           	</div>
		           	<div class = "notice_content">
		           		내용 : ${output.notice_content}
		           	</div>
		           	<div class="notice_reg_date">
		           		등록일 : ${output.reg_date}
		           	</div>
		           	<div class="notice_views">
		           		조회수 : ${output.views}
		           	</div>
		           	<div class="notice_edit_date">
		           		수정일 : ${output.edit_date}
		           	</div>
		           	<a href="${pageContext.request.contextPath}/admin/admin_notice_list.do">[목록으로]</a>
		           	<a href="${pageContext.request.contextPath}/admin/admin_notice_edit.do?notice_id=${output.notice_id}">[수정하기]</a>
		           	<a href="${pageContext.request.contextPath}/admin/admin_notice_delete.do?notice_id=${output.notice_id}">[삭제하기]</a>
		        </div>
            </div>
        </div>
    
<%@ include file="../_inc/admin_footer.jsp" %>