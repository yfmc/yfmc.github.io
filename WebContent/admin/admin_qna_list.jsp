<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>1:1문의관리 | 관리자 페이지</title>
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css" >
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.min.css" >
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/admin.css" >
    <link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/datatables/datatables.min.css" >
</head>

<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.html">Cinephile 관리자</a>
            </div>
            <ul class="nav navbar-top-links navbar-right">
                <li class="divider"></li>
                <li><a href="<%=request.getContextPath()%>/admin/admin_login.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                </li>
            </ul>
            <div class="navbar-default navbar-static-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="<%=request.getContextPath()%>/admin/admin_qna.jsp">1:1문의 관리</a>
                        </li>
                        <li>
                            <a href="#">회원 관리</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">1:1문의</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            1:1 문의 관리
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table_qna_list">
                                    <thead>
                                        <tr>
                                            <th style="width:10%;">번호</th>
                                            <th style="width:auto;">제목</th>
                                            <th style="width:10%;">작성자</th>
                                            <th style="width:10%;">작성일</th>
                                            <th style="width:10%;">답변 여부</th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://kit.fontawesome.com/2de30be98d.js" crossorigin="anonymous"></script>
	<script src='https://code.jquery.com/jquery-3.5.1.min.js'></script>
	<script src="https://stackpath.bootstracdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
	<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript">
		$(function(){ 
			$(".table_qna_list").DataTable({
				ajax: {
					type:"POST",
					url: '../api/qna_list.json',
					dataType:"JSON"
				},
				columns: [
					{data: "qnano"},
					{data: "qna_title"},
					{data: "user_name"},
					{data: "date"},
					{data: "answer"}
				],
				// 표시 건수기능
				lengthChange: true,
				// 기본 표시 건수 20건
				displayLength: 20,
				// 표시 건수 10건 단위로 설정
				lengthMenu: [20, 40, 60],
				// 검색 기능
				searching: true,
				// 정렬 기능
				ordering: true,
				// 정보 표시
				info: true,
				// 페이징 기능
				paging: true,
				// 현재 상태 유지
				stateSave:true,
				// 초기 화면 글 번호 내림차순
				order: [[0, "desc"]],
				pagingType : "full_numbers"
			}); 
		}); 
	</script>
    
</body>

</html>