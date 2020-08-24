<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	//모든 세션값을 삭제하고 돌아가기
	session.invalidate();
	response.sendRedirect("../index.jsp");
%>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Hello JSP</title>
</head>
<body>
    
</body>
</html>