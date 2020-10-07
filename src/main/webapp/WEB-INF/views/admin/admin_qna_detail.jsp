<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../_inc/admin_header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/admin_detail.css" >
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">1:1문의</h1>
                </div>
            </div>
            <!-- /.row -->
            <div class="row">
            	<table class="detail_content">
                    <thead>
                        <tr class="detail_title">
                            <th style="width:10%;">${output.qna_id}</th>
                            <th style="width:auto;">${output.qna_title}</th>
                            <th style="width:15%;">작성자 : ${output.user_name}</th>
                            <th style="width:20%;">작성일 : ${output.reg_date}</th>
                            <th style="width:15%;">답변여부 : ${output.answer_check}</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<tr class="qna_contents">
                    		<td colspan="5">
                    			${output.qna_content}
                    		</td>
                    	</tr>
                    	<tr class="qna_file_img">
                    		<td colspan="5">
                    			${output.file_img}
                    		</td>
                    	</tr>		
                    	<tr class="qna_answer">
                    		<td colspan="5">
                    			${output.answer_content}
                    		</td>
                    	</tr>	
                    </tbody>
                </table>
                <hr />
                <div class="list_button pull-right">
                        <button><a href="<%=request.getContextPath()%>/admin/admin_qna_list.do">목록으로</a></button>
                        <button><a href="<%=request.getContextPath()%>/admin/admin_qna_answer.do?qna_id=${output.qna_id}" >답변하기</a></button>
                </div>
            </div>
        </div>
    
	<script type="text/javascript" src="../assets/plugins/datatables/datatables.min.js"></script>
	
    
<%@ include file="../_inc/admin_footer.jsp" %>