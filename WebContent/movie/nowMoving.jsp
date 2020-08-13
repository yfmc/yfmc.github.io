<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/nowMoving.css?time=<%=System.currentTimeMillis()%>">
<!-- ========== 컨텐츠 영역 시작 ========== -->
<link rel="stylesheet"
	href="https://www.littlesnippets.net/css/codepen-result.css">
<link rel="stylesheet" href="../plugins/ajax_sws/ajax_helper.css">
<title>현재상영작 | Cinephile</title>
<div class="contentHeight">
	<div class="content">
		<div class="list_title">
			<h2>박스오피스</h2>
			<p>
			<ul>
				<li><a href="#">현재 상영작</a></li>
				<li><a
					href="<%=request.getContextPath()%>/movie/willMoving.jsp?time=<%=System.currentTimeMillis()%>">상영
						예정작</a></li>
			</ul>
			</p>
		</div>
		<div class="clearfix">
			<div class="dropdown pull-right">
				<button class="btn btn-success dropdown-toggle" type="button"
					id="dropdownMenu2" data-toggle="dropdown">
					예매순 <span class="caret"></span>
				</button>

				<ul class="dropdown-menu dropdown-menu-right">
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#" class="ranking" data-type="a">예매순</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#" class="ranking" data-type="b">평점순</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#" class="ranking" data-type="c">관람객순</a></li>
				</ul>

			</div>
		</div>
		<!-- 갤러리 영역 -->
		<div class="scroll-row">
				<div class="king-row">
					<!-- 1개 -->
					<div class="movie-picture">
						<div class="rank">
							NO.<span>1</span>
						</div>
						<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
						<figure class="imageup">
							<div class="row">
								<!-- 이미지 영역 -->
								<div class="movie-image">
									<span><img
										src="https://movie-phinf.pstatic.net/20200703_48/1593739617223iuD2b_JPEG/movie_image.jpg"
										class="img-responsive" />
										<figcaption>
											<button type="button" class="btn btn-danger">예매하기</button>
											<button type="button" class="btn btn-primary">상세정보</button>
										</figcaption> </span>
								</div>
								<!-- 텍스트 영역 -->

								<div class="movie-text">
									<span>
										<h4>
											<span class="label label-warning">15</span>강철비2-정상회담
										</h4>
									</span>
								</div>

							</div>
						</figure>
					</div>
					<!-- 2개 -->
					<div class="movie-picture">
						<div class="rank">
							NO.<span>2</span>
						</div>
						<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
						<figure class="imageup">
							<div class="row">
								<!-- 이미지 영역 -->
								<div class="movie-image">
									<span> <img
										src="https://movie-phinf.pstatic.net/20200624_137/15929908359489lOON_JPEG/movie_image.jpg"
										class="img-responsive" />
										<figcaption>
											<button type="button" class="btn btn-danger">예매하기</button>
											<button type="button" class="btn btn-primary">상세정보</button>
										</figcaption>
									</span>
								</div>
								<!-- 텍스트 영역 -->
								<div class="movie-text">
									<span>
										<h4>
											<span class="label label-warning">15</span>반도
										</h4>
									</span>
								</div>
							</div>
						</figure>
					</div>
					<!-- 3개 -->
					<div class="movie-picture">
						<div class="rank">
							NO.<span>3</span>
						</div>
						<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
						<figure class="imageup">
							<div class="row">
								<!-- 이미지 영역 -->
								<div class="movie-image">
									<span> <img
										src="https://movie-phinf.pstatic.net/20190524_104/1558663170174Q2mmw_JPEG/movie_image.jpg"
										class="img-responsive" />
										<figcaption>
											<button type="button" class="btn btn-danger">예매하기</button>
											<button type="button" class="btn btn-primary">상세정보</button>
										</figcaption>
									</span>
								</div>
								<!-- 텍스트 영역 -->
								<div class="movie-text">
									<span>
										<h4>
											<span class="label label-success">전체</span>알라딘
										</h4>
									</span>
								</div>
							</div>
						</figure>
					</div>
					<!-- 4개 -->
					<div class="movie-picture">
						<div class="rank">
							NO.<span>4</span>
						</div>
						<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
						<figure class="imageup">
							<div class="row">
								<!-- 이미지 영역 -->
								<div class="movie-image">
									<span> <img
										src="https://movie-phinf.pstatic.net/20200715_118/1594788326147GKSI3_JPEG/movie_image.jpg"
										class="img-responsive" />
										<figcaption>
											<button type="button" class="btn btn-danger">예매하기</button>
											<button type="button" class="btn btn-primary">상세정보</button>
										</figcaption>
									</span>
								</div>
								<!-- 텍스트 영역 -->
								<div class="movie-text">
									<span>
										<h4>
											<span class="label label-primary">12</span>소년 아메드
										</h4>
									</span>
								</div>
							</div>
						</figure>
					</div>
					<!-- 5개 -->
					<div class="movie-picture">
						<div class="rank">
							NO.<span>5</span>
						</div>
						<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
						<figure class="imageup">
							<div class="row">
								<!-- 이미지 영역 -->
								<div class="movie-image">
									<span> <img
										src="https://movie-phinf.pstatic.net/20200804_191/1596519125636u6rAe_JPEG/movie_image.jpg"
										class="img-responsive" />
										<figcaption>
											<button type="button" class="btn btn-danger">예매하기</button>
											<button type="button" class="btn btn-primary">상세정보</button>
										</figcaption>
									</span>
								</div>
								<!-- 텍스트 영역 -->
								<div class="movie-text">
									<span>
										<h4>
											<span class="label label-warning">15</span>소년시절의 너
										</h4>
									</span>
								</div>
							</div>
						</figure>
					</div>
					<!-- 6개 -->
					<div class="movie-picture">
						<div class="rank">
							NO.<span>6</span>
						</div>
						<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
						<figure class="imageup">
							<div class="row">
								<!-- 이미지 영역 -->
								<div class="movie-image">
									<span> <img
										src="https://movie-phinf.pstatic.net/20200727_170/1595824882139uopaD_JPEG/movie_image.jpg"
										class="img-responsive" />
										<figcaption>
											<button type="button" class="btn btn-danger">예매하기</button>
											<button type="button" class="btn btn-primary">상세정보</button>
										</figcaption>
									</span>
								</div>
								<!-- 텍스트 영역 -->
								<div class="movie-text">
									<span>
										<h4>
											<span class="label label-success">전체</span>빅샤크3-젤리몬스터 대소동
										</h4>
									</span>
								</div>
							</div>
						</figure>
					</div>
					<!-- 7개 -->
					<div class="movie-picture">
						<div class="rank">
							NO.<span>7</span>
						</div>
						<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
						<figure class="imageup">
							<div class="row">
								<!-- 이미지 영역 -->
								<div class="movie-image">
									<span> <img
										src="https://movie-phinf.pstatic.net/20200807_46/159679072564527BTt_JPEG/movie_image.jpg"
										class="img-responsive" />
										<figcaption>
											<button type="button" class="btn btn-danger">예매하기</button>
											<button type="button" class="btn btn-primary">상세정보</button>
										</figcaption>
									</span>
								</div>
								<!-- 텍스트 영역 -->
								<div class="movie-text">
									<span>
										<h4>
											<span class="label label-danger">청불</span>존 윅-특별판
										</h4>
									</span>
								</div>
							</div>
						</figure>
					</div>
					<!-- 8개 -->
					<div class="movie-picture">
						<div class="rank">
							NO.<span>8</span>
						</div>
						<!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
						<figure class="imageup">
							<div class="row">
								<!-- 이미지 영역 -->
								<div class="movie-image">
									<span><img
										src="https://movie-phinf.pstatic.net/20200706_191/1594001490577tifkl_JPEG/movie_image.jpg"
										class="img-responsive" />
										<figcaption>
											<button type="button" class="btn btn-danger">예매하기</button>
											<button type="button" class="btn btn-primary">상세정보</button>
										</figcaption> </span>
								</div>
								<!-- 텍스트 영역 -->
								<div class="movie-text">
									<span>
										<h4>
											<span class="label label-warning">15</span>다만 악에서 구하소서
										</h4>
									</span>
								</div>
							</div>
						</figure>
					</div>
				</div>
				<!-- scroll-row끝! -->
			<!-- 갤러리 8개 끝!!! -->
			<div class="plusbutton" style="visibility: visible;" id="plusbutton">
				<button class="btn btn-danger" id="morenowmoving">
					<!-- bs3-icon:glyphicon -->
					<!-- icon에는 내가 넣고 싶은 것을 넣으면 된다. -->
					<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
				</button>
			</div>
		</div>
	</div>
