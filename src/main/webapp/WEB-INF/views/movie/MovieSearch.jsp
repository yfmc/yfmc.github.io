<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/MovieSearch.css?time=<%=System.currentTimeMillis()%>">
<!-- Range Slider CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/plugins/dist/rangeslider.css">
<link rel="stylesheet" type="test/css"
	href="${pageContext.request.contextPath}/assets/plugins/ajax_sws/ajax_helper.css">
<title>영화검색 | Cinephile</title>
<!-- ========== 컨텐츠 영역 시작 ========== -->
<form class="movie-search" id="movie-search"
	action="${pageContext.request.contextPath}/movie/MovieSearchResult.do"
	method="get">
	<!-- action="MovieSearch.jsp" 검색에 대한 조건을 입력하였을 때 같은 페이지로 결과를 보낸다.-->
	<h2>
		좋아하는 영화, 보고싶은 영화를 <span>Cinephile</span>에서 찾아보세요!
	</h2>
	<table cellpadding="0">
		<tr>
			<div class="input-group search-input">
				<th colspan="2">영화검색</th>
				<td style="width: 139px;"><span class="input-group-btn">
						<select name='choose' class="form-control" style="width: 100%;"
						id="movie-option">
							<option value="" class="choose_option" selected disabled>선택하세요</option>
							<option id="alloption" value="alloption" class="choose_option">전체선택</option>
							<option id="moviename" value="moviename" class="choose_option">영화명</option>
							<option id="actor" value="actor" class="choose_option">배우명</option>
							<option id="director" value="director" class="choose_option">감독명</option>
						</select>
				</span></td>
				<td><input type="text" class="form-control" name="keyword"
					id="keyword" placeholder="${keyword}" style="width: 80%;"></td>
			</div>
		</tr>
		<!-- 장르선택 -->
		<tr>
			<th colspan="2">장르</th>
			<td colspan="2">
				<ul>
					<li><input type="checkbox" value="" name="genre" id="all_genre" class="genre"><label
						for="">전체</label></li>
					<li><input type="checkbox" value="드라마" name="genre" id="drama" class="genre"><label
						for="드라마">드라마</label></li>
					<li><input type="checkbox" value="가족" name="genre" id="family" class="genre"><label
						for="가족">가족</label></li>
					<li><input type="checkbox" value="멜로" name="genre" id="mello" class="genre"><label
						for="멜로">멜로</label></li>
					<li><input type="checkbox" value="코미디" name="genre" id="comedy" class="genre"><label
						for="코미디">코미디</label></li>
					<li><input type="checkbox" value="공포" name="genre" id="horro" class="genre"><label
						for="공포">공포</label></li>
					<li><input type="checkbox" value="스릴러" name="genre" id="thrill" class="genre"><label
						for="스릴러">스릴러</label></li>
					<li><input type="checkbox" value="범죄" name="genre" id="crime" class="genre"><label
						for="범죄">범죄</label></li>
					<li><input type="checkbox" value="액션" name="genre" id="action" class="genre"><label
						for="액션">액션</label></li>
					<li><input type="checkbox" value="SF" name="genre" id="sf" class="genre"><label
						for="SF">SF</label></li>
					<li><input type="checkbox" value="느와르" name=genre id="nwar" class="genre"><label
						for="느와르">느와르</label></li>
					<li><input type="checkbox" value="어드벤처" name="genre" id="adventure" class="genre"><label
						for="어드벤처">어드벤처</label></li>
					<li><input type="checkbox" value="판타지" name="genre" id="fantasy" class="genre"><label
						for="판타지">판타지</label></li>
				</ul>
			</td>
			<td></td>
		</tr>
		<!-- 제작국가 -->
		<tr>
			<th colspan="2">제작국가</th>
			<td colspan="2">
				<ul>
					<li><input type="checkbox" name="nation" value="" id="all_nation" class="nation"><label
						for="전체">전체</label></li>
					<li><input type="checkbox" name="nation" value="대한민국" class="nation"><label
						for="대한민국">대한민국</label></li>
					<li><input type="checkbox" name="nation" value="미국" class="nation"><label
						for="미국">미국</label></li>
					<li><input type="checkbox" name="nation" value="영국"class="nation"><label
						for="영국">영국</label></li>
					<li><input type="checkbox" name="nation" value="일본" class="nation"><label
						for="일본">일본</label></li>
					<li><input type="checkbox" name="nation" value="홍콩" class="nation"><label
						for="홍콩">홍콩</label></li>
				</ul>
			</td>
			<td></td>
		</tr>
		<!-- 제작년도 -->
		<tr>
			<th colspan="2">제작년도</th>
			<td colspan="2">
				<div id="js-example-change-value" class="range-slider">
					<input type="range" min="2000" max="2020" value="${made_year}" name="made_year" data-rangeslider>
					<h4>
						<output>
							<p>년</p>
						</output>
					</h4>
				</div>
			</td>
			<td>
				<!-- 빈공간 -->
			</td>
		</tr>
	</table>

	<div class="search-button">
		<button type="submit" class="searchgogo">검색</button>
		<button type="reset">초기화</button>
	</div>
