<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/MovieNews.css?time=<%=System.currentTimeMillis()%>">

<!-- ========== 컨텐츠 영역 시작 ========== -->
<div class="contentHeight">
        <div class="content">
            <div class="content1">
                <ul>
                <li>
                		    <a href="<%=request.getContextPath()%>/movie/nowMoving.jsp?time=<%=System.currentTimeMillis()%>">박스오피스</a> 
                		</li>
                		<li>
                    		<a href="<%=request.getContextPath()%>/movie/MovieSearch.jsp?time=<%=System.currentTimeMillis()%>">영화검색</a> 
                		</li>
                		<li>
                    		<a href="#">영화소식</a> 
                		</li>
                		<li>
                    		<a href="<%=request.getContextPath()%>/movie/Statistics1.jsp?time=<%=System.currentTimeMillis()%>">통계</a> 
                		</li>
                
            </ul>
            </div>
            <div class="newsName">
            <h2>영화소식</h2>
            </div>
            <!-- 갤러리 영역 -->
            <div class="king-row">
                <!-- 1개 -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                    <a href="<%=request.getContextPath()%>/movie/MovieNewsDetail.jsp?time=<%=System.currentTimeMillis()%>" class="thumbnail">
                        <div class="row">
                            <!-- 이미지 영역 -->
                            <div class="col-sm-12 col-xs-3">
                                <img src="https://news.maxmovie.com/wp-content/uploads/2020/07/20200713_m_Wsj_1000013-490x700.jpg" class="img-responsive" />
                            </div>
                            <!-- 텍스트 영역 -->
                            <div class="col-sm-12 col-xs-9">
                                <h4>제목</h4>
                                <p>
                                    이 부분은 컨텐츠에 대한 내용이 들어가는 영역 입니다.
                                </p>
                                <!-- .text-right는 오른쪽 정렬 -->
                                <!-- .text-muted는 약간 회색으로 바뀜 -->
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
                                <img src="https://news.maxmovie.com/wp-content/uploads/2020/07/20200714_m_yi_100001.jpg" class="img-responsive" />
                            </div>
                            <!-- 텍스트 영역 -->
                            <div class="col-sm-12 col-xs-9">
                                <h4>제목</h4>
                                <p>
                                    이 부분은 컨텐츠에 대한 내용이 들어가는 영역 입니다.
                                </p>
                                <!-- .text-right는 오른쪽 정렬 -->
                                <!-- .text-muted는 약간 회색으로 바뀜 -->
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
                                <img src="https://news.maxmovie.com/wp-content/uploads/2020/07/20200710_m_wsj_1000001-700x466.jpg" class="img-responsive" />
                            </div>
                            <!-- 텍스트 영역 -->
                            <div class="col-sm-12 col-xs-9">
                                <h4>제목</h4>
                                <p>
                                    이 부분은 컨텐츠에 대한 내용이 들어가는 영역 입니다.
                                </p>
                                <!-- .text-right는 오른쪽 정렬 -->
                                <!-- .text-muted는 약간 회색으로 바뀜 -->
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
                                <img src="https://news.maxmovie.com/wp-content/uploads/2020/07/20200710_m_yi_100008.jpg" class="img-responsive" />
                            </div>
                            <!-- 텍스트 영역 -->
                            <div class="col-sm-12 col-xs-9">
                                <h4>제목</h4>
                                <p>
                                    이 부분은 컨텐츠에 대한 내용이 들어가는 영역 입니다.
                                </p>
                                <!-- .text-right는 오른쪽 정렬 -->
                                <!-- .text-muted는 약간 회색으로 바뀜 -->
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
                                <img src="https://news.maxmovie.com/wp-content/uploads/2020/07/20200713_m_Wsj_1000009-700x464.jpg" class="img-responsive" />
                            </div>
                            <!-- 텍스트 영역 -->
                            <div class="col-sm-12 col-xs-9">
                                <h4>제목</h4>
                                <p>
                                    이 부분은 컨텐츠에 대한 내용이 들어가는 영역 입니다.
                                </p>
                                <!-- .text-right는 오른쪽 정렬 -->
                                <!-- .text-muted는 약간 회색으로 바뀜 -->
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
                                <img src="https://news.maxmovie.com/wp-content/uploads/2020/07/20200713_m_yi_100002.jpg" class="img-responsive" />
                            </div>
                            <!-- 텍스트 영역 -->
                            <div class="col-sm-12 col-xs-9">
                                <h4>제목</h4>
                                <p>
                                    이 부분은 컨텐츠에 대한 내용이 들어가는 영역 입니다.
                                </p>
                                <!-- .text-right는 오른쪽 정렬 -->
                                <!-- .text-muted는 약간 회색으로 바뀜 -->
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
                                <img src="https://news.maxmovie.com/wp-content/uploads/2020/07/20200713_PJD_7855-700x467.jpg" class="img-responsive" />
                            </div>
                            <!-- 텍스트 영역 -->
                            <div class="col-sm-12 col-xs-9">
                                <h4>제목</h4>
                                <p>
                                    이 부분은 컨텐츠에 대한 내용이 들어가는 영역 입니다.
                                </p>
                                <!-- .text-right는 오른쪽 정렬 -->
                                <!-- .text-muted는 약간 회색으로 바뀜 -->
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
                                <img src="https://news.maxmovie.com/wp-content/uploads/2020/07/20200713_m_Wsj_1000004-467x700.jpg" class="img-responsive" />
                            </div>
                            <!-- 텍스트 영역 -->
                            <div class="col-sm-12 col-xs-9">
                                <h4>제목</h4>
                                <p>
                                    이 부분은 컨텐츠에 대한 내용이 들어가는 영역 입니다.
                                </p>
                                <!-- .text-right는 오른쪽 정렬 -->
                                <!-- .text-muted는 약간 회색으로 바뀜 -->
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <!-- 갤러리 8개 끝!!! -->

            <!--페이지 넘기기 -->
                    <div class="pagePass">
                    <ul class="pagination">
                        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                        <li class="page-item"><a class="page-link" href="#">5</a></li>
                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
                    </ul>
                    </div>

        </div>
    </div>
<!--// ========== 컨텐츠 영역 끝 ========== -->

<%@ include file="../_inc/footer.jsp"%>
