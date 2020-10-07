<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../_inc/admin_header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/admin_edit.css?time=<%=System.currentTimeMillis()%>" >
        <div id="page-wrapper">
            <div class="row">
                <div class="title col-lg-12">
                    <h1 class="page-header">1:1문의</h1>
                </div>
                <div class="content_box">
				     	<h3>1:1문의 답변하기</h3>
				     	<hr />
				     	<form method="post" action="${pageContext.request.contextPath}/admin/admin_qna_answer_ok.do">
					     	<input type="hidden" name="qna_id" value="${output.qna_id}" />
					     	<div class="title qna_title">
					     		<label for ="qna_title">제목 : </label>${output.qna_title}
					     	</div>
					     	<div class="content qna_content">
					     		<label for ="qna_content">내용 : </label>${output.qna_content}
					     	</div>
					     	<div class="email">
					     		<label for ="email" >받는 메일주소 : </label> <input type="email" name="email"  value="${output.email}"  readonly/>
					     	</div>
					     	<div class="subject">
					     		<label for ="subject" >메일제목 : </label> <input type="text" name="subject" />
					     	</div>				     	
					     	<div>
					     		<label for ="answer_content"> 답변내용 : </label>
					     		<textarea name="answer_content" class="ckeditor">
					     			안녕하십니까, 고객님.<br />
					     			먼저, 저희 Cinephile를 이용해 주셔서 감사합니다.<br /><br />
					     			"${output.user_name}"님 께서 문의하신 내용은 아래와 같습니다.<br /><br />
					     			${output.qna_content}<br /><br />
					     			===========================================<br /><br />
					     			Cinephile의 답변 내용입니다.<br />
					     			
					     		</textarea>
					     	</div>
					     	<hr />
					     	<div class="buttons pull-right">
						     	<button type="submit">답변완료</button>
						     	<button type="reset">다시작성</button>
					     	</div>
				     	</form>
		        </div>
            </div>
        </div>
        <script src="//cdn.ckeditor.com/4.15.0/standard/ckeditor.js"></script>
<%@ include file="../_inc/admin_footer.jsp" %>