</form>
<div class="moviesearchdetail_ex">
	<!-- 검색결과가 몇건인지 확인하기 -->
	<div class="search-result">
		<span>
			<h4>"${keyword}"(으)로 총 ${totalCount}개의 검색결과가 있습니다.</h4>
			<hr />
		</span>
	</div>
	<!-- 검색한 결과가 나오는 공간 -->
	<div class="king-row" id="movie_search_list_more">
		<c:forEach var="k" items="${output}" varStatus="status">
			<div class="movie-picture">
				<!-- 랭크순위나 디데이 대신해서 넣을 값 생각 -->
				<div class="search_list"></div>
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<figure class="imageup">
					<div class="row">
						<!-- 이미지 영역 -->
						<c:choose>
							<c:when test="${k.poster_link != null}">
								<div class="movie-image">
									<span><img src="${k.poster_link}" class="img-responsive" />
										<figcaption>
											<a href="${pageContext.request.contextPath}/예매페이지" id="book1">예매하기</a>
											<a
												href="${pageContext.request.contextPath}/movie/MovieContent.do"
												id="information1">상세정보</a>
										</figcaption></span>
								</div>
							</c:when>
							<c:otherwise>
								<div class="movie-image">
									<span><img
										src="https://blog.kakaocdn.net/dn/uWnY7/btqI4S6VLt1/0KNymI3JcPIAhvwvgiJ3pK/img.png"
										class="img-responsive" />
										<figcaption>
											<a href="${pageContext.request.contextPath}/예매페이지" id="book1">예매하기</a>
											<a
												href="${pageContext.request.contextPath}/movie/MovieContent.do"
												id="information1">상세정보</a>
										</figcaption></span>
								</div>
							</c:otherwise>
						</c:choose>
						<!-- 텍스트 영역 -->
						<!-- 연령제한 표시 
								0 - 전체
								1 - 12세
								2 - 15세
								3 - 청불-->
						<c:choose>
							<c:when test="${k.age_limit == 0}">
								<div class="movie-text">
									<span>
										<h4>
											<span class="label label-success"> 전체 </span>${k.title}
										</h4>
									</span>
								</div>
							</c:when>

							<c:when test="${k.age_limit == 1}">
								<div class="movie-text">
									<span>
										<h4>
											<span class="label label-primary"> 12 </span>${k.title}
										</h4>
									</span>
								</div>
							</c:when>

							<c:when test="${k.age_limit == 2}">
								<div class="movie-text">
									<span>
										<h4>
											<span class="label label-warning"> 15 </span>${k.title}
										</h4>
									</span>
								</div>
							</c:when>
							<c:when test="${k.age_limit == 3}">
								<div class="movie-text">
									<span>
										<h4>
											<span class="label label-danger"> 청불 </span>${k.title}
										</h4>
									</span>
								</div>
							</c:when>
							<c:otherwise>
								<div class="movie-text">
									<span>
										<h4>
											<span class="label label-default"> X </span>${k.title}
										</h4>
									</span>
								</div>
							</c:otherwise>
						</c:choose>

					</div>
				</figure>
			</div>
		</c:forEach>
	</div>
	<!--<c:if test="${pageData.totalPage>1}">
	<button id="movie_search_list" class="movie_search_list">더보기</button>
	</c:if>-->
	<c:if test="${pageData.totalPage>=1}">
		<button type="button" class="movie_search_list"
			onclick="location.href='#'">맨위로</button>
	</c:if>
</div>

<div class="icon-bar">
	<a
		href="${pageContext.request.contextPath}/movie/nowMoving.do?time=<%=System.currentTimeMillis()%>"
		class="side-boxoffice"><i class="fas fa-film"></i><b>박스오피스</b></a> <a
		href="${pageContext.request.contextPath}/movie/MovieSearch.do?time=<%=System.currentTimeMillis()%>"
		class="side-moviesearch"><i class="fas fa-search"></i><b>영화검색</b></a>
	<a
		href="${pageContext.request.contextPath}/movie/MovieNews1.do?time=<%=System.currentTimeMillis()%>"
		class="side-movienews"><i class="far fa-file-alt"></i><b>영화소식</b></a>
	<a
		href="${pageContext.request.contextPath}/movie/Statistics.do?time=<%=System.currentTimeMillis()%>"
		class="side-statistics"><i class="fas fa-chart-bar"></i><b>통계</b></a>
</div>
<!--// ========== 컨텐츠 영역 끝 ========== -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/Javascript"
	src="${pageContext.request.contextPath}/assets/js_files/movie_option.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/plugins/dist/rangeslider.min.js"></script>
<!-- Handlebar CDN 참조 -->
<script
	src="//cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.4.2/handlebars.min.js"></script>
