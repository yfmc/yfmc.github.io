<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/MovieContent.css?time=<%=System.currentTimeMillis()%>">
<title>영화상세페이지 | Cinephile</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/plugins/slick/slick.css" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/plugins/slick/slick-theme.css" />
<!-- ========== 컨텐츠 영역 시작 ========== -->
<!-- 내용 부분 시작 -->
<div class="container">
	<!-- 영화 포스터 시작 -->
	<div class="movie-poster-etc">
		<c:choose>
			<c:when test="${output.poster_link != null}">
				<div class="movie-poster">
					<span> <img src="${output.poster_link}" alt="영화포스터"
						class="img-rounded" /></span>
				</div>
			</c:when>
			<c:otherwise>
				<div class="movie-poster">
					<span> <img
						src="https://blog.kakaocdn.net/dn/uWnY7/btqI4S6VLt1/0KNymI3JcPIAhvwvgiJ3pK/img.png"
						alt="영화포스터" class="img-rounded" /></span>
				</div>
			</c:otherwise>
		</c:choose>
		<div class="movie-etc1">
			<div class="box-margin" style="height: 20px;"></div>
			<h3>
				<span>${output.title}</span>
				<c:choose>
					<c:when test="${output.movie_now eq 'Y'}">
						<button type="button" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/booking?movieId=${output.movie_id}&scrnDay=${scrnDay}'">예매하기</button>
					</c:when>
					<c:otherwise>
						<button type="button" class="btn btn-danger" disabled>예매하기</button>
					</c:otherwise>
				</c:choose>
			</h3>
			<h4>
				<c:choose>
					<c:when test="${output.movie_director != null}">
					감독:<span>${output.movie_director}</span>
					</c:when>
					<c:otherwise>
					감독:<span>정보 없음</span>
					</c:otherwise>
				</c:choose>
			</h4>
			<h4>
				<c:choose>
					<c:when test="${output.movie_actor != null}">
					배우:<span> <c:forTokens var="token"
								items="${output.movie_actor}" delims="," begin="0" end="3"
								step="1">
							${token},
						</c:forTokens> ...
						</span>
					</c:when>
					<c:otherwise>
					배우:<span> 정보 없음 </span>
					</c:otherwise>
				</c:choose>
			</h4>
			<h4>
				<c:choose>
					<c:when test="${output.movie_genre != null}">
					장르:<span>${output.movie_genre}</span>
					</c:when>
					<c:otherwise>
					장르:<span>정보 없음</span>
					</c:otherwise>
				</c:choose>
			</h4>
			<h4>
				등급:<span> <c:choose>
						<c:when test="${output.age_limit == 0}">
									전체
							</c:when>
						<c:when test="${output.age_limit == 1}">
									12세
							</c:when>
						<c:when test="${output.age_limit == 2}">
									15세
							</c:when>
						<c:when test="${output.age_limit == 3}">
									청불							
							</c:when>
						<c:otherwise>
									X							
							</c:otherwise>
					</c:choose>
				</span>관람가
			</h4>
			<h4>
				<c:choose>
					<c:when test="${output.opening_date != null}">
					개봉일:<span>&nbsp;${fn:substring(output.opening_date,0,4)}년
							${fn:substring(output.opening_date,4,6)}월
							${fn:substring(output.opening_date,6,8)}일</span>
					</c:when>
					<c:otherwise>
					개봉일:<span>정보 없음</span>
					</c:otherwise>
				</c:choose>
			</h4>
		</div>
		<div class="movie-etc2">
			<form id="editLike">
				<p>
					<input type="hidden" name="movie_id" id="movie_id" value="${output.movie_id}" />
					<input type="hidden" name="title" value="${output.title}" />
					<input type="hidden" name="like_count" id="like_count" value="${output.like_count}" />
					<c:choose>
						<c:when test="${isLike == false}">
							<input type="hidden" name="is_like" id="is_like" value="0" />
							<img src="${pageContext.request.contextPath}/assets/img/hate_icon2.png"
						id="likebutton" class="likebutton" onclick="like_clicked();" />
						</c:when>
						<c:otherwise>
						<img src="${pageContext.request.contextPath}/assets/img/love_icon2.png"
						id="likebutton" class="likebutton" onclick="like_clicked();" />
							<input type="hidden" name="is_like" id="is_like" value="1" />
						</c:otherwise>
					</c:choose>
				</p>
			</form>
			<span id="likecount" class="likecount">${output.like_count}</span>


			<p>
				누적관람객 : <span>${output.accumul_audience}</span>명
			</p>
			<div class="people-starRev">
				<p>
					관람객 평점 :
					<c:choose>
						<c:when test="${output.star_info == 5}">
							<span class="starR on">별1</span>
							<span class="starR on">별2</span>
							<span class="starR on">별3</span>
							<span class="starR on">별4</span>
							<span class="starR on">별5</span>
						</c:when>
						<c:when test="${output.star_info == 4}">
							<span class="starR on">별1</span>
							<span class="starR on">별2</span>
							<span class="starR on">별3</span>
							<span class="starR on">별4</span>
							<span class="starR">별5</span>
						</c:when>
						<c:when test="${output.star_info == 3}">
							<span class="starR on">별1</span>
							<span class="starR on">별2</span>
							<span class="starR on">별3</span>
							<span class="starR">별4</span>
							<span class="starR">별5</span>
						</c:when>
						<c:when test="${output.star_info == 2}">
							<span class="starR on">별1</span>
							<span class="starR on">별2</span>
							<span class="starR">별3</span>
							<span class="starR">별4</span>
							<span class="starR">별5</span>
						</c:when>
						<c:when test="${output.star_info == 1}">
							<span class="starR on">별1</span>
							<span class="starR">별2</span>
							<span class="starR">별3</span>
							<span class="starR">별4</span>
							<span class="starR">별5</span>
						</c:when>
						<c:otherwise>
							<span class="starR">별1</span>
							<span class="starR">별2</span>
							<span class="starR">별3</span>
							<span class="starR">별4</span>
							<span class="starR">별5</span>
						</c:otherwise>
					</c:choose>
				</p>
			</div>

		</div>
	</div>
	<!-- 영화 포스터 끝 -->
	<br>
	<hr>
	<br>
	<div class="movie-summary">
		<h2>줄거리</h2>
		<div class="movie-summaryText">
			<span> ${output.synopsis} </span>
		</div>
		<!-- 줄거리 사진 사용 시작 -->
		<c:choose>
			<c:when test="${output.poster_link != null}">
				<div class="image-moving">
					<div>
						<img class="moving1" src="${output.poster_link}">
					</div>
					<div>
						<img class="moving2" src="${output.poster_link}">
					</div>
					<div>
						<img class="moving3" src="${output.poster_link}">
					</div>
					<div>
						<img class="moving4" src="${output.poster_link}">
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="image-moving">
					<div>
						<img class="moving1"
							src="https://blog.kakaocdn.net/dn/uWnY7/btqI4S6VLt1/0KNymI3JcPIAhvwvgiJ3pK/img.png">
					</div>
					<div>
						<img class="moving2"
							src="https://blog.kakaocdn.net/dn/uWnY7/btqI4S6VLt1/0KNymI3JcPIAhvwvgiJ3pK/img.png">
					</div>
					<div>
						<img class="moving3"
							src="https://blog.kakaocdn.net/dn/uWnY7/btqI4S6VLt1/0KNymI3JcPIAhvwvgiJ3pK/img.png">
					</div>
					<div>
						<img class="moving4"
							src="https://blog.kakaocdn.net/dn/uWnY7/btqI4S6VLt1/0KNymI3JcPIAhvwvgiJ3pK/img.png">
					</div>
				</div>
			</c:otherwise>
		</c:choose>
		<!-- 줄거리 사진 사용사용 끝 -->
	</div>
	<hr>
	<!--<div class="staticPicture">
		<table>
			<tr>
				<th>연령대별 관람객</th>
				<th>성별 관람객</th>
			</tr>
			<tr>
				<td><span> <img
						src="${pageContext.request.contextPath}/assets/img/일별박스오피스관객수.png"
						alt="일별 박스오피스 순위">
				</span></td>
				<td><span> <img
						src="${pageContext.request.contextPath}/assets/img/주간주말박스오피스관객수.png"
						alt="주간주말박스오피스관객수">
				</span></td>
			</tr>
		</table>
	</div>-->
	<!-- 한줄평 작성하기 -->
	<div class="movie-advice">
		<h3>한줄평</h3>
		<form id="goComment">
		<c:choose>
			<c:when test="${isComment == true}">
				<input type="hidden" id="is_comment" value="1" />
			</c:when>
			<c:otherwise>
				<input type="hidden" id="is_comment" value="0" />
			</c:otherwise>
		</c:choose>
			<input type="hidden" name="user_id" id="user_id" value="${user_id}" />
			<input type="text" placeholder="한줄평을 작성해주세요." id="people_textarea" name="comment" value="" />
			<div id="add_comment" class="add-comment" style="float: right" onclick="add_comment();">등록</div>
			<div class="starRev">
				<span class="starR on">별1</span> <span class="starR on">별2</span> <span
					class="starR on">별3</span> <span class="starR">별4</span> <span
					class="starR">별5</span>
			</div>
		</form>
	</div>
	<hr>
	<!-- 회원들이 작성한 댓글 시작 -->
	<div class="movie-comment">
		<ul class="people-comment">
			<c:if test="${isComment == true}">
				<li>
					<span>${my.user_id}</span>
					<div class="pulldate">
						${my.edit_date}
						<div class="delete-text" style="width: 40px; height: 25px;background-color:indianred" onclick="delete_comment();">삭제</div>
					</div>
					<div class="starRev-user" id="starRev-user">
					<c:choose>
						<c:when test="${my.star_comment == 4}">
							<span class="starR on">별1</span>
							<span class="starR on">별2</span>
							<span class="starR on">별3</span>
							<span class="starR on">별4</span>
							<span class="starR on">별5</span>
						</c:when>
						<c:when test="${my.star_comment == 3}">
							<span class="starR on">별1</span>
							<span class="starR on">별2</span>
							<span class="starR on">별3</span>
							<span class="starR on">별4</span>
							<span class="starR">별5</span>
						</c:when>
						<c:when test="${my.star_comment == 2}">
							<span class="starR on">별1</span>
							<span class="starR on">별2</span>
							<span class="starR on">별3</span>
							<span class="starR">별4</span>
							<span class="starR">별5</span>
						</c:when>
						<c:when test="${my.star_comment == 1}">
							<span class="starR on">별1</span>
							<span class="starR on">별2</span>
							<span class="starR">별3</span>
							<span class="starR">별4</span>
							<span class="starR">별5</span>
						</c:when>
						<c:when test="${my.star_comment == 0}">
							<span class="starR on">별1</span>
							<span class="starR">별2</span>
							<span class="starR">별3</span>
							<span class="starR">별4</span>
							<span class="starR">별5</span>
						</c:when>
						<c:otherwise>
							<span class="starR">별1</span>
							<span class="starR">별2</span>
							<span class="starR">별3</span>
							<span class="starR">별4</span>
							<span class="starR">별5</span>
						</c:otherwise>
					</c:choose>
				</div>
				<span class="text1" id="my_comment"> ${my.comment} </span>
				</li>
			</c:if>
			<c:choose>
				<%--조회결과가 없는 경우 --%>
				<c:when test="${output2 == null || fn:length(output2) == 0 }">
					<li>
						<div class="none-comment">조회결과가 없습니다.</div>
					</li>
				</c:when>
				<c:otherwise>
					<c:forEach var="cmt" items="${output2}" varStatus="status">
						<c:if test="${cmt.members_id == my.members_id}"></c:if>
						<c:if test="${cmt.members_id != my.members_id}">
						<li>
						<span>${cmt.user_id}</span>
						<div class="pulldate">${cmt.edit_date}</div>
						<div class="starRev-user" id="starRev-user">
							<c:choose>
								<c:when test="${cmt.star_comment == 4}">
									<span class="starR on">별1</span>
									<span class="starR on">별2</span>
									<span class="starR on">별3</span>
									<span class="starR on">별4</span>
									<span class="starR on">별5</span>
								</c:when>
								<c:when test="${cmt.star_comment == 3}">
									<span class="starR on">별1</span>
									<span class="starR on">별2</span>
									<span class="starR on">별3</span>
									<span class="starR on">별4</span>
									<span class="starR">별5</span>
								</c:when>
								<c:when test="${cmt.star_comment == 2}">
									<span class="starR on">별1</span>
									<span class="starR on">별2</span>
									<span class="starR on">별3</span>
									<span class="starR">별4</span>
									<span class="starR">별5</span>
								</c:when>
								<c:when test="${cmt.star_comment == 1}">
									<span class="starR on">별1</span>
									<span class="starR on">별2</span>
									<span class="starR">별3</span>
									<span class="starR">별4</span>
									<span class="starR">별5</span>
								</c:when>
								<c:when test="${cmt.star_comment == 0}">
									<span class="starR on">별1</span>
									<span class="starR">별2</span>
									<span class="starR">별3</span>
									<span class="starR">별4</span>
									<span class="starR">별5</span>
								</c:when>
								<c:otherwise>
									<span class="starR">별1</span>
									<span class="starR">별2</span>
									<span class="starR">별3</span>
									<span class="starR">별4</span>
									<span class="starR">별5</span>
								</c:otherwise>
							</c:choose>
						</div>
						<span class="text1"> ${cmt.comment} </span>
						</li>
						</c:if>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
	<!--페이지 넘기기 -->
	<!-- 페이지 번호 구현 -->
	<div class="pagePass">
		<%-- 이전 그룹에 대한 링크 --%>
		<c:choose>
			<%-- 이전 그룹으로 이동 가능하다면? --%>
			<c:when test="${pageData.prevPage > 0}">
				<%-- 이동할 URL 생성 --%>
				<c:url value="/movie/MovieContent.do" var="prevPageUrl">
					<c:param name="page" value="${pageData.prevPage}" />
					<c:param name="movie_id" value="${output.movie_id}"/>
					<c:param name="title" value="${output.title}" />
				</c:url>
				<a href="${prevPageUrl}">[ < ]</a>
			</c:when>
			<c:otherwise>
			[ < ]
		</c:otherwise>
		</c:choose>

		<%-- 페이지 번호 (시작 페이지 부터 끝 페이지까지 반복) --%>
		<c:forEach var="i" begin="${pageData.startPage}"
			end="${pageData.endPage}" varStatus="status">
			<%-- 이동할 URL 생성 --%>
			<c:url value="/movie/MovieContent.do" var="pageUrl">
				<c:param name="page" value="${i}" />
				<c:param name="movie_id" value="${output.movie_id}"/>
				<c:param name="title" value="${output.title}" />
			</c:url>

			<%-- 페이지 번호 출력 --%>
			<c:choose>
				<%-- 현재 머물고 있는 페이지 번호를 출력할 경우 링크 적용 안함 --%>
				<c:when test="${pageData.nowPage == i}">
					<strong>[${i}]</strong>
				</c:when>
				<%-- 나머지 페이지의 경우 링크 적용함 --%>
				<c:otherwise>
					<a href="${pageUrl}">[${i}]</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>

		<%-- 다음 그룹에 대한 링크 --%>
		<c:choose>
			<%-- 다음 그룹으로 이동 가능하다면? --%>
			<c:when test="${pageData.nextPage > 0}">
				<%-- 이동할 URL 생성 --%>
				<c:url value="/movie/MovieContent.do" var="nextPageUrl">
					<c:param name="page" value="${pageData.nextPage}" />
					<c:param name="movie_id" value="${output.movie_id}"/>
					<c:param name="title" value="${output.title}" />
				</c:url>
				<a href="${nextPageUrl}">[ > ]</a>
			</c:when>
			<c:otherwise>
			[ > ]
		</c:otherwise>
		</c:choose>
	</div>
