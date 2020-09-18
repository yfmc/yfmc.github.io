<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/admin_header.jsp" %>
        <div id="page-wrapper">
            <div class="row">
                    <h1 class="page-header">Cinephile 관리자 페이지</h1>
            </div>   
            <div class="row"> 
	                <div class="unanswer_list panel panel-default">
		                <div class="panel-heading">
		                            1:1문의 미답변 목록
		                            <a href="<%=request.getContextPath()%>/admin/admin_qna_list.do" class="more pull-right">더보기 > </a>
		                </div>
		                <div class="panel-body">
			            	<table class="table table-striped table-bordered unanswer_table">
			                	<thead>
			                		<tr>
			                			<th style="width: 10%;">번호</th>
			                			<th style="width: auto;">제목</th>
			                			<th style="width: 15%;">작성자</th>
			                			<th style="width: 15%;">작성일</th>
			                		</tr>
			                		<tr>
			                			<td>10</td>
			                			<td>1:1문의</td>
			                			<td>마이클 장</td>
			                			<td>2020.08.10</td>
			                		</tr>
			                		<tr>
			                			<td>9</td>
			                			<td>1:1문의</td>
			                			<td>마이클 장</td>
			                			<td>2020.08.10</td>
			                		</tr>
			                		<tr>
			                			<td>8</td>
			                			<td>1:1문의</td>
			                			<td>마이클 장</td>
			                			<td>2020.08.10</td>
			                		</tr>
			                	</thead>
			            	</table>
		                </div>
		            </div>
		            <div class="notice_list_pre panel panel-default">
		                <div class="panel-heading">
		                            공지사항 목록
		                            <a href="<%=request.getContextPath()%>/admin/admin_notice_list.do" class="more pull-right">더보기 > </a>
		                </div>
		                <div class="panel-body">
			            	<table class="table table-striped table-bordered unanswer_table">
			                	<thead>
			                		<tr>
			                			<th style="width: 10%;">번호</th>
			                			<th style="width: auto;">제목</th>
			                			<th style="width: 15%;">작성일</th>
			                			<th style="width: 15%;">조회수</th>
			                		</tr>
			                		<tr>
			                			<td>10</td>
			                			<td>공지사항 10</td>
			                			<td>2020.08.10</td>
			                			<td>1234</td>
			                		</tr>
			                		<tr>
			                			<td>9</td>
			                			<td>공지사항 9</td>
			                			<td>2020.08.10</td>
			                			<td>1234</td>
			                		</tr>
			                		<tr>
			                			<td>8</td>
			                			<td>공지사항 8</td>
			                			<td>2020.08.10</td>
			                			<td>1234</td>
			                		</tr>
			                	</thead>
			            	</table>
		                </div>
		            </div>
		            <div class="booking_sales panel panel-default">
		                <div class="panel-heading">
		                            매출액
		                </div>
		                <div class="panel-body">
			            	<canvas id="booking_sales" >
	                		</canvas>
		                </div>
		            </div>
		            <div class="booking_count panel panel-default">
		                <div class="panel-heading">
		                            예매수
		                </div>
		                <div class="panel-body">
			            	<canvas id="booking_count" >
	                		</canvas>
		                </div>
		            </div>
	            </div>
	        </div>
    
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.bundle.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
	<script type="text/javascript" src="../assets/plugins/datatables/datatables.min.js"></script>
	<script type="text/javascript">
		var ctx = document.getElementById('booking_count');
		var myChart = new Chart(ctx, {
		    type: 'line',
		    data: {
		        labels: ['일', '월', '화', '수', '목', '금','토'],
		        datasets: [{
		            label: '일별 예매 수',
		            data: [12, 19, 3, 5, 2, 3, 20],
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)',
		                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255, 99, 132, 1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
		                'rgba(153, 102, 255, 1)',
		                'rgba(255, 159, 64, 1)',
		                'rgba(255, 159, 64, 1)'
		            ],
		            borderWidth: 1
		        }]
		    },
		    options: {
		        scales: {
		            yAxes: [{
		                ticks: {
		                    beginAtZero: true
		                }
		            }]
		        }
		    }
		});
		var ctx = document.getElementById('booking_sales');
		var myChart = new Chart(ctx, {
		    type: 'line',
		    data: {
		        labels: ['일', '월', '화', '수', '목', '금','토'],
		        datasets: [{
		            label: '매출액',
		            data: [12, 19, 3, 5, 2, 3, 20],
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 1)',
		                'rgba(255, 159, 64, 1)'
		            ],
		            borderColor: [
		                'rgba(255, 99, 132, 1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
		                'rgba(153, 102, 255, 1)',
		                'rgba(255, 159, 64, 1)',
		                'rgba(255, 159, 64, 1)'
		            ],
		            borderWidth: 1
		        }]
		    },
		    options: {
		        scales: {
		            yAxes: [{
		                ticks: {
		                    beginAtZero: true
		                }
		            }]
		        }
		    }
		});
	</script>
<%@ include file="../_inc/admin_footer.jsp" %>