<!-- jQuery Ajax Setup -->
<script
	src="${pageContext.request.contextPath}/assets/plugins/ajax_sws/ajax_helper.js"></script>
<script type="text/javascript">
	$(function() {

		var $document = $(document), selector = '[data-rangeslider]', $element = $(selector);
		// Example functionality to demonstrate a value feedback
		function valueoutput(element) {
			var value = element.value, output = element.parentNode
					.getElementsByTagName('output')[0];
			output.innerHTML = value;
			//console.log(value); //제작년도에 대한 value값을 얻기위한 console이다.
		}
		for (var i = $element.length - 1; i >= 0; i--) {
			valueoutput($element[i]);
		}
		;
		$document.on('change', 'input[type="range"]', function(e) {
			valueoutput(e.target);
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
<!-- json에 포함된 k라는 배열요소에 대한 반복문 구성 -->
<script id="prof-list-tmpl" type="text/x-handlebars-template">
	{{#each k}}
	<div class="movie-picture">
						<!-- 랭크순위나 디데이 대신해서 넣을 값 생각 -->
						<div class="search_list">
						
						</div>
						<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
						<figure class="imageup">
							<div class="row">
								<!-- 이미지 영역 -->
								<c:choose>
									<c:when test="{{k.poster_link != null}}">
										<div class="movie-image">
											<span><img src="{{k.poster_link}}"
												class="img-responsive" />
												<figcaption>
													<a href="${pageContext.request.contextPath}/예매페이지"
														id="book1">예매하기</a> <a
														href="${pageContext.request.contextPath}/movie/MovieContent.do"
														id="information1">상세정보</a>
												</figcaption></span>
										</div>
									</c:when>
									<c:otherwise>
										<div class="movie-image">
											<span><img
												src="https://blog.kakaocdn.net/dn/uWnY7/btqI4S6VLt1/0KNymI3JcPIAhvwvgiJ3pK/img.png"
												class="img-responsive" />
												<figcaption>
													<a href="${pageContext.request.contextPath}/예매페이지"
														id="book1">예매하기</a> <a
														href="${pageContext.request.contextPath}/movie/MovieContent.do"
														id="information1">상세정보</a>
												</figcaption></span>
										</div>
									</c:otherwise>
								</c:choose>
								<!-- 텍스트 영역 -->
								<!-- 연령제한 표시 
								0 - 전체
								1 - 12세
								2 - 15세
								3 - 청불-->
								<c:choose>
									<c:when test="{{k.age_limit == 0}}">
										<div class="movie-text">
											<span>
												<h4>
													<span class="label label-success">
													전체
													</span>{{k.title}}
												</h4>
											</span>
										</div>
									</c:when>
									
									<c:when test="{{k.age_limit == 1}}">
										<div class="movie-text">
											<span>
												<h4>
													<span class="label label-primary">		
													12
													</span>{{k.title}}
												</h4>
											</span>
										</div>
									</c:when>
									
									<c:when test="{{k.age_limit == 2}}">
										<div class="movie-text">
											<span>
												<h4>
													<span class="label label-warning">
													15
													</span>{{k.title}}
												</h4>
											</span>
										</div>
									</c:when>
									<c:when test="{{k.age_limit == 3}}">
										<div class="movie-text">
											<span>
												<h4>
													<span class="label label-danger">													
													청불							
													</span>{{k.title}}
												</h4>
											</span>
										</div>
									</c:when>
									<c:otherwise>
										<div class="movie-text">
											<span>
												<h4>
													<span class="label label-default">													
													X							
													</span>{{k.title}}
												</h4>
											</span>
										</div>
									</c:otherwise>
								</c:choose>

							</div>
						</figure>
					</div>
	{{/each}}
</script>
<!-- User code -->
<script type="text/javascript">
	let nowPage = 1; // 현재 페이지의 기본값

	$(function() {
		/** 더 보기 버튼에 대한 이벤트 정의 */
		$("#movie_search_list").click(function() {
			// 다음 페이지를 요청하기 위해 페이지 변수 1 증가
			nowPage++;
			// Restful API에 GET 방식 요청
			$.get("${pageContext.request.contextPath}/movie", {
				"page" : nowPage
			// 페이지 번호는 GET 파라미터로 전송한다.
			}, function(json) {
				var source = $("#prof-list-tmpl").html(); // 템플릿 코드 가져오기
				var template = Handlebars.compile(source); // 템플릿 코드 컴파일
				var result = template(json); // 템플릿 컴파일 결과물에 json 전달
				$("#movie_search_list_more").append(result); // 최종 결과물을 #list 요소에 추가한다.

				// 현재 페이지 번호가 전체 페이지 수에 도달했다면 더 보기 버튼을 숨긴다.
				if (json.meta.totalPage <= nowPage) {
					$("#movie_search_list").hide();
				}
			});
		});
	});
</script>
<%@ include file="../_inc/footer.jsp"%>