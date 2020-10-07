<!-- 자주가는 영화관 목록 정의 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<meta http-equiv="refresh" content="60">
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>자주 가는 영화관 설정하기</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Montserrat+Subrayada:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/tagsinput/jquery-tagsinput.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/oftentheater.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <title>자주가는 영화관 설정</title>
</head>

<body>
	
	<c:forEach var="item" items="${output2}" varStatus="status">
	<input type="hidden" class="th${status.index}" value="${item.brand} ${item.branch}"/>
	
	</c:forEach>
	
	
    <div id="container">
    	<div class="up">
        	<h3>자주가는 영화관 설정하기</h3>
        </div>
        <div class="search">
        	<!-- 영화관 검색 폼 -->
            <form method="get" action="${pageContext.request.contextPath}/mypage/oftentheater.do">
                <fieldset>
                    <legend>영화관 검색(지점이름으로 검색)</legend>
                    <label for="region">&nbsp;&nbsp;&nbsp;지역</label>
                    <select name="region" id="region">
                        <option value="10">서울</option>
                        <option value="20">경기</option>
                        <option value="30">인천</option>
                        <option value="40">강원</option>
                        <option value="50">대전</option>
                        <option value="60">충청/세종</option>
                        <option value="70">광주</option>
						<option value="80">전라</option>
                        <option value="90">대구/경북</option>
                        <option value="100">부산/울산</option>
                        <option value="110">경남</option>
                        <option value="120">제주</option>
                    </select>
                    <!-- 브랜드 선택 -->
                    <label for="brand"> &nbsp;브랜드</label>
                    <select name="brand" id="brand">
                        <option value="CGV">CGV</option>
                        <option value="메가박스">메가박스</option>
                        <option value="롯데시네마">롯데시네마</option>
                    </select>
                    <!-- 지역 선택 -->
                    
                    <label for="keyword">&nbsp;&nbsp;영화관</label>
                    <input type="search" id="keyword" name="keyword" style="width:150px;" />
                    <button type="submit" class="inserttheater" style="margin-left:2px;">검색</button>
                </fieldset>
            </form>
        </div>
        <br/>
        <h5>영화관 목록</h5>
        <table class="table table-striped table-hover">
        <thead class="thead-light">
        	<tr>
        		<th width="220" class="text-center">지점명</th>
        		<th width="400" class="text-center">주소</th>
        		<th width="90" class="text-center">상영관수</th>
        		<th width="75" class="text-center">추가</th>
        	</tr>
        </thead>
        <tbody>
        	<c:choose>
        		<c:when test="${output==null||fn:length(output)==0}">
        			<tr>
        				<td colspan="4" align="center">조회결과가 없습니다.</td>
        			</tr>
        		</c:when>
        		<c:otherwise>
        			<c:forEach var="item" items="${output}" varStatus="status">
        				<c:set var="full_name" value="${item.full_name}"/>
        				<c:if test="${keyword!=''}">
        					<c:set var="mark" value="<mark>${keyword}</mark>"/>
        					<c:set var="full_name" value="${fn:replace(full_name,keyword,mark)}"/>
        				</c:if>
        				<tr>
        					<td align="center">${full_name}</td>
        					<td align="center">${item.new_addr}</td>
        					<td align="center">${item.rooms}</td>
        					<td align="center"><a class="favtheater_add" href="fav_theater_add.do?theater_id=${item.theater_id}">추가</a></td>
        				</tr>
        			</c:forEach>
        		</c:otherwise>
        	</c:choose>
        </tbody>
        </table>
        <c:choose>
	        <c:when test="${output==null||fn:length(output)==0}">
	        </c:when>
        <c:otherwise>
        <!--  페이지 넘김 -->
		<div id="page">
                  <div class="row">
                      <div class="col">
                      <ul class="pagination">
                         <c:choose>
						<c:when test="${pageData.prevPage>0}">
							<c:url value="/mypage/oftentheater.do" var="prevPageUrl">
								<c:param name="region" value="${input.prov_no}"/>
								<c:param name="brand" value="${input.brand}"/>
								<c:param name="page" value="${pageData.prevPage}"/>
							</c:url>
							<li class="page-item"><a class="page-link" href="${prevPageUrl}">이전</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link">이전</a></li>
						</c:otherwise>
					</c:choose>
					
					<c:forEach var="i" begin="${pageData.startPage}" end="${pageData.endPage}" varStatus="status">
						<c:url value="/mypage/oftentheater.do" var="pageUrl">
							<c:param name="region" value="${input.prov_no}"/>
							<c:param name="brand" value="${input.brand}"/>
							<c:param name="page" value="${i}"/>
						</c:url>
						<c:choose>
							<c:when test="${pageData.nowPage ==i}">
								<li class="page-item page-link"><a class="page-link" style="background-color:#eee;"><strong class="thispage">${i}</strong></a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a class="page-link" href="${pageUrl}">${i}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>

					<c:choose>
						<c:when test="${pageData.nextPage>0}">
							<c:url value="/mypage/oftentheater.do" var="nextPageUrl">
								<c:param name="region" value="${input.prov_no}"/>
								<c:param name="brand" value="${input.brand}"/>
								<c:param name="page" value="${pageData.nextPage}"/>
							</c:url>
								<li class="page-item"><a class="page-link" href="${nextPageUrl}">다음</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item page-link"><a class="page-link">다음</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
                </div>
            </div>
        </div>
        </c:otherwise>
        </c:choose>
        <!-- 자주가는 영화관 목록 -->
        <div class="theaterlist">
            <legend>자주가는 영화관 목록</legend>
			<input data-role="tags-input" value="tagsinput" hidden="hidden" data-rendered="true">
			<div class="tags-container form-control">
				<c:forEach var="item" items="${output2}" varStatus="status">
				<div class="tag badge badge-primary">
					<span>${item.brand}&nbsp;${item.branch}</span><i class="tag-remove"><a class="del" href="fav_theater_delete.do?theater_id=${item.theater_id}">✖</a></i>
				</div>
				</c:forEach>
			</div>
		</div>

		<button type="button" class="btn btn-success closebtn">닫기</button>

		 <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/tagsinput/jquery-tagsinput.min.js" defer></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script type="text/javaScript">
		$(document).on("click",".closebtn",function(){
			opener.parent.location.reload();
			window.close();
		});
		
		</script>
   </div>
</body>

</html>