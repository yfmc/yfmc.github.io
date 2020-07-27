<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>자주 가는 영화관 설정하기</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HeaderFooterYo.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Montserrat+Subrayada:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
    <style type="text/css">
    #container {
        width: 550px;
        height: 600px;
        border: 2px solid black;
        border-radius:5px;
        margin: 10px;
        background-color:#fafafa;
    }

	#container .up{
		border:1px solid white;
		border-radius:5px;
		background-color:#616161;
		color:white;
		margin-bottom:20px;
	}
    #container .up h3 {
        text-align: center;
        font-size:20px;
        font-weight:bold;
    }
    
    legend {
        margin-top: 30px;
        font-weight:bold;
        font-size:18px;
    }

    .theaterlist {
        width: auto;
    }

    .theaterlist table {
        width: 95%;
        border-spacing: 20px;
        border-collapse: separate;
        margin-left: -10px;
    }

    .theaterlist table tr {
        width: 80%;
        height: 50px;
    }

    .theaterlist table tr,
    td {
        border: 1px dotted #222;
        border-radius: 3px;
        line-height: 2.5;
        padding-left: 10px;
        padding-top: 5px;
    }
    

    .theaterlist .btn {
        float: right;
        margin-right: 10px;
        border: 0.5px solid #222;
    }
    </style>
    <title>자주가는 영화관 설정</title>
</head>

<body>
    <div id="container">
    	<div class="up">
        	<h3>자주가는 영화관 설정하기</h3>
        </div>
        <div class="search">
            <form>
                <fieldset>
                    <legend>영화관 검색</legend>
                    <label for="theater">브랜드 선택</label>
                    <select name="theater" id="theater">
                        <option value="CGV">CGV</option>
                        <option value="megabox">메가박스</option>
                        <option value="lotte">롯데시네마</option>
                    </select>
                    <label for="theatersearch">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;영화관선택</label>
                    <input type="search" id="theatersearch" name="theatersearch" style="width:150px;" />
                    <button type="submit">추가하기</button>
                </fieldset>
            </form>
        </div>
        <div class="theaterlist">
            <legend>자주가는 영화관 목록(최대 5개까지 지정 가능합니다)</legend>
            <table>
                <tr>
                    <td>CGV 강남
                        <button type="submit" class="btn btn1">제거</button>
                    </td>
                </tr>
                <tr>
                    <td>CGV 목동
                        <button type="submit" class="btn btn2">제거</button>
                    </td>
                </tr>
                <tr>
                    <td>메가박스 화곡
                        <button type="submit" class="btn btn3">제거</button>
                    </td>
                </tr>
                <tr>
                    <td>롯데시네마 영등포
                        <button type="submit" class="btn btn4">제거</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <button type="submit" class="btn btn5">제거</button>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</body>

</html>