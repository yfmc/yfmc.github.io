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
				     	<h3>공지사항 글 수정</h3>
				     	<form method="post" action="${pageContext.request.contextPath}/admin/admin_notice_edit_ok.do">
				     	<input type="hidden" name="notice_id" value="${output.notice_id}" />
				     	<div>
				     		<label for ="notice_title">공지사항 제목 : </label>
				     		<input type="text" name="notice_title" value="${output.notice_title}" />
				     	</div>
				     	<div>
				     		<label for ="notice_content">공지사항 내용 : </label>
				     		<textarea name="notice_content" >${output.notice_content}</textarea>
				     	</div>				     	
				     	<hr />
				     	<button type="submit">저장하기</button>
				     	<button type="reset">다시작성</button>
				     	</form>
		        </div>
            </div>
        </div>    
<%@ include file="../_inc/admin_footer.jsp" %>