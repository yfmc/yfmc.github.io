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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/admin_detail.css" >
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
            </div>
            <!-- /.row -->
            <div class="row">
            	<table class="detail_content">
                    <thead>
                        <tr class="detail_title">
                            <th style="width:10%;">번호 24</th>
                            <th style="width:auto;">바람의 나라 재밌음</th>
                            <th style="width:10%;">마이클 장</th>
                            <th style="width:10%;">2020.08.04</th>
                            <th style="width:15%;">답변 여부 : 미답변</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<tr class="qna_contents">
                    		<td colspan="5">
                    			영화 재미없어요 바람의나라 하세요<br />
                    			영화 재미없어요 바람의나라 하세요<br />
                    			영화 재미없어요 바람의나라 하세요<br />
                    			영화 재미없어요 바람의나라 하세요<br />
                    			영화 재미없어요 바람의나라 하세요<br />
                    			영화 재미없어요 바람의나라 하세요<br />
                    		</td>
                    	</tr>	
                    	<tr class="qna_answer">
                    		<td colspan="5">
                    			=답변내용=<br />
                    			바람의 나라 너나 하세요<br />
                    			바람의 나라 너나 하세요<br />
                    			바람의 나라 너나 하세요<br />
                    			바람의 나라 너나 하세요<br />
                    			바람의 나라 너나 하세요<br />
                    		</td>
                    	</tr>	
                    </tbody>
                </table>
                <div class="list_button pull-right">
                        <a href="<%=request.getContextPath()%>/admin/admin_qna_list.jsp" class=" btn btn-success pull-right">목록으로</a>
                </div>
            </div>
        </div>
    </div>
    <script src="https://kit.fontawesome.com/2de30be98d.js" crossorigin="anonymous"></script>
	<script src='https://code.jquery.com/jquery-3.5.1.min.js'></script>
	<script src="https://stackpath.bootstracdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
	<script type="text/javascript" src="../plugins/datatables/datatables.min.js"></script>
	
    
</body>

</html>