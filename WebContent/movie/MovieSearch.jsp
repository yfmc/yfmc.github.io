<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page trimDirectiveWhitespaces="true" %>

<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/MovieSearch.css?time=<%=System.currentTimeMillis()%>">
<title>영화검색 | Cinephile</title>
<!-- ========== 컨텐츠 영역 시작 ========== -->
<form class="movie-search">
        <h2>좋아하는 영화, 보고싶은 영화를 <span>Cinephile</span>에서 찾아보세요!</h2>
        <table cellpadding="0">
            <tr>
                <div class="input-group search-input">  
                <th colspan="2">영화검색</th>
                <td style="width:139px;">
                    <span class="input-group-btn">
                        <select name='choose' class='form-control' style="width:100%;">
                            <option value="">전체선택</option>
                            <option value="">영화명</option>
                            <option value="">배우명</option>
                            <option value="">감독명</option>
                        </select>
                    </span>
                </td>
                <td>
                    <input type="text" class="form-control" placeholder="키워드를 입력해주세요" style="width:80%;">
                </td>
                </div>
            </tr>
            <!-- 장르선택 -->
            <tr>
                <th colspan="2">장르</th>
                <td colspan="2">
                    <ul>
                    <li><input type="checkbox" name="all_genre"><label for="">전체</label></li>
                    <li><input type="checkbox" name="genre"><label for="">가족</label></li>
                    <li><input type="checkbox" name="genre"><label for="">공포/호러</label></li>
                    <li><input type="checkbox" name="genre"><label for="">드라마</label></li>
                    <li><input type="checkbox" name="genre"><label for="">SF</label></li>
                    <li><input type="checkbox" name="genre"><label for="">멜로/로맨스</label></li>
                    <li><input type="checkbox" name="genre"><label for="">느와르</label></li>
                    <li><input type="checkbox" name="genre"><label for="">범죄</label></li>
                    <li><input type="checkbox" name="genre"><label for="">학원물</label></li>
                    <li><input type="checkbox" name="genre"><label for="">기타</label></li>
                </ul>
            </td>
            <td></td>
            </tr>
            <!-- 제작국가 -->
            <tr>
                <th colspan="2">제작국가</th>
                <td colspan="2">
                    <ul>
                        <li><input type="checkbox" name="all_nation"><label for="">전체</label></li>
                        <li><input type="checkbox" name="nation"><label for="">한국</label></li>
                        <li><input type="checkbox" name="nation"><label for="">미국</label></li>
                        <li><input type="checkbox" name="nation"><label for="">일본</label></li>    
                    </ul>
                </td>
                <td></td>
            </tr>
            <!-- 제작년도 -->
            <tr>
                <th colspan="2">
                    	제작년도
                </th>
                <td colspan="2">
                	<div class="slidecontainer">
  						<input type="range" min="1" max="100" value="50" class="slider" id="myRange" style="width:80%;">
					</div>
                </td>
                <td></td>
            </tr>
        </table>
		
		<div class="search-button">
        	<button type="button" class="round inred">
            	검색
        	</button>
        	<button type="reset">
            	초기화
        	</button>
        </div>
    </form>

    



<div class="icon-bar">
  		<a href="<%=request.getContextPath()%>/movie/nowMoving.jsp?time=<%=System.currentTimeMillis()%>" class="side-boxoffice"><i class="fas fa-film"></i><b>박스오피스</b></a> 
  		<a href="<%=request.getContextPath()%>/movie/MovieSearch.jsp?time=<%=System.currentTimeMillis()%>" class="side-moviesearch"><i class="fas fa-search"></i><b>영화검색</b></a> 
 		 <a href="<%=request.getContextPath()%>/movie/MovieNews.jsp?time=<%=System.currentTimeMillis()%>" class="side-movienews"><i class="far fa-file-alt"></i><b>영화소식</b></a> 
  		<a href="<%=request.getContextPath()%>/movie/Statistics1.jsp?time=<%=System.currentTimeMillis()%>" class="side-statistics"><i class="fas fa-chart-bar"></i><b>통계</b></a>
	</div>
<!--// ========== 컨텐츠 영역 끝 ========== -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        
    </script>

<%@ include file="../_inc/footer.jsp"%>