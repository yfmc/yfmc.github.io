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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Montserrat+Subrayada:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
    <title>도로명 주소 검색</title>
    <style type="text/css">
    #container {
        width: 500px;
        height: 580px;
        border: 0.5px solid #222;
        margin:10px;
        background-color:#fafafa;
    }
    
	#container .up{
		border:1px solid white;
		border-radius:5px;
		background-color:#616161;
		color:white;
	}
    #container .up h3 {
        text-align: center;
        font-size:20px;
        font-weight:bold;
    }
    .addlist {
        width: auto;
        height: 300px;
        border: 0.5px solid #616161;
        margin-top: 20px;
    }
    .search2 .btn{
    	font-size:12px;
    	height:25px;
    	line-height:1.0;
    }

    .applybutton .btn {
        border: 1px solid #969696;
        margin-top: 30px;
        margin-left: 200px;
    }
    </style>
</head>

<body>
    <div id="container">
    	<div class="up">
        	<h3>주소 검색하기</h3>
        </div>
        <br />
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