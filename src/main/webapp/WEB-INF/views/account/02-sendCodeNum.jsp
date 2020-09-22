<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Hello JSP</title>
</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/mail/">
    
    	<input type="email" name="to" id="to"/>
    	
    	<input type="email" name="subject" id="subject"/>
    	
    	<textarea type="content" class="ckeditor"></textarea>
    
    </form>
    <script src="//cdn.ckeditor.com/4.12.1/basic/ckeditor.js"></script>
</body>
</html>