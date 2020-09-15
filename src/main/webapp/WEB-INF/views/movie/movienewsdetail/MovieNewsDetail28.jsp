<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../../_inc/header.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/MovieNewsDetail.css?time=<%=System.currentTimeMillis()%>">
<title>영화소식상세정보 | Cinephile</title>
<!-- ========== 컨텐츠 영역 시작 ========== -->
<div class="movieNews">
<!--영화 제목-->
	<div class="mainNewsTitle clearfix">
		<h3 class="floatLeft">생일 축하합니다 | 엄정화·유승호·조보아</h3>
	</div>
	<!--영화 본문-->
	<div class="mainNews" style="font-size: 20px; line-height: 28px">
		<p>1년에 단 하루뿐인 생일은 누구에게나 가슴 설레는 특별한 날이다. 주변인들의 진심 어린
			축하가 오갈 때면 뭉클한 감동이 느껴지기도 한다. 누구보다 많은 사랑을 받으며 행복한 하루를 보낼 이번 주 생일을 맞은
			배우들을 살펴봤다.</p>
		<figure class="image-captioned six"
			style="display: block; margin: 0 auto; height: auto; width: 600px;">
			<img alt="배우 엄정화. 사진 메가박스(주)플러스엠" id="contentsImage1"
				src="https://d3ihz389yobwks.cloudfront.net/1597433036880903961473951000.jpg"
				style="display: block; margin: 0 auto;" width="100%" />
			<figcaption>배우 엄정화. 사진 메가박스(주)플러스엠</figcaption>
		</figure>
		<p>#엄정화 8월 17일</p>
		<p>한국의 마돈나 엄정화가 이번 주 생일을 맞았다. 브라운관과 스크린을 넘나들며 넘치는 매력으로 대중을 사로잡았던
			그는 충무로를 대표하는 연기파 배우이자, 가요계의 여왕이다. 엄정화는 1992년 영화 ‘결혼 이야기’로 은막에 데뷔한 이후,
			차기작 ‘바람부는 날이면 압구정동에 가야한다’(1993)로 얼굴을 알렸다. 이후 ‘결혼은 미친 짓이다’(2001),
			‘해운대’(2009), ‘댄싱퀸’(2012) 등 다양한 작품에 출연했으며, 최근 영화 ‘오케이 마담’으로 5년 만에 스크린
			복귀 소식을 전했다.</p>
		<figure class="image-captioned"
			style="display: block; margin: 0 auto; height: auto; width: 100%;">
			<img alt="배우 유승호. 사진 스토리제이컴퍼니" id="contentsImage2"
				src="https://d3ihz389yobwks.cloudfront.net/1597433036943903961537290600.jpg"
				style="display: block; margin: 0 auto;" width="100%" />
			<figcaption>배우 유승호. 사진 스토리제이컴퍼니</figcaption>
		</figure>
		<p>#유승호 8월 17일</p>
		<p>1993년생으로 유승호는 올해 28번째 생일을 맞았다. 2000년 MBC 드라마 ‘가시고기’로 연기 생활을 시작한
			그는 영화 ‘집으로…’(2002)를 통해 어린 나이에도 탁월한 연기력을 선보여 호평을 받았다. 이후 드라마 ‘불멸의
			이순신’(2004), ‘왕과 나’(2007), ‘태왕사신기(2007), ‘선덕여왕’(2009), ‘공부의 신’(2010),
			‘무사 백동수’(2011), 영화 ‘마음이’(2006) 등 다양한 작품에 출연했으며, 올해 드라마 ‘메모리스트’에 출연하기도
			했다.</p>
		<figure class="image-captioned six"
			style="display: block; margin: 0 auto; height: auto; width: 600px;">
			<img alt="배우 조보아. 사진 싸이더스HQ" id="contentsImage3"
				src="https://d3ihz389yobwks.cloudfront.net/1597433037021903961614867500.jpg"
				style="display: block; margin: 0 auto;" width="100%" />
			<figcaption>배우 조보아. 사진 싸이더스HQ</figcaption>
		</figure>
		<p>#조보아 8월 22일</p>
		<p>1991년 8월 22일생인 배우 조보아도 이번 주 생일을 맞았다. 2012년 tvN 드라마 ‘닥치고 꽃미남맨드’로
			데뷔한 그는 드라마 ‘마의’(2012), ‘몬스터’(2016), ‘사랑의 온도’(2017), ‘이별이 떠났다’(2018),
			‘포레스트’(2020) 등에 출연하며 얼굴을 알렸다. 영화 ‘가시’(2014)에 출연해 장혁과 호흡을 맞춘 바 있으며, 예능
			프로그램 ‘백종원의 골목식당’에 출연해 인지도를 높였다. 최근 10월 방영 예정인 tvN 드라마 ‘구미호뎐’을 준비 중이다.</p>
		<p></p>
	</div>
<span class="buttonMoving">
<button type="button" class="btn btn-warning" onclick="location.href='${pageContext.request.contextPath}/movie/MovieNews4.do'">목록으로</button>
<button type="button" class="btn btn-danger" onclick="location.href='#'">맨위로</button>
</span>
</div>

<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>

<!--// ========== 컨텐츠 영역 끝 ========== -->

<%@ include file="../../_inc/footer.jsp"%>