</div>
<!-- 회원들이 작성한 댓글 끝-->
<div class="pageUpbutton">
	<button type="button" class="btn btn-dark" style="float: right"
		onclick="location.href='#'">맨위로</button>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!--<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js_files/likecount.js"></script>-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js_files/star.js"></script>
<!--<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js_files/people_text.js"></script>-->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/plugins/slick/slick.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/plugins/ajax_sws/ajax_helper.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".image-moving").slick({
			centerMode : true,
			centerPadding : '0px',
			slidesToShow : 1,
			responsive : [ {
				breakpoint : 768,
				settings : {
					arrows : false,
					centerMode : true,
					centerPadding : '30px',
					slidesToShow : 4
				}
			}, {
				breakpoint : 480,
				settings : {
					arrows : false,
					centerMode : true,
					centerPadding : '30px',
					slidesToShow : 1
				}
			} ]
		});
	});
</script>
<script type="text/javascript">
	function like_clicked() {

		var movie_id = document.getElementById("movie_id");
		var like_count = document.getElementById("like_count");
		var is_like = document.getElementById("is_like");
		if (is_like.value == "1") {
			$.ajax({
						url : "${pageContext.request.contextPath}/movie/MovieLikeDown",
						dataType : 'json',
						type : 'POST',
						data : {
							movie_id : movie_id.value,
							like_count : like_count.value
						},
						success : function(response) {
							is_like.value = 0;
							like_count.value = Number(like_count.value) - 1;
							$("#likecount").html(like_count.value);
							alert("좋아요한 영화에 삭제되었습니다.");
							$("#likebutton").attr("src","${pageContext.request.contextPath}/assets/img/hate_icon2.png");
						},
						error : function(error) {
							alert("로그인이 필요합니다.");
							window.location.href = "${pageContext.request.contextPath}/login/01-login.do";
						}
					});
		} else {
			$.ajax({
						url : "${pageContext.request.contextPath}/movie/MovieLikeUp",
						dataType : 'json',
						type : 'POST',
						data : {
							movie_id : movie_id.value,
							like_count : like_count.value
						},
						success : function(response) {
							is_like.value = 1;
							like_count.value = Number(like_count.value) + 1;
							$("#likecount").html(like_count.value);
							alert("좋아요한 영화에서 추가되었습니다.");
							$("#likebutton").attr("src","${pageContext.request.contextPath}/assets/img/love_icon2.png");
						},
						error : function(error) {
							alert("로그인이 필요합니다.");
							window.location.href = "${pageContext.request.contextPath}/login/01-login.do";
						}
					});
		}
	}
