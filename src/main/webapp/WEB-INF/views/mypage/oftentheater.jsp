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
                    <label for="theater">브랜드</label>
                    <select name="theater" id="theater">
                    	<option value="">--- 선택 ---</option>
                        <option value="CGV">CGV</option>
                        <option value="megabox">메가박스</option>
                        <option value="lotte">롯데시네마</option>
                    </select>
                    <label for="region">&nbsp;&nbsp;&nbsp;지역</label>
                    <select name="region" id="region"">
                    	<option value="">--- 선택 ---</option>
                        <option value="서울">서울</option>
                        <option value="경기도">경기</option>
                        <option value="인천">인천</option>
                        <option value="강원도">강원</option>
                        <option value="대전">대전</option>
                        <option value="충청세종">충청/세종</option>
                        <option value="광주">광주</option>
						<option value="전라">전라</option>
                        <option value="대구경북">대구/경북</option>
                        <option value="부산울산">부산/울산</option>
                        <option value="경남">경남</option>
                        <option value="제주">제주</option>
                    </select>
                    <label for="theatersearch">&nbsp;&nbsp;&nbsp;영화관</label>
                    <input type="search" id="theatersearch" name="theatersearch" style="width:110px;" />
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
		 <script src='https://code.jquery.com/jquery-3.5.1.min.js'></script>
		<script src="<%=request.getContextPath()%>/plugins/tagsinput/jquery-tagsinput.min.js" defer></script>
		<script type="text/javascript">
			$(function(){
				// 자주가는 영화관 추가,제거 기능 정의
				var count=5;
				$(document).on("click",".inserttheater",function(){ //추가버튼 눌렀을 때
					if(count==5){									// 이미 5개의 영화관이 등록되어 있다면 추가 못하게 함
						alert("더 이상 추가할 수 없습니다.");
						}
					else{
						var html="<div class='tag badge badge-primary'><span>";	//5개 미만이면 영화관 추가
						html+=$("#theatersearch").val();
						html+="</span><i class='tag-remove'>✖</i>";
						$(".tags-container").append(html);
						count++;
						console.log(count);
					}
				});
				$(document).on("click",".tag-remove",function(){	//자주가는 영화관 목록 제외하기
					var result=confirm("이 영화관을 목록에서 제외할까요?");
					if(result){
					$(this).parents(".tag").hide();
						count--;
						console.log(count);
				}
				});
			});
		</script>
   </div>
</body>

</html>