<!-- 자주가는 영화관 목록 정의 페이지 -->

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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Montserrat+Subrayada:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/tagsinput/jquery-tagsinput.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/oftentheater.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <title>자주가는 영화관 설정</title>
</head>

<body>
    <div id="container">
    	<div class="up">
        	<h3>자주가는 영화관 설정하기</h3>
        </div>
        <div class="search">
        	<!-- 영화관 검색 폼 -->
            <form>
                <fieldset>
                    <legend>영화관 검색</legend>
                    <label for="region">&nbsp;&nbsp;&nbsp;지역</label>
                    <select name="region" id="region">
                    	<option value="">--- 선택 ---</option>
                        <option value="seoul">서울</option>
                        <option value="gyeonggi">경기</option>
                        <option value="incheon">인천</option>
                        <option value="gangwon">강원</option>
                        <option value="daejeon">대전</option>
                        <option value="chungcheong">충청/세종</option>
                        <option value="gwangju">광주</option>
						<option value="jeolla">전라</option>
                        <option value="daegu">대구/경북</option>
                        <option value="busan">부산/울산</option>
                        <option value="gyeongnam">경남</option>
                        <option value="jeju">제주</option>
                    </select>
                    <!-- 브랜드 선택 -->
                    <label for="theater"> &nbsp;브랜드</label>
                    <select name="theater" id="theater" disabled>
                    	<option value="">--- 선택 ---</option>
                        <option value="CGV">CGV</option>
                        <option value="megabox">메가박스</option>
                        <option value="lotte">롯데시네마</option>
                    </select>
                    <!-- 지역 선택 -->
                    
                    <!-- 영화관 검색시 자동완성으로 목록이 뜨며 추가 누를 시 추가됨 -->
                    <!-- 없는 영화관 검색해 추가하거나 이미 등록한 영화관 추가할 수 없음 -->
                    <!-- 자주 가는 영화관은 5개까지 선택 가능함 -->
                    <label for="theatersearch">&nbsp;&nbsp;영화관</label>
                    <input type="search" id="theatersearch" name="theatersearch" style="width:150px;" />
                    <button type="button" class="inserttheater" style="margin-left:2px;">추가</button>
                </fieldset>
            </form>
        </div>
        
        <!-- 자주가는 영화관 목록 5개까지 정의 -->
        <div class="theaterlist">
            <legend>자주가는 영화관 목록(최대 5개까지 지정 가능합니다)</legend>
			<input data-role="tags-input" value="tagsinput" hidden="hidden" data-rendered="true">
			<div class="tags-container form-control">
  				<div class="tag badge badge-primary">
    				<span>CGV 강남</span><i class="tag-remove">✖</i>
 				</div>
 		 		<div class="tag badge badge-primary">
    				<span>CGV 목동</span><i class="tag-remove">✖</i>
  				</div>
  				<div class="tag badge badge-primary">
    				<span>메가박스 화곡</span><i class="tag-remove">✖</i>
  				</div>
  				<div class="tag badge badge-primary">
    				<span>롯데시네마 영등포</span><i class="tag-remove">✖</i>
  				</div>
  				<div class="tag badge badge-primary">
    				<span>롯데시네마 가산디지털</span><i class="tag-remove">✖</i>
  				</div>
			</div>
		</div>
		<div class="butt">
				<button type="button" class="btn btn-success applbutton">적용</button>
				<button type="button" class="btn btn-warning outbutton">취소</button>
		</div>
		 <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script src="<%=request.getContextPath()%>/plugins/tagsinput/jquery-tagsinput.min.js" defer></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script src="../js_files/oftentheater.js"></script>
   </div>
</body>

</html>