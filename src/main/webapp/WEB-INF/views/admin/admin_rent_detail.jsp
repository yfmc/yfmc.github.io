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
                    <h1 class="page-header">대관문의</h1>
                </div>
            </div>
            <!-- /row -->
            <div class="row">
            	<table class="detail_content">
                    <thead>
                        <tr class="detail_title">
                            <th style="width:5%;">${output.rent_id}</th>
                            <th style="width:15%;">${output.rent_date}</th>
                            <th style="width:auto;">희망극장 : ${output.sel_region}&nbsp${output.sel_theater}</th>
                            <th style="width:15%;">작성자 : ${output.user_name}</th>
                            <th style="width:15%;">작성일<br />${output.reg_date}</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<tr class="rent_contents">
                    		<td colspan="5">
                    			${output.rent_content}
                    		</td>
                    	</tr>
                    </tbody>
                </table>
                <div class="list_button pull-right">
                        <a href="<%=request.getContextPath()%>/admin/admin_rent_list.do" class=" btn btn-success pull-right">목록으로</a>
                </div>
            </div>
        </div>
    
	<script type="text/javascript" src="../assets/plugins/datatables/datatables.min.js"></script>
	
    
<%@ include file="../_inc/admin_footer.jsp" %>