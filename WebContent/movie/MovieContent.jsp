<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="../_inc/header.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/MovieContent.css?time=<%=System.currentTimeMillis()%>">
<title>영화상세페이지 | Cinephile</title>
<!-- ========== 컨텐츠 영역 시작 ========== -->
<!-- 내용 부분 시작 -->
    <div class="container">
    <div class="movie-poster">
   		    <span>
            	<img src="<%=request.getContextPath()%>/img/you.jpeg" alt="영화포스터" class="img-rounded"/>
            </span>
            <div class="movie-totalExplain">
            <div class="movie-explain">
                <span>제목</span>
                <span><input class="btn btn-danger" type="submit" value="예매하기"></span>
                <span>감독<br></span>
                <span>배우<br></span>
                <span>장르<br></span>
                <span>기본<br></span>
                <span>개봉일<br></span>
            </div>
            <!--좋아요, 관람객수, 평점  -->
            <div class="movie-etc">
            <input class="btn btn-success" type="submit" value="좋아요">
            <span>500명</span>
            <span>누적관람객 수 : 15000000명</span>
            <span>관람객 평점</span>
                <div class="starRev">
                  <span class="starR on">별1</span>
                  <span class="starR on">별2</span>
                  <span class="starR on">별3</span>
                  <span class="starR">별4</span>
                  <span class="starR">별5</span>
                </div>
            </div>
        </div>
    </div>
    <br>
    <hr>
    <br>
    <div class="movie-summary">
    <h2>줄거리</h2>
    <div class="movie-summaryText">
        <span>
        <p>
            8명의 영화감독이 연출을 맡은 시네마틱 드라마 프로젝트 ‘SF8’이 공개됐다. 이 중 노덕 감독이 연출을 맡은 ‘만신’은 빅데이터와 딥러닝을 기반으로 한 인공지능 운세 프로그램 만신이 높은 적중률로 사람들의 일상을 미리 알려주는 이야기를 그렸다.
        </p>
        <p>인공지능 운세 프로그램 만신의 예언에 대부분의 사람들이 의존하고 있는 세상. 만신을 믿지 않는 몇 안 되는 사람인 선호(이연희)는 만신을 신봉했지만, 갑작스레 죽음을 맞이했던 동생의 운세를 알아내기 위해 오늘도 만신의 개발자를 찾아다닌다.</p>
        <p>가람은 그런 선호와 정 반대의 인물이다. 세상을 비관하며 삶을 마감하려 했던 그는 만신을 통해 기적적으로 살아남아 만신을 믿게 된다. 만신에 의존하다 못해 광신도가 된 가람은 북극성을 따라가라는 만신의 운세를 믿고 별 문양 옷을 입은 선호를 따라나선다.</p>
        </span>
    </div>
    <div id="banner" class="change-poster">
    	<a href="#" id="banner-link" target="_blank">
    		<img src="<%=request.getContextPath()%>/img/you.jpeg" id="banner-img" width="800" height="400"/>
    	</a>
    </div>
    </div>
    <hr>
    <div class="staticPicture">
    <table>
        <tr>
            <th>연령대별 관람객</th>
            <th>성별 관람객</th>
        </tr>
        <tr>
            <td><span>
                <img src="<%=request.getContextPath()%>/img/일별박스오피스관객수.png" alt="일별 박스오피스 순위">
            </span>
            </td>
            <td><span>
                <img src="<%=request.getContextPath()%>/img/주간주말박스오피스관객수.png" alt="주간주말박스오피스관객수">
            </span>
            </td>
        </tr>
    </table>
    </div>
    <!-- 한줄평 작성하기 -->
    <div class="movie-advice">
            <h3>한줄평</h3>
            <form>
            <textarea class="form-control col-sm-5" rows="5">
            </textarea>
            <button type="submit" class="btn btn-dark" style="float:right">등록</button>
            <div class="starRev">
                  <span class="starR on">별1</span>
                  <span class="starR on">별2</span>
                  <span class="starR on">별3</span>
                  <span class="starR">별4</span>
                  <span class="starR">별5</span>
            </div>
            </form>
    </div>
    <hr>
    <form class="oneLine" action="">
    <div class="movie-comment">
        <ul class="people-comment">
            <li>
            <label for="text">python</label>
            <div class="pulldate">
            <script type="text/Javascript" src="../js_sws/pulldate.js"></script>
    		</div>
            	<input type="text" name="text" id="text1" class="form-control" value="한줄평입력"/>
            	<%--<button type="submit" class="btn btn-dark" style="float:right">등록하기</button>--%>
            	<div class="starRev">
                  <span class="starR on">별1</span>
                  <span class="starR on">별2</span>
                  <span class="starR on">별3</span>
                  <span class="starR on">별4</span>
                  <span class="starR on">별5</span>
            </div>
            </li>
            <li>
            <label for="text">java</label>
            <div class="pulldate">
            <script type="text/Javascript" src="../js_sws/pulldate.js"></script>
    		</div>
            	<input type="text" name="text" id="text2" class="form-control" value="한줄평입력"/>
            	<%-- <button type="submit" class="btn btn-dark" style="float:right">등록하기</button>--%>
            	<div class="starRev">
                  <span class="starR on">별1</span>
                  <span class="starR on">별2</span>
                  <span class="starR on">별3</span>
                  <span class="starR on">별4</span>
                  <span class="starR">별5</span>
            </div>
            </li>
            <li>
                <label for="text">mysql</label>
                <div class="pulldate">
            <script type="text/Javascript" src="../js_sws/pulldate.js"></script>
            	<button type="button" class="modify-text" style="width:25px; height:20px;">수정</button>
    			<button type="button" class="delete-text" style="width:25px; height:20px;">삭제</button>
    		</div>
    			
            	<input type="text" name="text" id="text3" class="form-control" value="한줄평입력"/>
            	<button type="submit" class="btn btn-dark" style="float:right">수정완료</button>
            	<div class="starRev">
                  <span class="starR on">별1</span>
                  <span class="starR on">별2</span>
                  <span class="starR on">별3</span>
                  <span class="starR">별4</span>
                  <span class="starR">별5</span>
            </div>
            </li>
            <li>
                <label for="text">html</label>
                <div class="pulldate">
            <script type="text/Javascript" src="../js_sws/pulldate.js"></script>
    		</div>
            	<input type="text" name="text" id="text4" class="form-control" value="한줄평입력"/>
            	<%--<button type="submit" class="btn btn-dark" style="float:right">등록하기</button>--%>
            	<div class="starRev">
                  <span class="starR on">별1</span>
                  <span class="starR on">별2</span>
                  <span class="starR">별3</span>
                  <span class="starR">별4</span>
                  <span class="starR">별5</span>
            </div>
            </li>
            <li>
                <label for="text">css</label>
                <div class="pulldate">
            <script type="text/Javascript" src="../js_sws/pulldate.js"></script>
    		</div>
            	<input type="text" name="text" id="text5" class="form-control" value="한줄평입력"/>
            	<%--<button type="submit" class="btn btn-dark" style="float:right">등록하기</button>--%>
            	<div class="starRev">
                  <span class="starR on">별1</span>
                  <span class="starR on">별2</span>
                  <span class="starR on">별3</span>
                  <span class="starR">별4</span>
                  <span class="starR">별5</span>
            </div>
            </li>
            <li>
                <label for="text">javascript</label>
                <div class="pulldate">
            <script type="text/Javascript" src="../js_sws/pulldate.js"></script>
    		</div>
            	<input type="text" name="text" id="text6" class="form-control" value="한줄평입력"/>
            	<%--<button type="submit" class="btn btn-dark" style="float:right">등록하기</button>--%>
            	<div class="starRev">
                  <span class="starR on">별1</span>
                  <span class="starR on">별2</span>
                  <span class="starR on">별3</span>
                  <span class="starR on">별4</span>
                  <span class="starR">별5</span>
            </div>
            </li>
            <li>
                <label for="text">jQuery</label>
                <div class="pulldate">
            <script type="text/Javascript" src="../js_sws/pulldate.js"></script>
    		</div>
            	<input type="text" name="text" id="text7" class="form-control" value="한줄평입력"/>
            	<%-- <button type="submit" class="btn btn-dark" style="float:right">등록하기</button>--%>
            	<div class="starRev">
                  <span class="starR on">별1</span>
                  <span class="starR on">별2</span>
                  <span class="starR on">별3</span>
                  <span class="starR on">별4</span>
                  <span class="starR on">별5</span>
            </div>
            </li>
            <!-- 한줄평 작성하기 끝 -->
        </ul>
    </div>
    	<div class="pageUpbutton">
        	<button type="submit" class="btn btn-dark" style="float:right">맨위로</button>
        </div>
    </form>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
    	var banner = [
    		{img:'../img/you.jpeg',url:'http://search.naver.com/search.naver?sm=top_hty&fbm=0&ie=utf8&query=%EA%B9%80%EC%9C%A0%EC%A0%95'},
    		{img:'../img/you2.jpg',url:'http://search.naver.com/search.naver?sm=top_hty&fbm=0&ie=utf8&query=%EA%B9%80%EC%9C%A0%EC%A0%95'},
    		{img:'../img/you3.jpg',url:'http://search.naver.com/search.naver?sm=top_hty&fbm=0&ie=utf8&query=%EA%B9%80%EC%9C%A0%EC%A0%95'},
    		{img:'../img/you4.jpg',url:'http://search.naver.com/search.naver?sm=top_hty&fbm=0&ie=utf8&query=%EA%B9%80%EC%9C%A0%EC%A0%95'}
    	];
    	
    	function random(n,m){
    		return parseInt(Math.random()*(m-n+1))+n;
    	}
    	
    	function random_banner(){
    		var rand = random(0,banner.length-1);
    		var item=banner[rand];
    		$("#banner-link").attr("href",item.url);
    		$("#banner-img").attr("src",item.img);
    	}
    	
    	$(function(){
    		random_banner();
    		setInterval(function(){
    			random_banner();
    		},2000);
    	});
    </script>
    <!-- 내용 부분 끝 -->
<!--// ========== 컨텐츠 영역 끝 ========== -->
<%@ include file="../_inc/footer.jsp"%>