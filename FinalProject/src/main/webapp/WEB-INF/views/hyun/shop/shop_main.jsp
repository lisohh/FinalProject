<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주말 장터 메인</title>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.js"></script>

<style>
h5 {
	padding-top: 10px;
	font-weight:bold;
}

.container .nav {
	margin-top: 80px;
	font-size: 20px;
}

.recommendation {
	margin-top: 1%;
	margin-left: 14%;
}

.section1 {
	text-align: center;
}

.section1> span {
	font-size: 30px;
	font-weight: bold;
	margin-right:48%;
}

.section1 .button {
	font-size: 20px;
	font-weight: medium;
	color: gray;
}

.recommendation .products {
	margin-top: 2%;
	margin-bottom: 2%;
	margin-right: 15%;
}

.recommendation .products card-deck .card {
	width: 300px;
	height: 250px;
}

.recommendation .products>card-img-top {
	height: 200px;
}

/* 슬라이드 배너 */
* {margin:0;padding:0;box-sizing:border-box;}
ul, li {list-style:none;} */

[name="slide"] {display:none; }
.slidebox {max-width:1000px;width:100%;margin:0 auto;text-align:center; }
.slidebox img {max-width:100%; height:300px;}/*width:1000px에 height:300px;짜리 이미지를 넣어야 맞음 */
.slidebox .slidelist {
	white-space:nowrap;
	font-size:0;
	overflow:hidden;
	height:300px;
}
.slidebox .slideitem {
	position:relative;
	display:inline-block;
	vertical-align:middle;
	width:100%;
	transition:all .35s;
}
.slidebox .slideitem label {
	position:absolute;
	z-index:1;
	top:50%;
	transform:translateY(-50%);
	padding:20px;
	border-radius:50%;
	cursor:pointer;
}
label.left {
	left:20px;
	/* background-color:#FFFFFF; */
	background-image:url('${pageContext.request.contextPath}/resources/image/banner/left-arrow.png');
	background-position:center center;
	background-size:50%;
	background-repeat:no-repeat;
}
label.right {
	right:20px;
	/* background-color:#FFFFFF; */
	background-image:url('${pageContext.request.contextPath}/resources/image/banner/right-arrow.png');
	background-position:center center;
	background-size:50%;
	background-repeat:no-repeat;
}

