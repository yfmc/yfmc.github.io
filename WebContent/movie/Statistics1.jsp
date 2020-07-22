<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/Statistics1.css">

<!-- ========== 컨텐츠 영역 시작 ========== -->
<div class="contentHeight">
        <div class="content">
            <div class="content1">
                <ul>
                    <li>
                        <button type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false">
                            박스오피스
                        </button>
                    </li>
                    <li>
                        <button type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false">
                            영화검색
                        </button>
                    </li>
                    <li>
                        <button type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false">
                            영화소식
                        </button>
                    </li>
                    <li>
                        <button type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false">
                            통계
                        </button>
                    </li>
                </ul>
            </div>
            <!-- 통계 전체 부분 -->
            <!-- 통계시작 -->
            <div class="statistics">
                <h2>통계</h2>

            <div class="form-group statistics-check">
                <div class="col-sm-10">
                    <label class="radio-inline">
                        <input type="radio" name="myradio" id="radio1" value="" checked/>
                        박스오피스 순위
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="myradio" id="radio2" value="" />
                        최근 일주일 영화별 관람객 수
                    </label>
                </div>
            </div>
            <!-- 통계자료 사진 넣기 -->
            <span>
                <img src="../img/일별박스오피스관객수.png" alt="일별 박스오피스 순위">
            </span>
            <!-- 통계자료 끝 -->
            </div>
            <!-- 통계끝 -->
        </div>
    </div>
<!--// ========== 컨텐츠 영역 끝 ========== -->
<%@ include file="../_inc/footer.jsp"%>