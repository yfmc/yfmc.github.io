/**
 *  페이지 이동을 구현한 javascript
 */

var totalData = 50;    // 총 데이터 수
var dataPerPage = 8;    // 한 페이지에 나타낼 데이터 수
var pageCount = 5;        // 한 화면에 나타낼 페이지 수

function pagePass(totalData, dataPerPage, pageCount, currentPage){
    
    console.log("currentPage : " + currentPage);
    
    var totalPage = Math.ceil(totalData/dataPerPage);   
    var pageGroup = Math.ceil(currentPage/pageCount);    
    
    console.log("pageGroup : " + pageGroup);
    
    var last = pageGroup * pageCount;    // 화면에 보여질 마지막 페이지 번호
    if(last > totalPage)
        last = totalPage;
    var first = last - (pageCount-1);    // 화면에 보여질 첫번째 페이지 번호
    var next = last+1;
    var prev = first-1;
    
    console.log("last : " + last);
    console.log("first : " + first);
    console.log("next : " + next);
    console.log("prev : " + prev);

    //var $pingingView = $("#pagePass");
    
    var html = "";
    
    if(prev > 0)
        html += '<a href="../movie/MovieNews2.jsp" id="prev"><</a> ';
        
    
    for(var i=first; i <= last; i++){
        html += "<a href=../movie/MovieNews"+i+".jsp"+" "+"id=" + i + ">" + i + "</a> ";
    }
    
    
    if(last < totalPage)
        html += "<a href=../movie/MovieNews6.jsp"+" "+"id=next>"+">"+"</a>";
    
    $("#pagePass").html(html);    // 페이지 목록 생성
    $("#pagePass a").css("color", "black");
    $("#pagePass a#" + currentPage).css({"text-decoration":"none", 
                                       "color":"red"
                                       });    // 현재 페이지 표시
                                       
    $("#pagePass a").click(function(){
        
        var $item = $(this);
        var $id = $item.attr("id");
        var selectedPage = $item.text();
        
        if($id == "next")    selectedPage = next;
        if($id == "prev")    selectedPage = prev;
        
        pagePass(totalData, dataPerPage, pageCount, selectedPage);
    });
                                       
}

$(document).ready(function(){        
    pagePass(totalData, dataPerPage, pageCount, 4);
});