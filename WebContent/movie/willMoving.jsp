<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/nowMoving.css?time=<%=System.currentTimeMillis()%>">
<!-- ========== 컨텐츠 영역 시작 ========== -->
<div class="contentHeight">
    	<div class="content">
        	<div class="content1">
            <ul>
                <li>
                    <a href="#">박스오피스</a> 
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/movie/MovieSearch.jsp?time=<%=System.currentTimeMillis()%>">영화검색</a> 
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/movie/MovieNews.jsp?time=<%=System.currentTimeMillis()%>">영화소식</a> 
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/movie/Statistics1.jsp?time=<%=System.currentTimeMillis()%>">통계</a> 
                </li>
                
            </ul>
        </div>
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
                        <a role="menuitem" tabindex="-1" href="#">보고싶어요순</a>
                    </li>
                </ul>
                
            </div>
        </div>
        <!-- 갤러리 영역 -->
        <div class="king-row">
            <!-- 1개 -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                <a href="#" class="thumbnail">
                    <div class="row">
                        <!-- 이미지 영역 -->
                        <div class="col-sm-12 col-xs-3">
                        <span>
                            <img src="https://news.maxmovie.com/wp-content/uploads/2020/07/20200713_m_Wsj_1000013-490x700.jpg" class="img-responsive" />
                            </span>
                        </div>
                        <!-- 텍스트 영역 -->
                        <div class="col-sm-12 col-xs-9">
                        <span>
                            <h4>제목</h4>
                            <p>
                                이 부분은 컨텐츠에 대한 내용이 들어가는 영역 입니다.
                            </p>
                           </span>
                        </div>
                    </div>
                </a>
            </div>
            <!-- 2개 -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                <a href="#" class="thumbnail">
                    <div class="row">
                        <!-- 이미지 영역 -->
                        <div class="col-sm-12 col-xs-3">
                        <span>
                            <img src="https://news.maxmovie.com/wp-content/uploads/2020/07/20200714_m_yi_100001.jpg" class="img-responsive" />
                            </span>
                        </div>
                        <!-- 텍스트 영역 -->
                        <div class="col-sm-12 col-xs-9">
                        <span>
                            <h4>제목</h4>
                            <p>
                                이 부분은 컨텐츠에 대한 내용이 들어가는 영역 입니다.
                            </p>
                          </span>
                        </div>
                    </div>
                </a>
            </div>
            <!-- 3개 -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                <a href="#" class="thumbnail">
                    <div class="row">
                        <!-- 이미지 영역 -->
                        <div class="col-sm-12 col-xs-3">
                        <span>
                            <img src="https://news.maxmovie.com/wp-content/uploads/2020/07/20200710_m_wsj_1000001-700x466.jpg" class="img-responsive" />
                            </span>
                        </div>
                        <!-- 텍스트 영역 -->
                        <div class="col-sm-12 col-xs-9">
                        <span>
                            <h4>제목</h4>
                            <p>
                                이 부분은 컨텐츠에 대한 내용이 들어가는 영역 입니다.
                            </p>
                            </span>
                        </div>
                    </div>
                </a>
            </div>
            <!-- 4개 -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                <a href="#" class="thumbnail">
                    <div class="row">
                        <!-- 이미지 영역 -->
                        <div class="col-sm-12 col-xs-3">
                        <span>
                            <img src="https://news.maxmovie.com/wp-content/uploads/2020/07/20200710_m_yi_100008.jpg" class="img-responsive" />
                            </span>
                        </div>
                        <!-- 텍스트 영역 -->
                        <div class="col-sm-12 col-xs-9">
                        <span>
                            <h4>제목</h4>
                            <p>
                                이 부분은 컨텐츠에 대한 내용이 들어가는 영역 입니다.
                            </p>
                           </span>
                        </div>
                    </div>
                </a>
            </div>
            <!-- 5개 -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                <a href="#" class="thumbnail">
                    <div class="row">
                        <!-- 이미지 영역 -->
                        <div class="col-sm-12 col-xs-3">
                        <span>
                            <img src="https://news.maxmovie.com/wp-content/uploads/2020/07/20200713_m_Wsj_1000009-700x464.jpg" class="img-responsive" />
                            </span>
                        </div>
                        <!-- 텍스트 영역 -->
                        <div class="col-sm-12 col-xs-9">
                        <span>
                            <h4>제목</h4>
                            <p>
                                이 부분은 컨텐츠에 대한 내용이 들어가는 영역 입니다.
                            </p>
                            </span>
                        </div>
                    </div>
                </a>
            </div>
            <!-- 6개 -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                <a href="#" class="thumbnail">
                    <div class="row">
                        <!-- 이미지 영역 -->
                        <div class="col-sm-12 col-xs-3">
                        <span>
                            <img src="https://news.maxmovie.com/wp-content/uploads/2020/07/20200713_m_yi_100002.jpg" class="img-responsive" />
                            </span>
                        </div>
                        <!-- 텍스트 영역 -->
                        <div class="col-sm-12 col-xs-9">
                        <span>
                            <h4>제목</h4>
                            <p>
                                이 부분은 컨텐츠에 대한 내용이 들어가는 영역 입니다.
                            </p>
                            </span>
                        </div>
                    </div>
                </a>
            </div>
            <!-- 7개 -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                <a href="#" class="thumbnail">
                    <div class="row">
                        <!-- 이미지 영역 -->
                        <div class="col-sm-12 col-xs-3">
                        <span>
                            <img src="https://news.maxmovie.com/wp-content/uploads/2020/07/20200713_PJD_7855-700x467.jpg" class="img-responsive" />
                            </span>
                        </div>
                        <!-- 텍스트 영역 -->
                        <div class="col-sm-12 col-xs-9">
                        <span>
                            <h4>제목</h4>
                            <p>
                                이 부분은 컨텐츠에 대한 내용이 들어가는 영역 입니다.
                            </p>
                            </span>
                        </div>
                    </div>
                </a>
            </div>
            <!-- 8개 -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                <a href="#" class="thumbnail">
                    <div class="row">
                        <!-- 이미지 영역 -->
                        <div class="col-sm-12 col-xs-3">
                        <span>
                            <img src="https://news.maxmovie.com/wp-content/uploads/2020/07/20200713_m_Wsj_1000004-467x700.jpg" class="img-responsive" />
                            </span>
                        </div>
                        <!-- 텍스트 영역 -->
                        <div class="col-sm-12 col-xs-9">
                        <span>
                            <h4>제목</h4>
                            <p>
                                이 부분은 컨텐츠에 대한 내용이 들어가는 영역 입니다.
                            </p>
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
<!--// ========== 컨텐츠 영역 끝 ========== -->
<%@ include file="../_inc/footer.jsp"%>
