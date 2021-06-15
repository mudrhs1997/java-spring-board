<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<link rel="stylesheet" href="CSS/board.css" type="text/css">
<meta charset="UTF-8">
<title>메인 페이지 </title>
<style>
.main{
		display: flex;
		border:1px solid white;
		height: 1000px;
		padding: 100px;
		justify-content: center;
}
.main ul{
	diplay:left;
	border:1px solid white;
	height: 50%;
}
#notice{
 font-size: 30px;
 font-weight: bold;
}
ul{
	padding : 0px;
}
ul li{
	margin : 20px;
	list-style:none;
}
</style>
</head>

<body>
	<div class="head">
		<header>
			<img src="images/logo.jpg" alt="logo">
			<div class="login">
				<a href="index.jsp"> 로그아웃 </a>
				<a href="mypage.do"> 마이페이지 </a>
			</div>
		</header>
		<nav>
			<a href="board.do">학과별 게시판</a>
			<a href="">중고거래</a>
		</nav>
	</div>
		<div class="main">
		<main>
			<ul><p id="notice">학교 공지</p>
				<li>프로젝트 과제 6/15일까지 제출!</li>
				<li>용인대학교 학생 전원 A+</li>
			</ul>
			<ul><p id="notice">학사 일정</p>
				<li>6/17일 종강</li>
				<li>9/1일 개강</li>
			</ul>
		</main>
	</div>
	<div class="footer"">
		<p><b style="color:white;">17092 | 경기도 용인시 처인구 용인대학로 134 용인대학교 | TEL : 031-8020-3114 | FAX : 031-332-6479</b></p>
	</div>
	
</body>
</html>