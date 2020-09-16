<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/admin_header.jsp" %>
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
                    <div class="qna_list panel panel-default">
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
	<script type="text/javascript" src="../assets/plugins/datatables/datatables.min.js"></script>
	<script type="text/javascript">
		$(function(){ 
			$(".table_qna_list").DataTable({
				ajax: {
					type:"POST",
					url: '../api/qna_list.json',
					dataType:"JSON"
				},
				columns: [
					{data: "qna_no"},
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
				// 초기 화면 글 번호 내림차순
				order: [[0, "desc"]],
				pagingType : "full_numbers"
			}); 
		}); 
	</script>
    
<%@ include file="../_inc/admin_footer.jsp" %>