<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	//파리미터 수신에 사용할 문자셋 설정 (각 페이지당 최 상단에서 1회 설정)
	request.setCharacterEncoding("UTF-8");

	//세션 유효시간 설정(초단위, 기본값 5분) -> 모든 페이지마다 개별 설정함.
	session.setMaxInactiveInterval(60); //session은 내장 객체이므로 별도의 생성과정 없이 바로 사용가능
	
	//사용자 입력값 받기
	String input = request.getParameter("user_email");
	
	if(input != null && !input.equals("")){
		//세션 저장(key,value형식) --> 모든 타입의 객체를 저장할 수 있다.
		session.setAttribute("mysession",input);
	}else{
		//개별 세션 삭제
		session.removeAttribute("mysession"); 
		//저장된 세션 데이터를 개별적으로 삭제하기 위해 removeArrtibute(key)메서드를 사용한다.
		//현재 사용자에게 종속된 모든 세션 데이터를 일괄 삭제하기 위해서는 invalidate() 메서드를 사용한다.
	}
	

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