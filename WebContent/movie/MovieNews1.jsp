<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/MovieNews1.css?time=<%=System.currentTimeMillis()%>">
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
					href="<%=request.getContextPath()%>/movie/movienewsdetail/MovieNewsDetail01.jsp?time=<%=System.currentTimeMillis()%>"
					class="thumbnail">
					<div class="row">
						<!-- 이미지 영역 -->
						<div class="movie-image1"></div>
						<!-- 텍스트 영역 -->
						<div class="movie-text">
							<h4>인터뷰 | 홍경표 촬영 감독이 직접 밝힌 ‘다만 악’ 촬영 비하인드</h4>
							<p>영화 ‘다만 악에서 구하소서’가 380만 관객을 돌파했다. 영화는 화려한 액션과 영상미로 관객의 눈길을
								사로잡으며 코로나 19 이후 최초 400만 관객을 돌파할 수 있을지 기대가 모이기도 했다. ‘지금까지 본 적 없는
								액션 영화’를 지향했다던 ‘다만 악에서 구하소서’. 영화의 촬영을 맡은 홍경표 촬영 감독에게 직접 촬영 과정을
								물었다.</p>
							<!-- .text-right는 오른쪽 정렬 -->
							<!-- .text-muted는 약간 회색으로 바뀜 -->
						</div>
					</div>
				</a>
			</div>
			<!-- 2개 -->
			<div class="movie-picture">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<a href="<%=request.getContextPath()%>/movie/movienewsdetail/MovieNewsDetail02.jsp?time=<%=System.currentTimeMillis()%>" class="thumbnail">
					<div class="row">
						<!-- 이미지 영역 -->
						<div class="movie-image2"></div>
						<!-- 텍스트 영역 -->
						<div class="movie-text">
							<h4>인터뷰 | ‘남매의 여름밤’ 윤단비 감독이 전하는 우리 모두의 여름 밤</h4>
							<p>영화 ‘남매의 여름밤’이 개봉 소식을 알렸다. 부산국제영화제 4관왕에 이어 로테르담 영화제를 비롯한 해외
								유수 영화제에 연이어 초청되는 등 평단의 호평이 자자한 작품으로, 빛바랜 사진첩을 스크린에 옮긴 듯 따뜻하면서도
								반가운 감상을 남기며 관객을 매료시켰다. 서울 그린나래미디어 본사에서 ‘남매의 여름밤’의 메가폰을 잡은 윤단비
								감독을 만나 영화에 대한 다양한 이야기를 나눴다.</p>
							<!-- .text-right는 오른쪽 정렬 -->
							<!-- .text-muted는 약간 회색으로 바뀜 -->
						</div>
					</div>
				</a>
			</div>
			<!-- 3개 -->
			<div class="movie-picture">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<a href="<%=request.getContextPath()%>/movie/movienewsdetail/MovieNewsDetail03.jsp?time=<%=System.currentTimeMillis()%>" class="thumbnail">
					<div class="row">
						<!-- 이미지 영역 -->
						<div class="movie-image3"></div>
						<!-- 텍스트 영역 -->
						<div class="movie-text">
							<h4>이슈 | 영화계 또 다시 올스톱…오프라인 행사 모두 취소</h4>
							<p>코로나19 일일 감염자가 늘어나면서 영화계가 다시 올스톱됐다. 사회적 거리두기가 2단계로 격상되면서
								오프라인 행사가 모두 취소되고 온라인 행사로 변경되는 등 또 다시 멈출 기미를 보이고 있다.</p>
							<!-- .text-right는 오른쪽 정렬 -->
							<!-- .text-muted는 약간 회색으로 바뀜 -->
						</div>
					</div>
				</a>
			</div>
			<!-- 4개 -->
			<div class="movie-picture">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<a href="<%=request.getContextPath()%>/movie/movienewsdetail/MovieNewsDetail04.jsp?time=<%=System.currentTimeMillis()%>" class="thumbnail">
					<div class="row">
						<!-- 이미지 영역 -->
						<div class="movie-image4"></div>
						<!-- 텍스트 영역 -->
						<div class="movie-text">
							<h4>박스오피스 | '오케이 마담' 개봉 7일만에 100만 관객 돌파</h4>
							<p>영화진흥위원회 영화관입장권 통합전상망에 따르면 '오케이 마담'은 지난 19일 하루동안 3만 8516명의
								관객을 동원했다. 이날까지 누적관객수는 100만 1203명으로 지난 12일 개봉한 후 7일만의 기록이다.</p>
							<!-- .text-right는 오른쪽 정렬 -->
							<!-- .text-muted는 약간 회색으로 바뀜 -->
						</div>
					</div>
				</a>
			</div>
			<!-- 5개 -->
			<div class="movie-picture">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<a href="<%=request.getContextPath()%>/movie/movienewsdetail/MovieNewsDetail05.jsp?time=<%=System.currentTimeMillis()%>" class="thumbnail">
					<div class="row">
						<!-- 이미지 영역 -->
						<div class="movie-image5"></div>
						<!-- 텍스트 영역 -->
						<div class="movie-text">
							<h4>리뉴얼 축전 | 김새벽 "맥스무비 새단장을 축하합니다"</h4>
							<p>2011년 영화 '줄탁동시'로 데뷔한 김새벽은 영화 '만신' '한여름의 판타지아' '설행-눈길을 걷다'
								'파란입이 달린 얼굴' '걷기왕' '그 후' '초행' '풀잎들' '얼굴들' '국경의 왕' '벌새' '항거: 유관순
								이야기' '도망친 여자' 등 독립영화에서 활발히 활동했다. 최근 키이스트와 전속계약을 체결했으며, 차기작은 변성현
								감독이 메가폰을 잡은 '킹메이커'다.</p>
							<!-- .text-right는 오른쪽 정렬 -->
							<!-- .text-muted는 약간 회색으로 바뀜 -->
						</div>
					</div>
				</a>
			</div>
			<!-- 6개 -->
			<div class="movie-picture">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<a href="<%=request.getContextPath()%>/movie/movienewsdetail/MovieNewsDetail06.jsp?time=<%=System.currentTimeMillis()%>" class="thumbnail">
					<div class="row">
						<!-- 이미지 영역 -->
						<div class="movie-image6"></div>
						<!-- 텍스트 영역 -->
						<div class="movie-text">
							<h4>이슈 | '테넷' 유료 시사회vs프리미엄 상영회…논란은 결국 변칙 개봉</h4>
							<p>영화 '테넷'이 개봉도 전에 시끄럽다. 코로나 19 여파로 우여곡절 끝에 개봉일을 확정했지만, 여전히
								논란은 사그라들지 않고 있다. 이번에는 유료 시사회와 프리미엄 상영회, 용어로 차이로 논란이 되고있다.</p>
							<!-- .text-right는 오른쪽 정렬 -->
							<!-- .text-muted는 약간 회색으로 바뀜 -->
						</div>
					</div>
				</a>
			</div>
			<!-- 7개 -->
			<div class="movie-picture">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<a href="<%=request.getContextPath()%>/movie/movienewsdetail/MovieNewsDetail07.jsp?time=<%=System.currentTimeMillis()%>" class="thumbnail">
					<div class="row">
						<!-- 이미지 영역 -->
						<div class="movie-image7"></div>
						<!-- 텍스트 영역 -->
						<div class="movie-text">
							<h4>인터뷰 | 예수정 “함부로 태극기 들고 광장 물 흐리지 말길”</h4>
							<p>‘69세’는 비극적인 상황에 부닥친 효정(예수정)이 부당함을 참지 않고, 오롯한 자신을 지켜내기 위해
								참으로 살아가는 결심의 과정을 그렸다. 나이를 먹었다 하여 모든 것을 포기하는 것이 아닌, 고통스러울지언정 끝내
								세상을 직면하고 감내하고자 하는 효정의 모습은 우리가 꿈꿔야 할 노년의 삶이 바로 그와 같은 것은 아닐지 생각하게
								만든다.</p>
							<!-- .text-right는 오른쪽 정렬 -->
							<!-- .text-muted는 약간 회색으로 바뀜 -->
						</div>
					</div>
				</a>
			</div>
			<!-- 8개 -->
			<div class="movie-picture">
				<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
				<a href="<%=request.getContextPath()%>/movie/movienewsdetail/MovieNewsDetail08.jsp?time=<%=System.currentTimeMillis()%>" class="thumbnail">
					<div class="row">
						<!-- 이미지 영역 -->
						<div class="movie-image8"></div>
						<!-- 텍스트 영역 -->
						<div class="movie-text">
							<h4>‘그린랜드’ 9월 개봉 확정…티저 포스터 공개</h4>
							<p>영화 ‘그린랜드’는 초대형 혜성 충돌까지 48시간, 사상 초유의 우주적 재난 상황 속 유일한 희망인
								그린란드의 지하 벙커로 향하는 존(제라드 버틀러) 가족의 사투를 그린 재난 블록버스터다. ‘엔젤 해즈 폴른’을
								연출한 릭 로먼 워 감독이 메가폰을 잡았으며, 제라드 버틀러와 모레나 바카린이 출연했다.</p>
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
			href="<%=request.getContextPath()%>/movie/nowMoving.jsp?time=<%=System.currentTimeMillis()%>"
			class="side-boxoffice"><i class="fas fa-film"></i><b>박스오피스</b></a> <a
			href="<%=request.getContextPath()%>/movie/MovieSearch.jsp?time=<%=System.currentTimeMillis()%>"
			class="side-moviesearch"><i class="fas fa-search"></i><b>영화검색</b></a>
		<a
			href="<%=request.getContextPath()%>/movie/MovieNews1.jsp?time=<%=System.currentTimeMillis()%>"
			class="side-movienews"><i class="far fa-file-alt"></i><b>영화소식</b></a>
		<a
			href="<%=request.getContextPath()%>/movie/Statistics1.jsp?time=<%=System.currentTimeMillis()%>"
			class="side-statistics"><i class="fas fa-chart-bar"></i><b>통계</b></a>
	</div>
</div>
<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="../js_files/pagepass1.js"></script>
<script type="text/javascript">
	
</script>
<!--// ========== 컨텐츠 영역 끝 ========== -->
<%@ include file="../_inc/footer.jsp"%>