</div>
<!-- side바 -->

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
<script type="text/x-handlebars-template" id="ranking-list">
{{#each data}}
<div class="movie-picture">
                        <div class="rank">
                            NO.<span>{{rank}}</span>
                        </div>
                        <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                        <figure class="imageup">
                            <div class="row">
                                <!-- 이미지 영역 -->
                                <div class="movie-image">
                                    <span>{{{movieaddress}}}
                                        <figcaption>
                                            <button type="button" class="btn btn-danger">예매하기</button>
                                            <button type="button" class="btn btn-primary">상세정보</button>
                                        </figcaption> </span>
                                </div>
                                <!-- 텍스트 영역 -->

                                <div class="movie-text">
                                    <span>
                                        <h4>
                                            <span class="label label-{{agelimitbutton}}">{{agelimit}}</span>{{moviename}}
                                        </h4>
                                    </span>
                                </div>

                            </div>
                        </figure>
                    </div>
{{/each}}
</script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="../plugins/ajax_sws/ajax_helper.js"></script>
<script src="../plugins/handlebars/handlebars-v4.7.6.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="../js_files/ranking.js"></script>
<script type="text/javascript">
	$(".hover").mouseleave(function() {
		$(this).removeClass("hover");
	});

	//console.log(content.movielist.data.length/4)
	//console.log(content.movielist.data.length%4)
	//var append=content.movielist.data.length/4
	//if(content.movielist.data.length%4!=0){
	//	var append=content.movielist.data.length/4+1;
	//}
	$('.dropdown-menu > li > a').click(
			function(e) {
				var contents = $(this).html();
				$('button.dropdown-toggle').html(
						contents + ' <span class="caret"></span>');
			});
</script>
<%@ include file="../_inc/footer.jsp"%>
