<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/Statistics2.css?time=<%=System.currentTimeMillis()%>">
<title>통계2 | Cinephile</title>
<!-- ========== 컨텐츠 영역 시작 ========== -->
<div class="contentHeight">
        <div class="content">
            <!-- 통계 전체 부분 -->
            <!-- 통계시작 -->
            <div class="statistics">
                <h2>통계</h2>
			<form>
            <div class="form-group statistics-check">
                <div class="col-sm-10">
                    <label class="radio-inline">
                        <input type="radio" name="myradio" id="radio1" value="" />
                        박스오피스 순위
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="myradio" id="radio2" value="" checked />
                        최근 일주일 영화별 관람객 수
                    </label>
                </div>
            </div>
            
            <!-- 통계자료 사진 넣기 -->
            <span>
                <img src="../img/주간주말박스오피스관객수.png" alt="주간주말박스오피스곤객수">
            </span>
            <!-- 통계자료 끝 -->
            </form>
            </div>
            <!-- 통계끝 -->
        </div>
    </div>

<!-- side바 -->

	<div class="icon-bar">
  		<a href="<%=request.getContextPath()%>/movie/nowMoving.jsp?time=<%=System.currentTimeMillis()%>" class="side-boxoffice"><i class="fas fa-film"></i><b>박스오피스</b></a> 
  		<a href="<%=request.getContextPath()%>/movie/MovieSearch.jsp?time=<%=System.currentTimeMillis()%>" class="side-moviesearch"><i class="fas fa-search"></i><b>영화검색</b></a> 
 		 <a href="<%=request.getContextPath()%>/movie/MovieNews1.jsp?time=<%=System.currentTimeMillis()%>" class="side-movienews"><i class="far fa-file-alt"></i><b>영화소식</b></a> 
  		<a href="<%=request.getContextPath()%>/movie/Statistics1.jsp?time=<%=System.currentTimeMillis()%>" class="side-statistics"><i class="fas fa-chart-bar"></i><b>통계</b></a>
	</div>
<!--// ========== 컨텐츠 영역 끝 ========== -->
<%@ include file="../_inc/footer.jsp"%>