<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <!DOCTYPE html>
   <html>
<meta charset="UTF-8">
<head>
  <title>주말 장터 헤더</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-success navbar-dark fixed-top"> <!-- fixed-top -->
  <!-- Brand -->
  <a class="navbar-brand" href="main" style="height:120%; padding-left:2%; padding-right:5%">
   <img src="${pageContext.request.contextPath}/resources/image/logo2.png" alt="Logo">
   </a>

  
  <ul class="navbar-nav navbar-expand-sm justify-content-center" style="width:40%">
    
    <!-- Dropdown -->
    <li class="nav-item dropdown active" style="padding-left:3%">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        내 농장 
      </a>
      <div class="dropdown-menu">
         <a class="dropdown-item" href="createmy">농장생성</a>
        <a class="dropdown-item" href="cal?name=">캘린더</a>
        <a class="dropdown-item" href="acc?name=">가계부</a>
        <a class="dropdown-item" href="nong?name=">멤버게시판</a>
      </div>
    </li>
    
    <!-- Dropdown -->
    <li class="nav-item dropdown active" style="padding-left:3%;">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        농장 모듬 
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#">수다 농장</a>
        <a class="dropdown-item" href="#">궁금해요</a>
        <a class="dropdown-item" href="#">도움 구해요</a>
        <a class="dropdown-item" href="#">출석 도장</a>
      </div>
    </li>
    
    <!-- Dropdown -->
    <li class="nav-item dropdown active" style="padding-left:3%">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        주말 장터
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="${pageContext.request.contextPath}/jik/list">직거래 장터</a>
      </div>
    </li>
    
    <!-- Dropdown -->
    <li class="nav-item dropdown active" style="padding-left:3%">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        굿즈 장터
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="shopmain">굿즈 장터</a>
        <a class="dropdown-item" href="personacon">퍼스나콘</a>
        <a class="dropdown-item" href="goods">주말 굿즈</a>
        <a class="dropdown-item" href="tools">농기구</a>
      </div>
    </li>
    
    <!-- Dropdown -->
    <li class="nav-item dropdown active" style="padding-left:3%">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        고객 센터 
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#">고객 센터</a>
        <a class="dropdown-item" href="#">FAQ</a>
        <a class="dropdown-item" href="#">공지사항</a>
      </div>
    </li>
    
    </ul>
    
    <ul class="navbar-nav navbar-expand-sm" style="width:40%;">
    <!-- Links -->
    <li class="nav-item active" style="padding-left:30%"  ><!-- style="padding-left:5%" -->
      <a class="nav-link" href="cart">장바구니</a>
    </li>
    <li class="nav-item active" style="padding-left:4%">
      <a class="nav-link" href="login">로그인</a>
    </li>
	<li class="nav-item active" style="padding-left:4%">
      <a class="nav-link" href="join">회원가입</a>
    </li>

   
  </ul>
</nav>
<br>
  
  
</body>
</html>