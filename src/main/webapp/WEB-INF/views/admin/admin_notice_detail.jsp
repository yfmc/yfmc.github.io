<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../_inc/admin_header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/admin_detail.css?time=<%=System.currentTimeMillis()%>">
        <div id="page-wrapper">
            <div class="row">
                <div class="title col-lg-12">
                    <h1 class="page-header">공지사항</h1>
                </div>
                <div class="content_box">
		            <table>
						<thead>
	                    	<tr class="detail_title">
	                        	<th style="width: 50px;">${output.notice_id}</th>
	                            <th style="width: auto;">${output.notice_title}</th>
	                            <th style="width: 250px;">등록일 ${output.reg_date}</th>
	                            <th style="width: 100px;">조회수 ${output.views}</th>
	                         </tr>
	                    </thead>
                    </table>
		           	<div class ="detail_content notice_content">
		           		${output.notice_content}
		           	</div>
		           	<hr />
		           	<div class="buttons pull-right">
			           	<button><a href="${pageContext.request.contextPath}/admin/admin_notice_list.do">목록으로</a></button>
			           	<button><a href="${pageContext.request.contextPath}/admin/admin_notice_edit.do?notice_id=${output.notice_id}">수정하기</a></button>
			           	<button><a href="${pageContext.request.contextPath}/admin/admin_notice_delete.do?notice_id=${output.notice_id}">삭제하기</a></button>
		        	</div>
		        </div>
            </div>
        </div>
    
<%@ include file="../_inc/admin_footer.jsp" %>