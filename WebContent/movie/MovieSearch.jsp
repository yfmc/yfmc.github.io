<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page trimDirectiveWhitespaces="true"%>

<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/MovieSearch.css?time=<%=System.currentTimeMillis()%>">
<!-- Range Slider CSS -->
<link rel="stylesheet" href="../plugins/rangeslider/rangeslider.css">
<title>영화검색 | Cinephile</title>
<!-- ========== 컨텐츠 영역 시작 ========== -->
<form class="movie-search" id="movie-search">
	<h2>
		좋아하는 영화, 보고싶은 영화를 <span>Cinephile</span>에서 찾아보세요!
	</h2>
	<table cellpadding="0">
		<tr>
			<div class="input-group search-input">
				<th colspan="2">영화검색</th>
				<td style="width: 139px;"><span class="input-group-btn">
						<select name='choose' class="form-control" style="width: 100%;" id="movie-option">
							<option value="">선택하세요</option>
							<option value="all">전체선택</option>
							<option value="moviename">영화명</option>
							<option value="acotr">배우명</option>
							<option value="director">감독명</option>
					</select>
				</span></td>
				<td><input type="text" class="form-control"
					placeholder="키워드를 입력해주세요" style="width: 80%;"></td>
			</div>
		</tr>
		<!-- 장르선택 -->
		<tr>
			<th colspan="2">장르</th>
			<td colspan="2">
				<ul>
					<li><input type="checkbox" value="all_genre" id="all_genre"><label
						for="">전체</label></li>
					<li><input type="checkbox" value="family" class="genre"><label for="">가족</label></li>
					<li><input type="checkbox" value="horror" class="genre"><label for="">공포/호러</label></li>
					<li><input type="checkbox" value="drama" class="genre"><label for="">드라마</label></li>
					<li><input type="checkbox" value="sf" class="genre"><label for="">SF</label></li>
					<li><input type="checkbox" value="romance" class="genre"><label for="">멜로/로맨스</label></li>
					<li><input type="checkbox" value="nwar" class="genre"><label for="">느와르</label></li>
					<li><input type="checkbox" value="crime" class="genre"><label for="">범죄</label></li>
					<li><input type="checkbox" value="schoollife" class="genre"><label for="">학원물</label></li>
					<li><input type="checkbox" value="etc" class="genre"><label for="">기타</label></li>
				</ul>
			</td>
			<td></td>
		</tr>
		<!-- 제작국가 -->
		<tr>
			<th colspan="2">제작국가</th>
			<td colspan="2">
				<ul>
					<li><input type="checkbox" name="all_nation" id="all_nation"><label
						for="">전체</label></li>
					<li><input type="checkbox" name="korea" class="nation"><label for="">한국</label></li>
					<li><input type="checkbox" name="usa" class="nation"><label for="">미국</label></li>
					<li><input type="checkbox" name="japan" class="nation"><label for="">일본</label></li>
				</ul>
			</td>
			<td></td>
		</tr>
		<!-- 제작년도 -->
		<tr>
			<th colspan="2">제작년도</th>
			<td colspan="2">
				<div id="js-example-change-value" class="range-slider">
					<input type="range" min="2000" max="2020" data-rangeslider>
					<h4>
						<output><p>년</p></output>
					</h4>
				</div>
			</td>
			<td>
				<!-- 빈공간 -->
			</td>
		</tr>
	</table>

	<div class="search-button">
		<button type="submit">검색</button>
		<button type="reset">초기화</button>
	</div>
</form>


<div class="icon-bar">
	<a
		href="<%=request.getContextPath()%>/movie/nowMoving.jsp?time=<%=System.currentTimeMillis()%>"
		class="side-boxoffice"><i class="fas fa-film"></i><b>박스오피스</b></a> <a
		href="<%=request.getContextPath()%>/movie/MovieSearch.jsp?time=<%=System.currentTimeMillis()%>"
		class="side-moviesearch"><i class="fas fa-search"></i><b>영화검색</b></a>
	<a
		href="<%=request.getContextPath()%>/movie/MovieNews.jsp?time=<%=System.currentTimeMillis()%>"
		class="side-movienews"><i class="far fa-file-alt"></i><b>영화소식</b></a>
	<a
		href="<%=request.getContextPath()%>/movie/Statistics1.jsp?time=<%=System.currentTimeMillis()%>"
		class="side-statistics"><i class="fas fa-chart-bar"></i><b>통계</b></a>
</div>
<!--// ========== 컨텐츠 영역 끝 ========== -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/Javascript" src="../js_files/movie_option.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="../plugins/rangeslider/rangeslider.min.js"></script>
<script type="text/javascript">
	$(function() {

		var $document = $(document), selector = '[data-rangeslider]', $element = $(selector);
		// Example functionality to demonstrate a value feedback
		function valueOutput(element) {
			var value = element.value, output = element.parentNode
					.getElementsByTagName('output')[0];
			output.innerHTML = value;
		}
		for (var i = $element.length - 1; i >= 0; i--) {
			valueOutput($element[i]);
		}
		;
		$document.on('change', 'input[type="range"]', function(e) {
			valueOutput(e.target);
		});
		// Basic rangeslider initialization
		$element.rangeslider({

			// Deactivate the feature detection
			polyfill : false,

			// Callback function
			onInit : function() {
			},

			// Callback function
			/*onSlide : function(position, value) {
				console.log('onSlide');
				console.log('position: ' + position, 'value: ' + value);
			},

			// Callback function
			onSlideEnd : function(position, value) {
				console.log('onSlideEnd');
				console.log('position: ' + position, 'value: ' + value);
			}*/
		});

	});
</script>


<%@ include file="../_inc/footer.jsp"%>