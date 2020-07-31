<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page trimDirectiveWhitespaces="true" %>

<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/MovieSearch.css?time=<%=System.currentTimeMillis()%>">
<title>영화검색 | Cinephile</title>
<!-- ========== 컨텐츠 영역 시작 ========== -->

<div class="contentHeight">

        <div class="content">

            <div class="content1">

                    <ul>

                        <li>
                		    <a href="<%=request.getContextPath()%>/movie/nowMoving.jsp?time=<%=System.currentTimeMillis()%>">박스오피스</a> 
                		</li>
                		<li>
                    		<a href="#">영화검색</a> 
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

              <input type="text" class="form-control"placeholder="검색창">

             	<span class="input-group-btn">

                    <button class="btn btn-default">

                    <span class="glyphicon glyphicon-search" aria-hidden="true"></span>

                	</button>

                </span>

            </div>

       </form>

            </div>

        </div>

    </div>

<!--// ========== 컨텐츠 영역 끝 ========== -->

<%@ include file="../_inc/footer.jsp"%>