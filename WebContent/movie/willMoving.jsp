<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/willMoving.css?time=<%=System.currentTimeMillis()%>">
<!-- ========== 컨텐츠 영역 시작 ========== -->
<title>상영예정작 | Cinephile</title>
<div class="contentHeight">
    	<div class="content">
        <div class="list_title">
            <h2>박스오피스</h2>
            <p>
                <span>
                <ul>
               		<li>
                		<a href="<%=request.getContextPath()%>/movie/nowMoving.jsp?time=<%=System.currentTimeMillis()%>">현재 상영작</a>
                	</li>
                	<li>
                		<a href="#">상영 예정작</a>
                	</li>
                </ul>
                </span>
            </p>
        </div>
        <div class="clearfix">
            <div class="dropdown pull-right">
                <button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown">
                    개봉일순
                    <span class="caret"></span>
                </button>
                
                <ul class="dropdown-menu dropdown-menu-right">
                    <li role="presentation">
                        <a role="menuitem" tabindex="-1" href="#">개봉일순</a>
                    </li>
                    <li role="presentation">
                        <a role="menuitem" tabindex="-1" href="#">좋아요순</a>
                    </li>
                </ul>
                
            </div>
        </div>
        <!-- 갤러리 영역 -->
         <div class="king-row">
            <!-- 1개 -->
            <div class="movie-picture">
            <div class="rank">
            		<span>D-1</span>
            	</div>
                <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                <a href="#" class="thumbnail">
                    <div class="row">
                        <!-- 이미지 영역 -->
                        <div class="movie-image">
                        	<span>
                            	<img src="<%=request.getContextPath()%>/img/nowmoving1.jpg" class="img-responsive" />
                            </span>
                        </div>
                        
                        <!-- 텍스트 영역 -->
                        
                        <div class="movie-text">
                        <span>
                            <h4><span class="label label-warning">15</span>강철비2-정상회담</h4>
                            </span>
                        </div>
                        
                    </div>
                </a>
            </div>
            <!-- 2개 -->
            <div class="movie-picture">
            <div class="rank">
            		<span>D-2</span>
            	</div>
                <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                <a href="#" class="thumbnail">
                    <div class="row">
                        <!-- 이미지 영역 -->
                        <div class="movie-image">
                        	<span>
                            	<img src="<%=request.getContextPath()%>/img/nowmoving2.jpg" class="img-responsive" />
                            </span>
                        </div>
                        <!-- 텍스트 영역 -->
                        <div class="movie-text">
                        	<span>
                            	<h4><span class="label label-warning">15</span>반도</h4>
                            </span>
                        </div>
                    </div>
                </a>
            </div>
            <!-- 3개 -->
            <div class="movie-picture">
            <div class="rank">
            		<span>D-3</span>
            	</div>
                <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                <a href="#" class="thumbnail">
                    <div class="row">
                        <!-- 이미지 영역 -->
                        <div class="movie-image">
                        <span>
                            <img src="<%=request.getContextPath()%>/img/nowmoving3.jpg" class="img-responsive" />
                        </span>
                        </div>
                        <!-- 텍스트 영역 -->
                        <div class="movie-text">
                        	<span>
                            	<h4><span class="label label-success">전체</span>알라딘</h4>
                            </span>
                        </div>
                    </div>
                </a>
            </div>
            <!-- 4개 -->
            <div class="movie-picture">
            <div class="rank">
            		<span>D-5</span>
            	</div>
                <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                <a href="#" class="thumbnail">
                    <div class="row">
                        <!-- 이미지 영역 -->
                        <div class="movie-image">
                        	<span>
                            	<img src="<%=request.getContextPath()%>/img/nowmoving4.jpg" class="img-responsive" />
                            </span>
                        </div>
                        <!-- 텍스트 영역 -->
                        <div class="movie-text">
                        	<span>
                            	<h4><span class="label label-primary">12</span>소년 아메드</h4>
                            </span>
                        </div>
                    </div>
                </a>
            </div>
            <!-- 5개 -->
            <div class="movie-picture">
            <div class="rank">
            		<span>D-5</span>
            	</div>
                <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                <a href="#" class="thumbnail">
                    <div class="row">
                        <!-- 이미지 영역 -->
                        <div class="movie-image">
                        	<span>
                            	<img src="<%=request.getContextPath()%>/img/nowmoving5.jpg" class="img-responsive" />
                            </span>
                        </div>
                        <!-- 텍스트 영역 -->
                        <div class="movie-text">
                        <span>
                            <h4><span class="label label-warning">15</span>소년시절의 너</h4>
                            </span>
                        </div>
                    </div>
                </a>
            </div>
            <!-- 6개 -->
            <div class="movie-picture">
            <div class="rank">
            		<span>D-7</span>
            	</div>
                <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                <a href="#" class="thumbnail">
                    <div class="row">
                        <!-- 이미지 영역 -->
                        <div class="movie-image">
                        	<span>
                            <img src="<%=request.getContextPath()%>/img/nowmoving6.jpg" class="img-responsive" />
                            </span>
                        </div>
                        <!-- 텍스트 영역 -->
                        <div class="movie-text">
                        	<span>
                            	<h4><span class="label label-success">전체</span>빅샤크3-젤리몬스터 대소동</h4>
                            </span>
                        </div>
                    </div>
                </a>
            </div>
            <!-- 7개 -->
            <div class="movie-picture">
            <div class="rank">
            		<span>D-7</span>
            	</div>
                <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                <a href="#" class="thumbnail">
                    <div class="row">
                        <!-- 이미지 영역 -->
                        <div class="movie-image">
                        <span>
                            <img src="<%=request.getContextPath()%>/img/nowmoving7.jpg" class="img-responsive" />
                            </span>
                        </div>
                        <!-- 텍스트 영역 -->
                        <div class="movie-text">
                        <span>
                            <h4><span class="label label-danger">청불</span>존 윅-특별판</h4>
                            </span>
                        </div>
                    </div>
                </a>
            </div>
            <!-- 8개 -->
            <div class="movie-picture">
            <div class="rank">
            		<span>D-10</span>
            	</div>
                <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                <a href="#" class="thumbnail">
                    <div class="row">
                        <!-- 이미지 영역 -->
                        <div class="movie-image">
                        <span>
                            <img src="<%=request.getContextPath()%>/img/nowmoving8.jpg" class="img-responsive" />
                            </span>
                        </div>
                        <!-- 텍스트 영역 -->
                        <div class="movie-text">
                        <span>
                            <h4><span class="label label-warning">15</span>다만 악에서 구하소서</h4>
                            </span>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <!-- 갤러리 8개 끝!!! -->
        <div class="plusbutton">
            <button class="btn btn-danger">
                <!-- bs3-icon:glyphicon -->
                <!-- icon에는 내가 넣고 싶은 것을 넣으면 된다. -->
                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
            </button>
        </div>
    </div>
</div>

<!-- side바 -->

	<div class="icon-bar">
  		<a href="<%=request.getContextPath()%>/movie/nowMoving.jsp?time=<%=System.currentTimeMillis()%>" class="side-boxoffice"><i class="fas fa-film"></i><b>박스오피스</b></a> 
  		<a href="<%=request.getContextPath()%>/movie/MovieSearch.jsp?time=<%=System.currentTimeMillis()%>" class="side-moviesearch"><i class="fas fa-search"></i><b>영화검색</b></a> 
 		 <a href="<%=request.getContextPath()%>/movie/MovieNews.jsp?time=<%=System.currentTimeMillis()%>" class="side-movienews"><i class="far fa-file-alt"></i><b>영화소식</b></a> 
  		<a href="<%=request.getContextPath()%>/movie/Statistics1.jsp?time=<%=System.currentTimeMillis()%>" class="side-statistics"><i class="fas fa-chart-bar"></i><b>통계</b></a>
	</div>
<!--// ========== 컨텐츠 영역 끝 ========== -->
<%@ include file="../_inc/footer.jsp"%>