</script>
<script type="text/javascript">
	var star_comment=2;
	$(function() {
		$('.starRev span').click(function() {
			$(this).parent().children('span').removeClass('on');
			$(this).addClass('on').prevAll('span').addClass('on');
			star_comment = $(this).index();

			return false;
		});
	});
	
	function load_comment(){
		location.reload();
	}
	
	function add_comment() {
		var people_textarea = document.getElementById("people_textarea");

		if (people_textarea.value == null || people_textarea.value == '' || people_textarea.value.length < 1){
			alert("코멘트를 입력하세요.");
			return;
		}
		
		var is_comment = document.getElementById("is_comment");
		if(is_comment.value == 1){
			alert("이미 댓글을 작성하셨습니다.");
			return;
			
		}
		
		var movie_id = document.getElementById("movie_id");
		var user_id = document.getElementById("user_id");
		
		
		if (user_id.value == null || user_id.value == '' || user_id.value.length < 1){
			alert("로그인이 필요합니다.");
			window.location.href = "${pageContext.request.contextPath}/login/01-login.do";
			return;
		}

		$.ajax({
			url : "${pageContext.request.contextPath}/movie/addComment",
			dataType : 'json',
			type : 'POST',
			data : {
				movie_id : movie_id.value,
				user_id : user_id.value,
				people_textarea : people_textarea.value,
				star_comment : star_comment
			},
			success : function(response) {
				load_comment();
			},
			error : function(error) {
				alert("서버와의 연결이 올바르지 않습니다.");
				
			}
		});
	}
	
	function delete_comment(){
		var is_comment = document.getElementById("is_comment");
		if(is_comment.value == 0){
			alert("삭제할 댓글이 없습니다.");
			return;			
		}
		
		var movie_id = document.getElementById("movie_id");
		var user_id = document.getElementById("user_id");
		
		if (user_id.value == null || user_id.value == '' || user_id.value.length < 1){
			alert("로그인이 필요합니다.");
			window.location.href = "${pageContext.request.contextPath}/login/01-login.do";
			return;
		}
		

		$.ajax({
			url : "${pageContext.request.contextPath}/movie/deleteComment",
			dataType : 'json',
			type : 'POST',
			data : {
				movie_id : movie_id.value,
				user_id : user_id.value
			},
			success : function(response) {
				alert("작성하신 댓글이 삭제되었습니다.");
				load_comment();
			},
			error : function(error) {
				alert("서버와의 연결이 올바르지 않습니다.");
				
			}
		});
	}
</script>
<!-- 내용 부분 끝 -->
<!--// ========== 컨텐츠 영역 끝 ========== -->
<%@ include file="../_inc/footer.jsp"%>