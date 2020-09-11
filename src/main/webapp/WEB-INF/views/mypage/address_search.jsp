<!--  주소 찾기 창 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>Hello Bootstrap</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HeaderFooterYo.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/address_search.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Montserrat+Subrayada:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
    <title>도로명 주소 검색</title>
    
</head>

<body>
    <div id="container">
    	<div class="up">
        	<h3>주소 검색하기</h3>
        </div>
        <br />
        <!--  검색 -->
        <div class="search2">
            <form>
                <fieldset>
                    <legend>도로명 주소 검색</legend>
                    <label for="add_search">도로명 검색&nbsp;&nbsp;&nbsp;</label>
                    <input type="search" id="theatersearch" name="theatersearch" style="width:200px;" />
                    <button type="submit" class="btn" >검색</button>
                </fieldset>
            </form>
        </div>
        <!-- 검색목록 출력하는 곳 -->
        <div class="addlist">
            <h5>검색된 주소목록들</h5>
        </div>
        <div class="applybutton">
            <button type="submit" onclick="window.close()" class="btn">주소적용</button>
        </div>
    </div>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="//stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>

</html>