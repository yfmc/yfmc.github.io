<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/admin_header.jsp" %>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">공지사항</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="notice_list panel panel-default">
                        <div class="panel-heading">
                            공지사항 관리
                            <a href="<%=request.getContextPath()%>/admin/admin_notice_write.jsp" class="write btn btn-success pull-right">글쓰기</a>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table_notice_list">
                                    <thead>
										<tr>
											<th style="width: 10%;">번호</th>
											<th style="width: auto;">제목</th>
											<th style="width: 15%;">등록일</th>
											<th style="width: 15%;">조회수</th>
											<th style="width: 10%;">수정 / 삭제</th>
										</tr>
									</thead>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	<script type="text/javascript" src="../plugins/datatables/datatables.min.js"></script>
	<script type="text/javascript">
		$(function(){ 
			    
			$(".table_notice_list").DataTable({
				ajax: {
					type:"POST",
					url: '../api/notice_list.json',
					dataType:"JSON"
					},
				columns: [
					{data: "notice_no"},
					{data: "notice_title"},
					{data: "date"},
					{data: "views"},
					{data: null,
		             className: "center",
		             defaultContent: '<a href="" class="edit">수정</a> / <a href="" class="remove">삭제</a>'
		            }
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
			
		    // 수정버튼 기능
		    $('.table_notice_list').on( 'click', 'a.edit', function (e) {
		        e.preventDefault();
		 
		    } );
		 
		    // 삭제버튼 기능
		    $('.table_notice_list').on( 'click', 'a.remove', function (e) {
		        e.preventDefault();
		 		
		        $(this).parents("tr").remove();
		        
		    });
		});
	</script>
    
<%@ include file="../_inc/admin_footer.jsp" %>