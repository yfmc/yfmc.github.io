<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/Statistics.css?time=<%=System.currentTimeMillis()%>">
<meta charset="utf-8" />
<title>통계 | Cinephile</title>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.css" />
<!-- ========== 컨텐츠 영역 시작 ========== -->
<div class="contentHeight">
	<div class="content">
		<!-- 통계 전체 부분 -->
		<!-- 통계시작 -->
		<div class="statistics">
			<h2>통계</h2>
			<form name="statistics_form" method="get"
				action="${pageContext.request.contextPath}/movie/Statistics.do">
				<input type="hidden" id="date" name="date" value="${date}" /> <input
					type="hidden" value="검색하기" />
				<div class="form-group statistics-check">
					<div class="statistics-radio">
						<label class="radio-inline"> <input type="radio"
							name="myradio" id="radio1" value="radio1" checked /> 박스오피스 순위
						</label> <label class="radio-inline"> <input type="radio"
							name="myradio" id="radio2" value="radio2" /> 최근 일주일 영화별 관람객 수
						</label>

					</div>
				</div>
				<!-- 통계자료 끝 -->
			</form>
			<!-- 통계자료 사진 넣기 -->
			<span> <!--<div style="display:display" id="chart-text" class="chart-text">
            <p>원하는 통계값을 선택해주세요.(일별/주간)</p>
            </div>-->
				<div style="height: 600px; display: none;" id="chart1">
					<canvas id="myChart"></canvas>
				</div>
				<div style="height: 600px; display: none;" id="chart2">
					<canvas id="myChart2"></canvas>
				</div>
			</span>
		</div>

		<!-- 통계끝 -->
	</div>
</div>

<!-- side바 -->

<div class="icon-bar">
	<a
		href="${pageContext.request.contextPath}/assets/movie/nowMoving.do?time=<%=System.currentTimeMillis()%>"
		class="side-boxoffice"><i class="fas fa-film"></i><b>박스오피스</b></a> 
	<a href="${pageContext.request.contextPath}/assets/movie/MovieSearch.do?time=<%=System.currentTimeMillis()%>"
		class="side-moviesearch"><i class="fas fa-search"></i><b>영화검색</b></a>
	<a
		href="${pageContext.request.contextPath}/assets/movie/MovieNews1.do?time=<%=System.currentTimeMillis()%>"
		class="side-movienews"><i class="far fa-file-alt"></i><b>영화소식</b></a>
	<a
		href="${pageContext.request.contextPath}/assets/movie/Statistics.do?time=<%=System.currentTimeMillis()%>"
		class="side-statistics"><i class="fas fa-chart-bar"></i><b>통계</b></a>
</div>
<!--// ========== 컨텐츠 영역 끝 ========== -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
<script>
	
	//document.statistics_form.myradio[0].checked
	//$("input:radio[name=myradio]").click(function(){
	$(document).ready(function(){
		var aa = document.statistics_form.myradio[0].checked;
		console.log(aa);
		
		var ctx = document.getElementById("myChart").getContext('2d');
		var ctx2 = document.getElementById("myChart2").getContext('2d');
		
		var tmp = document.getElementById("chart1");
		var tmp2 = document.getElementById("chart2");
		//var tmp3 = document.getElementById("chart-text");
		
		if(aa){
			$("#radio1").attr("checked",true);
			$("#radio2").attr("checked",false);
			
			if(tmp.style.display == 'none'){
				tmp.style.display = 'block';
				tmp2.style.display = 'none';
				//tmp3.style.display = 'none';
			}else{
				tmp.style.display = 'block';
				tmp2.style.display = 'none';
				//tmp3.style.display = 'none';
			}
			var myChart = new Chart(ctx,{
				type: 'bar',
			    data: {
			    	labels: [${movieNmStr}],
			        datasets: [{
			            label: '${date} 박스오피스',
			            data: [${audiCntStr}],
			        	backgroundColor: 'rgba(255, 21, 0, 0.2)', // 각 bar의 배경 색상
			        	borderColor: 'rgba(255, 21, 0, 1)',       // 각 bar의 테두리 색상
			        	borderWidth: 1         
			        }]
			    }
			});
		}
		
		$(document).click(function(){
		if(document.statistics_form.myradio[0].checked){
			
			$("#radio1").attr("checked",true);
			$("#radio2").attr("checked",false);
			
			if(tmp.style.display == 'none'){
				tmp.style.display = 'block';
				tmp2.style.display = 'none';
				//tmp3.style.display = 'none';
			}else{
				tmp.style.display = 'block';
				tmp2.style.display = 'none';
				//tmp3.style.display = 'none';
			}
			var myChart = new Chart(ctx,{
				type: 'bar',
			    data: {
			    	labels: [${movieNmStr}],
			        datasets: [{
			            label: '일별 박스오피스',
			            data: [${audiCntStr}],
			        	backgroundColor: 'rgba(255, 21, 0, 0.2)', // 각 bar의 배경 색상
			        	borderColor: 'rgba(255, 21, 0, 1)',       // 각 bar의 테두리 색상
			        	borderWidth: 1         
			        }]
			    }
			});
			
		}
		else if(document.statistics_form.myradio[1].checked){
			
			$("#radio1").attr("checked",false);
			$("#radio2").attr("checked",true);
			
			if(tmp2.style.display == 'none'){
				tmp2.style.display = 'block';
				tmp.style.display = 'none';
				//tmp3.style.display = 'none';
			}else{
				tmp2.style.display = 'block';
				tmp.style.display = 'none';
				//tmp3.style.display = 'none';
			}
			
			var myChart = new Chart(ctx2,{
				type: 'bar',
			    data: {
			    	labels: [${movieNmStr2}],
			        datasets: [{
			            label: '주간 박스오피스',
			            data: [${audiCntStr2}],
			        	backgroundColor: 'rgba(67, 38, 255, 0.2)', // 각 bar의 배경 색상
			        	borderColor: 'rgba(67, 38, 255, 1)',       // 각 bar의 테두리 색상
			        	borderWidth: 1         
			        }]
			    }
			});
		}
		});
	});	
		
	//});

</script>
<%@ include file="../_inc/footer.jsp"%>