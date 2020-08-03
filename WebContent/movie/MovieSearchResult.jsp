<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/MovieSearchResult.css?time=<%=System.currentTimeMillis()%>">
<title>영화검색결과 | Cinephile</title>
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
                    		<a href="<%=request.getContextPath()%>/movie/MovieNews.jsp?time=<%=System.currentTimeMillis()%>">영화소식</a> 
                		</li>
                		<li>
                    		<a href="<%=request.getContextPath()%>/movie/Statistics1.jsp?time=<%=System.currentTimeMillis()%>">통계</a> 
                		</li>
                </ul>
            </div>
            <!-- 영화 검색 조건 -->
            <div class="form-group form-inline">
                <!-- .constrol-tabel은 label태그에 들어가는 속성이다. -->
                <div class="col-sm-10 form-search">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" name="mycheckbox" id="checkbox1" value="" />
                            영화명
                        </label>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" name="mycheckbox" id="checkbox2" value="" />
                            장르
                        </label>
                    </div>
                    <!-- 사용 못하게 막으려면 .disabled -->
                    <div class="checkbox">
                        <label>
                            <!-- 사용 못하게 막으려면 .disabled -->
                            <input type="checkbox" name="mycheckbox" id="checkbox3" value=""/>
                            감독명
                        </label>
                    </div>
                    <div class="checkbox">
                        <label>
                            <!-- 사용 못하게 막으려면 .disabled -->
                            <input type="checkbox" name="mycheckbox" id="checkbox4" value=""/>
                            배우명
                        </label>
                    </div>
                </div>
            </div>
            <!-- 검색 조건 고르기 끝 -->
            <div class="search">
        <div class="page-header">
            <h1>
                검색하기<br/>
            </h1>
        </div>
			<form>
            	<div class="input-group">
              		<input type="text" class="form-control"     placeholder="검색창">
             			<span class="input-group-btn">
                    		<button class="btn btn-default">
                    	<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                			</button>
                		</span>
            	</div>
            </form>
            </div>
            <!-- 검색결과가 몇건인지 확인하기 -->
            <div class="search-result">
            <span>
            	<h4>"OOO"(으)로 총 n개의 검색결과가 있습니다.</h4>
            	<hr/>
            </span>
            </div>
            <!-- 검색결과 보여주기 -->
            <div class="king-row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                <a href="#" class="thumbnail">
                    <div class="row">
                        <!-- 이미지 영역 -->
                        <div class="col-sm-12 col-xs-3">
                        <span>
                            <img src="../img/you.jpeg" width="260" height="195" />
                            </span>
                        </div>
                        <!-- 텍스트 영역 -->
                        <div class="col-sm-12 col-xs-9">
                        <span>
                            <h4>제목</h4>
                            </span>
                          </div>
                    </div>
                </a>
            </div>
            <!-- 2개-->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <!-- .thumbnail은 박스에 회색 테두리를 쳐준다. -->
                <a href="#" class="thumbnail">
                    <div class="row">
                        <!-- 이미지 영역 -->
                        <div class="col-sm-12 col-xs-3">
                        <span>
                            <img src="../img/you2.jpg" width="260" height="195" />
                            </span>
                        </div>
                        <!-- 텍스트 영역 -->
                        <div class="col-sm-12 col-xs-9">
                        <span>
                            <h4>제목</h4>
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
                            <img src="../img/you3.jpg" width="260" height="195"/>
                            </span>
                        </div>
                        <!-- 텍스트 영역 -->
                        <div class="col-sm-12 col-xs-9">
                        <span>
                            <h4>제목</h4>
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
                            <img src="../img/you4.jpg" width="260" height="195"/>
                            </span>
                        </div>
                        <!-- 텍스트 영역 -->
                        <div class="col-sm-12 col-xs-9">
                        <span>
                            <h4>제목</h4>
                            </span>
                          </div>
                    </div>
                </a>
            </div>
            </div>
        </div>
    </div>
<!--// ========== 컨텐츠 영역 끝 ========== -->
<%@ include file="../_inc/footer.jsp"%>