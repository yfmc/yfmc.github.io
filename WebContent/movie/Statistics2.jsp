<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/Statistics2.css?time=<%=System.currentTimeMillis()%>">.css">
<title>통계2 | Cinephile</title>
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
                    <a href="#">통계</a> 
                </li>
                
            </ul>
        </div>
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
<!--// ========== 컨텐츠 영역 끝 ========== -->
<%@ include file="../_inc/footer.jsp"%>