<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/MovieNewsDetail.css">
<!-- ========== 컨텐츠 영역 시작 ========== -->
<div class="movieNews">
<div id="detail">
</div>
<span class="buttonMoving">
<button type="button" class="btn btn-warning" href="#">목록으로</button>
<button type="button" class="btn btn-danger" href="#">맨위로</button>
</span>
</div>

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">

$(document).ready( function() {
	$("#detail").load("../news/Example.html");
});
</script>
<!--// ========== 컨텐츠 영역 끝 ========== -->

<%@ include file="../_inc/footer.jsp"%>
