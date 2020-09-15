<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/MovieNews7.css?time=<%=System.currentTimeMillis()%>">
<title>영화소식 | Cinephile</title>
<!-- ========== 컨텐츠 영역 시작 ========== -->
<div class="contentHeight">
	<div class="content">
		<div class="newsName">
			<h2>영화소식</h2>
		</div>
		<!-- 갤러리 영역 -->
		<div class="king-row">
			<!-- 1개 -->
			<div class="movie-picture">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<a
					href="${pageContext.request.contextPath}/movie/movienewsdetail/MovieNewsDetail49.do?time=<%=System.currentTimeMillis()%>"
					class="thumbnail">
					<div class="row">
						<!-- 이미지 영역 -->
						<div class="movie-image1"></div>
						<!-- 텍스트 영역 -->
						<div class="movie-text">
							<h4>하지원, '담보'로 스크린 복귀…"이 시대에 필요한 영화"</h4>
							<p>영화 '담보'는 인정사정 없는 사채업자 두석과 그의 후배 종배가 떼인 돈을 받으러 갔다가 얼떨결에 9살
								승이를 담보로 맡아 키우면서 벌어지는 이야기를 그린 작품이다. 하지원은 극중 9살 담보에서 보물로 잘 자란 어른
								승이 역을 맡았다. 담보를 맡게 된 두 아저씨를 연기한 성동일, 김희원과 함께 특유의 밀도 높은 감정 연기와 케미를
								선보이며 관객들에게 가슴 찡한 감동을 선사할 예정이다.</p>
							<!-- .text-right는 오른쪽 정렬 -->
							<!-- .text-muted는 약간 회색으로 바뀜 -->
						</div>
					</div>
				</a>
			</div>
			<!-- 2개 -->
			<div class="movie-picture">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<a
					href="${pageContext.request.contextPath}/movie/movienewsdetail/MovieNewsDetail50.do?time=<%=System.currentTimeMillis()%>"
					class="thumbnail">
					<div class="row">
						<!-- 이미지 영역 -->
						<div class="movie-image2"></div>
						<!-- 텍스트 영역 -->
						<div class="movie-text">
							<h4>박스오피스 | '다만 악' 개봉 첫 주말 138만 관객 동원…200만 돌파</h4>
							<p>영화진흥위원회 영화관입장권 통합전산망에 따르면 영화 '다만 악에서 구하소서'는 개봉 첫 주말인 지난
								7일부터 9일까지 3일동안 138만 9520명의 관객을 동원했다. 이날까지 누적관객수는 201만 5040명으로 지난
								5일 개봉 후 5일만의 기록이다.</p>
							<!-- .text-right는 오른쪽 정렬 -->
							<!-- .text-muted는 약간 회색으로 바뀜 -->
						</div>
					</div>
				</a>
			</div>
			<!-- 3개 -->
			<div class="movie-picture">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<a
					href="${pageContext.request.contextPath}/movie/movienewsdetail/MovieNewsDetail51.do?time=<%=System.currentTimeMillis()%>"
					class="thumbnail">
					<div class="row">
						<!-- 이미지 영역 -->
						<div class="movie-image3"></div>
						<!-- 텍스트 영역 -->
						<div class="movie-text">
							<h4>주간 넷플릭스 | ‘워크 잇’-‘삼국지 극장판’-‘원티드’-‘아넬카’-‘유령</h4>
							<p>영화 ‘워크 잇’은 명문대 합격을 꿈꾸는 모범생 퀸이 워크 잇 댄스 대회 우승을 향해 나아가는 도전기를
								그린 코미디다. 아버지의 모교이자 최고의 명문대인 듀크 대학교에 합격하는 것을 꿈꿔온 퀸 애커먼은 꿈의 대학교를
								코앞에 둔 면접장에서 얼떨결에 교내 최고의 댄스팀인 선더버즈에서 활약하고 있다는 거짓말을 하고 만다. 발등에 불이
								떨어진 퀸은 절친의 도움으로 댄스팀의 멤버가 되어보려고 하지만, 뜻대로 움직이지 않는 몸에 발목이 잡힌다.</p>
							<!-- .text-right는 오른쪽 정렬 -->
							<!-- .text-muted는 약간 회색으로 바뀜 -->
						</div>
					</div>
				</a>
			</div>
			<!-- 4개 -->
			<div class="movie-picture">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<a
					href="${pageContext.request.contextPath}/movie/movienewsdetail/MovieNewsDetail52.do?time=<%=System.currentTimeMillis()%>"
					class="thumbnail">
					<div class="row">
						<!-- 이미지 영역 -->
						<div class="movie-image4"></div>
						<!-- 텍스트 영역 -->
						<div class="movie-text">
							<h4>리뷰 | 무더위 날릴 시원한 영상미 돋보이는 ‘어서오시게스트하우스’</h4>
							<p>드라마 ‘부부의 세계’를 통해 대중의 시선을 사로잡았던 배우 이학주가 돌아왔다. 그는 영화
								‘어서오시게스트하우스’에서 열정은 넘치지만 되는 일은 하나도 없는 취준생 준근을 연기하며 전과는 또 다른 이미지를
								구축하는 데 성공했다.</p>
							<!-- .text-right는 오른쪽 정렬 -->
							<!-- .text-muted는 약간 회색으로 바뀜 -->
						</div>
					</div>
				</a>
			</div>
			<!-- 5개 -->
			<div class="movie-picture">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<a
					href="${pageContext.request.contextPath}/movie/movienewsdetail/MovieNewsDetail53.do?time=<%=System.currentTimeMillis()%>"
					class="thumbnail">
					<div class="row">
						<!-- 이미지 영역 -->
						<div class="movie-image5"></div>
						<!-- 텍스트 영역 -->
						<div class="movie-text">
							<h4>현장 | ‘어서오시게스트하우스’ 심요한 감독 “이학주 캐스팅, 처음엔 고민했다”</h4>
							<p>7일 오후 영화 ‘어서오시게스트하우스’(감독 심요한) 언론시사회가 서울시 용산구 CGV용산아이파크몰에서
								열렸다. 이날 행사는 메가폰을 잡은 심요한 감독과 함께 배우 이학주, 박선영, 신민재, 신재훈이 참석해 영화에 대한
								다양한 이야기를 나눴다.</p>
							<!-- .text-right는 오른쪽 정렬 -->
							<!-- .text-muted는 약간 회색으로 바뀜 -->
						</div>
					</div>
				</a>
			</div>
			<!-- 6개 -->
			<div class="movie-picture">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<a
					href="${pageContext.request.contextPath}/movie/movienewsdetail/MovieNewsDetail54.do?time=<%=System.currentTimeMillis()%>"
					class="thumbnail">
					<div class="row">
						<!-- 이미지 영역 -->
						<div class="movie-image6"></div>
						<!-- 텍스트 영역 -->
						<div class="movie-text">
							<h4>위클리 업&amp;다운 | ‘승리호’ 9월 개봉 확정 -‘뮬란’ 극장 개봉</h4>
							<p>국내 최초 스페이스 오페라 영화 ‘승리호’가 9월 23일 개봉을 확정했다. 올해 하반기 최고 기대작으로
								손꼽히는 이 작품은 2092년, 우주쓰레기 청소선 승리호의 선원들이 대량살상무기로 알려진 인간형 로봇 도로시를
								발견한 후 위험한 거래에 뛰어드는 이야기를 그렸다. 영화는 ‘늑대소년’ 등을 연출한 조성희 감독이 메가폰을
								잡았으며, 송중기, 김태리, 진선규, 유해진이 출연했다.</p>
							<!-- .text-right는 오른쪽 정렬 -->
							<!-- .text-muted는 약간 회색으로 바뀜 -->
						</div>
					</div>
				</a>
			</div>
			<!-- 7개 -->
			<div class="movie-picture">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<a
					href="${pageContext.request.contextPath}/movie/movienewsdetail/MovieNewsDetail55.do?time=<%=System.currentTimeMillis()%>"
					class="thumbnail">
					<div class="row">
						<!-- 이미지 영역 -->
						<div class="movie-image7"></div>
						<!-- 텍스트 영역 -->
						<div class="movie-text">
							<h4>생일 축하합니다 | 류승범•김향기•황우슬혜•이성경•고아성•류승수•여진구•송지효</h4>
							<p>1년에 단 하루뿐인 생일은 누구에게나 가슴 설레는 특별한 날이다. 주변인들의 진심 어린 축하가 오갈 때면
								뭉클한 감동이 느껴지기도 한다. 누구보다 많은 사랑을 받으며 행복한 하루를 보낼 이번 주 생일을 맞은 배우들을
								살펴봤다.</p>
							<!-- .text-right는 오른쪽 정렬 -->
							<!-- .text-muted는 약간 회색으로 바뀜 -->
						</div>
					</div>
				</a>
			</div>
			<!-- 8개 -->
			<div class="movie-picture">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<a
					href="${pageContext.request.contextPath}/movie/movienewsdetail/MovieNewsDetail56.do?time=<%=System.currentTimeMillis()%>"
					class="thumbnail">
					<div class="row">
						<!-- 이미지 영역 -->
						<div class="movie-image8"></div>
						<!-- 텍스트 영역 -->
						<div class="movie-text">
							<h4>이번 주 뭘볼까 | '다막 악에서 구하소서'-'주식회사 스페셜액터스'-'애니멀</h4>
							<p>영화 ‘다만 악에서 구하소서’(감독 홍원찬, 이하 ‘다만 악’)는 마지막 청부살인 미션 때문에 새로운
								사건에 휘말리게 되는 암살자 인남과 그를 쫓는 인간 백정 레이의 처절한 추격과 사투를 그렸다. 국정원 출신
								청부살인업자 인남(황정민)은 마지막 청부살인을 끝내고 새로운 삶을 시작하려 하지만, 태국에서 발생한 아동 납치
								사건이 자신과 관계된 일이란 것을 뒤늦게 알게 된다. 인남은 곧바로 태국으로 발걸음을 돌리고, 조력자
								유이(박정민)을 만나 사건을 쫓는다. 한편, 자신의 형제가 인남에게 암살당한 것을 알게 된 레이(이정재). 그는
								무자비한 복수를 위해 인남 주변의 모든 사람들을 죽이며 인남을 추격하기 시작한다.</p>
							<!-- .text-right는 오른쪽 정렬 -->
							<!-- .text-muted는 약간 회색으로 바뀜 -->
						</div>
					</div>
				</a>
			</div>
		</div>
		<!-- 갤러리 8개 끝!!! -->

		<!--페이지 넘기기 -->
		<div class="pagePass" id="pagePass"></div>

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
</div>
<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js_files/pagepass7.js"></script>
<script type="text/javascript">
	
</script>
<!--// ========== 컨텐츠 영역 끝 ========== -->
<%@ include file="../_inc/footer.jsp"%>
