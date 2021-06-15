<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="CSS/board.css" type="text/css">
<meta charset="UTF-8">
<title> 로그인페이지 </title>
<style>
	.signin{
		display: flex;
		border:1px solid white;
		height: 500px;
		padding: 100px;
		justify-content: center;
	}
	#login{
		font-size : 20px;
		text-align: center;
	}
	#signup fieldset {
	border: 1px solid white;
	margin-bottom: 30px;
	}
			
	#signup legend {
		font-size: 30px;
		font-weight: bold;
		padding-left:5px;
		padding-bottom: 10px;
		text-align: center;	
	}
	#signup ul li {
		line-height: 30px;
		list-style: none;
		padding: 5px 10px;
		margin-bottom: 2px;
	}
	#signup label {
	float: left;  
	font-size: 13px;  
	width: 110px; 
	}
	#button{
		float:right;
	}
	.register{
		display: flex;
		font-size: 12px;
		justify-content: space-around;
	}
	.register a{
		text-decoration:none;
		color:black;
	}
</style>
</head>

<body>
	<div class="head">
		<header>
			<img src="images/logo.jpg" alt="logo">
			<div class="login">
				<a href="login.jsp"> 로그인 </a>
				<a href="join.jsp"> 회원가입 </a>
			</div>
		</header>
		<nav>
			<a href="javascript:alert('로그인 후 이용 가능합니다. ');">학과별 게시판</a>
			<a href="javascript:alert('로그인 후 이용 가능합니다. ');">중고거래</a>
		</nav>
	</div>
		<main>
			<div class="signin">
			<form id="signup" action="login.do" method="post">
			      <legend>로그인</legend>
				      <ul style="padding:0px;">
				        <li>
				          <label for="userid">학번 </label>
				          <input id="userid" name="id" type="text" required autofocus>
				        </li>
				        <li>
				          <label for="pwd1">비밀번호</label>
				          <input id="pwd1" name="pwd" type="password"  required>
				        </li>
				        <li>
				        	<input type="submit" value="로그인" id="button"><br>
				        </li>
				        <li class="register">
				        	<a href=""><b>비밀번호 찾기</b></a>
				        	<a href="join.jsp"><b>회원가입</b></a>
				        </li>
				      </ul>
	     		 </form>
	     		 </div>
		</main>
		<footer><p>footer</p></footer>
		
		
	
</body>
</html>