<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/admin_header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/admin_detail.css" >
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
                            <th style="width:10%;">번호 24</th>
                            <th style="width:auto;">바람의 나라 재밌음</th>
                            <th style="width:10%;">마이클 장</th>
                            <th style="width:10%;">2020.08.04</th>
                            <th style="width:15%;">답변 여부 : 답변완료</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<tr class="qna_contents">
                    		<td colspan="5">
                    			영화 재미없어요 바람의나라 하세요<br />
                    			영화 재미없어요 바람의나라 하세요<br />
                    			영화 재미없어요 바람의나라 하세요<br />
                    			영화 재미없어요 바람의나라 하세요<br />
                    			영화 재미없어요 바람의나라 하세요<br />
                    			영화 재미없어요 바람의나라 하세요<br />
                    		</td>
                    	</tr>	
                    	<tr class="qna_answer">
                    		<td colspan="5">
                    			=답변내용=<br />
                    			바람의 나라 너나 하세요<br />
                    			바람의 나라 너나 하세요<br />
                    			바람의 나라 너나 하세요<br />
                    			바람의 나라 너나 하세요<br />
                    			바람의 나라 너나 하세요<br />
                    		</td>
                    	</tr>	
                    </tbody>
                </table>
                <div class="list_button pull-right">
                        <a href="<%=request.getContextPath()%>/admin/admin_qna_list.jsp" class=" btn btn-success pull-right">목록으로</a>
                </div>
            </div>
        </div>
    
	<script type="text/javascript" src="../plugins/datatables/datatables.min.js"></script>
	
    
<%@ include file="../_inc/admin_footer.jsp" %>