/* 페이징 스타일 */
.paginglist {text-align:center;padding:30px 0;}
.paginglist > li {display:inline-block;vertical-align:middle;margin:0 10px;}
.paginglist > li > label {display:block;padding:10px 30px;border-radius:10px;background:#ccc;cursor:pointer;}
.paginglist > li:hover > label {background:#333;}

[id="slide01"]:checked ~ .slidelist .slideitem {transform:translateX(0);animation:slide01 20s infinite;}
[id="slide02"]:checked ~ .slidelist .slideitem {transform:translateX(-100%);animation:slide02 20s infinite;}
[id="slide03"]:checked ~ .slidelist .slideitem {transform:translateX(-200%);animation:slide03 20s infinite;}
[id="slide04"]:checked ~ .slidelist .slideitem {transform:translateX(-300%);animation:slide04 20s infinite;}

@keyframes slide01 {
	0% {left:0%;}
	23% {left:0%;}
	25% {left:-100%;}
	48% {left:-100%;}
	50% {left:-200%;}
	73% {left:-200%;}
	75% {left:-300%;}
	98% {left:-300%;}
	100% {left:0%;}
}
@keyframes slide02 {
	0% {left:0%;}
	23% {left:0%;}
	25% {left:-100%;}
	48% {left:-100%;}
	50% {left:-200%;}
	73% {left:-200%;}
	75% {left:100%;}
	98% {left:100%;}
	100% {left:0%;}
}
@keyframes slide03 {
	0% {left:0%;}
	23% {left:0%;}
	25% {left:-100%;}
	48% {left:-100%;}
	50% {left:200%;}
	73% {left:200%;}
	75% {left:100%;}
	98% {left:100%;}
	100% {left:0%;}
}
@keyframes slide04 {
	0% {left:0%;}
	23% {left:0%;}
	25% {left:300%;}
	48% {left:300%;}
	50% {left:200%;}
	73% {left:200%;}
	75% {left:100%;}
	98% {left:100%;}
	100% {left:0%;}
}

</style>
</head>
<body>
	<jsp:include page="shop_header.jsp" />

    <br><br><br>    	
    <div class="slidebox">
	<input type="radio" name="slide" id="slide01" checked>
	<input type="radio" name="slide" id="slide02">
	<input type="radio" name="slide" id="slide03">
	<input type="radio" name="slide" id="slide04">
	<ul class="slidelist">
		<li class="slideitem">
			<div>
				<label for="slide04" class="left"></label>
				<label for="slide02" class="right"></label>
				<a><img src="${pageContext.request.contextPath}/resources/image/banner/slideimg01.jpg"></a>
			</div>
		</li>
		<li class="slideitem">
			<div>
				<label for="slide01" class="left"></label>
				<label for="slide03" class="right"></label>
				<a><img src="${pageContext.request.contextPath}/resources/image/banner/slideimg02.jpg"></a>
			</div>
		</li>
		<li class="slideitem">
			<div>
				<label for="slide02" class="left"></label>
				<label for="slide04" class="right"></label>
				<a><img src="${pageContext.request.contextPath}/resources/image/banner/slideimg03.jpg"></a>
			</div>
		</li>
		<li class="slideitem">
			<div>
				<label for="slide03" class="left"></label>
				<label for="slide01" class="right"></label>
				<a><img src="${pageContext.request.contextPath}/resources/image/banner/slideimg04.jpg"></a>
			</div>
		</li>
	</ul>
	</div>
	
	
	<!-- 굿즈 장터 내 네비게이션 바 -->
	<div class="container">
		<ul class="nav nav-tabs nav-justified">
			<li class="nav-item"><a class="nav-link active" href="home">장터홈</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="seed">씨앗/모종</a></li>
			<li class="nav-item"><a class="nav-link" href="soil">비료/상토</a></li>
			<li class="nav-item"><a class="nav-link" href="pesticide">살충제</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="tools">농기구</a></li>
			<li class="nav-item"><a class="nav-link" href="personacon">퍼스나콘</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="goods">굿즈</a></li>
		</ul>
	</div>

	<!-- 제품 카드 목록 리스트 -->
	<br>
	<br>
	
		<div class="section1">
			<span>주말농장에서 추천하는 제품!</span> <a href="#" class="button">더보기</a>
		</div>
		
		<div class="recommendation">
		<div class="products card-deck">
			<div class="card">
				<img class="card-img-top"
					src="${pageContext.request.contextPath}/resources/image/homi.jpg"
					alt="Card image" style="width: 100%">
				<div class="card-body">
					<h5 class="card-title">튼튼 호미(중)</h5>
					<p class="card-text">얕은 땅을 팔 때 유용한 튼튼호미입니다. 가볍고 오래 사용해도 녹슬지
						않습니다.</p>
					<a href="shop_detail.jsp" class="btn btn-info">제품 보기</a>
				</div>
			</div>

			<div class="card">
				<img class="card-img-top"
					src="${pageContext.request.contextPath}/resources/image/homi.jpg"
					alt="Card image" style="width: 100%">
				<div class="card-body">
					<h5 class="card-title">엉덩이 방석 1개</h5>
					<p class="card-text">내 엉덩이를 보호해주는 작은 동그라미 친구! 타사보다 더 크고 탄탄한 주말
						장터의 엉덩이 방석에 앉아보세요.</p>
					<a href="#" class="btn btn-info">제품 보기</a>
				</div>
			</div>

			<div class="card">
				<img class="card-img-top"
					src="${pageContext.request.contextPath}/resources/image/homi.jpg"
					alt="Card image" style="width: 100%">
				<div class="card-body">
					<h5 class="card-title">주말 장터 장바구니(대)</h5>
					<p class="card-text">수확한 농작물을 담아보세요. 리뉴얼로 사이즈는 더 커지고 소재는 더
						강해졌어요.</p>
					<a href="#" class="btn btn-info">제품 보기</a>
				</div>
			</div>

			<div class="card">
				<img class="card-img-top"
					src="${pageContext.request.contextPath}/resources/image/homi.jpg"
					alt="Card image" style="width: 100%">
				<div class="card-body">
					<h5 class="card-title">팍팍 곡괭이(소)</h5>
					<p class="card-text">자갈 제거에 제격인 곡괭이입니다. 가볍고 오래 사용해도 녹슬지 않습니다.</p>
					<a href="#" class="btn btn-info">제품 보기</a>
				</div>
			</div>
		</div>


		<div class="products card-deck">
			<div class="card">
				<img class="card-img-top"
					src="${pageContext.request.contextPath}/resources/image/homi.jpg"
					alt="Card image" style="width: 100%">
				<div class="card-body">
					<h5 class="card-title">튼튼 호미(중)</h5>
					<p class="card-text">얕은 땅을 팔 때 유용한 튼튼호미입니다. 가볍고 오래 사용해도 녹슬지
						않습니다.</p>
					<a href="#" class="btn btn-info">제품 보기</a>
				</div>
			</div>

			<div class="card">
				<img class="card-img-top"
					src="${pageContext.request.contextPath}/resources/image/homi.jpg"
					alt="Card image" style="width: 100%">
				<div class="card-body">
					<h5 class="card-title">엉덩이 방석 1개</h5>
					<p class="card-text">내 엉덩이를 보호해주는 작은 동그라미 친구! 타사보다 더 크고 탄탄한 주말
						장터의 엉덩이 방석에 앉아보세요.</p>
					<a href="#" class="btn btn-info">제품 보기</a>
				</div>
			</div>

			<div class="card">
				<img class="card-img-top"
					src="${pageContext.request.contextPath}/resources/image/homi.jpg"
					alt="Card image" style="width: 100%">
				<div class="card-body">
					<h5 class="card-title">주말 장터 장바구니(대)</h5>
					<p class="card-text">수확한 농작물을 담아보세요. 리뉴얼로 사이즈는 더 커지고 소재는 더
						강해졌어요.</p>
					<a href="#" class="btn btn-info">제품 보기</a>
				</div>
			</div>

			<div class="card" style="width: 300px;">
				<img class="card-img-top"
					src="${pageContext.request.contextPath}/resources/image/homi.jpg"
					alt="Card image" style="width: 100%">
				<div class="card-body">
					<h5 class="card-title">팍팍 곡괭이(소)</h5>
					<p class="card-text">자갈 제거에 제격인 곡괭이입니다. 가볍고 오래 사용해도 녹슬지 않습니다.</p>
					<a href="#" class="btn btn-info">제품 보기</a>
				</div>
			</div>
		</div>
		<br>

	</div>

	<!--  페이지네이션 -->
	<ul class="pagination justify-content-center" style="margin:20px 0">
	  <li class="page-item"><a class="page-link" href="#">이전</a></li>
	  <li class="page-item"><a class="page-link" href="#">1</a></li>
	  <li class="page-item"><a class="page-link" href="#">2</a></li>
	  <li class="page-item"><a class="page-link" href="#">3</a></li>
	  <li class="page-item"><a class="page-link" href="#">4</a></li>
	  <li class="page-item"><a class="page-link" href="#">5</a></li>
	  <li class="page-item"><a class="page-link" href="#">다음</a></li>
	</ul>

	<jsp:include page="../../main/footer.jsp" />
</body>
</html>